const express = require('express');
const mysql = require('mysql2');
const path = require('path');
const app = express();
const port = 3000;

app.use(express.static('public')); //Pages stored in public folder
app.use(express.json()); // for parsing application/json

const db = mysql.createPool({	//I had issues with mysql.createServer(). A web search suggested using createPool instead.
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'inventorydb'
});

// Table to primary key mapping. This helped with moving between pages as the table names were mapped to the PK.
const tablePrimaryKeys = {
  user: 'WNumber',
  department: 'Dept_ID',
  vendor: 'Vendor_ID',
  quote: 'req_id',
  requisition: 'Req_ID',
  purchase_order: 'PO_Number',
  orders: 'Invoice_Number',
  equipment: 'Equipment_ID',
  warranty: 'Equipment_ID',
  maintenance_log: 'Log_Num'
};

// SELECT with optional ordering
app.get('/api/:table', (req, res) => {	//app.get() method routes to the table name. Without API, this doesn't without changing file names to match table names. https://expressjs.com/en/api.html#app.get
  const { table } = req.params;			//req.params in this case holds the table name from the url data. /api 
  const { order_by, order_dir } = req.query;	//req.query gets the query from the page into order_by and order_dir variables.
  const orderClause = order_by ? `ORDER BY ?? ${order_dir?.toUpperCase() === 'DESC' ? 'DESC' : 'ASC'}` : '';
  const sql = `SELECT * FROM ?? ${orderClause}`;
  const params = order_by ? [table, order_by] : [table];

  db.query(sql, params, (err, results) => {
    if (err) return res.status(500).send('Query error');
    res.json(results);
  });
});

// UPDATE dynamic
app.put('/api/:table/:keyValue', (req, res) => {	//This now adds a keyValue to identify the row being changed.
  const table = req.params.table;
  const keyValue = req.params.keyValue;
  const data = req.body;

  const primaryKey = tablePrimaryKeys[table];
  if (!primaryKey) return res.status(400).send('Unknown primary key');

  const columns = Object.keys(data).filter(k => k !== primaryKey);
  const values = columns.map(k => data[k]);

  const sql = `UPDATE ?? SET ${columns.map(col => `?? = ?`).join(', ')} WHERE ?? = ?`;
  const params = [table, ...columns.flatMap(col => [col, data[col]]), primaryKey, keyValue];

  db.query(sql, params, (err, result) => {
    if (err) return res.status(500).send('Update failed');
    res.send({ success: true });
  });
});

// Insert Dynamic
app.post('/api/:table', (req, res) => {
  const {table} = req.params;	
  const data = req.body;
  
  const fields = Object.keys(data);
  const values = Object.values(data);
  const placeholders = fields.map(() => '?').join(', ');
  
  const sql = `INSERT INTO ?? (${fields.map(() => '??').join(', ')}) VALUES (${placeholders})`;
  const params = [table, ...fields, ...values];
  
  db.query(sql, params, (err, result) => {
    if (err) return res.status(500).send('Insert failed');
    res.send({ success: true });
  });
});


app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
