INSERT INTO `inventorydb`.`purchase_order`
(`Req_ID`,
`PO_Type`,
`Fund_Type`,
`Fiscal_Year`,
`Total_Cost`,
`Status`)
VALUES
(10,'Closed', 'General', '2024', 0, 'Completed'),
(11,'Closed', 'General', '2024', 0, 'In-Progress'),
(12,'Closed', 'General', '2024', 0, 'Approved'),
(13,'Closed', 'General', '2024',0 , 'Completed'),
(14,'Open', 'General', '2024', 0, 'In-Progress'),
(15,'Closed', 'General', '2024', 0, 'Completed'),
(16,'Closed', 'General', '2024', 0, 'In-Progress'),
(17,'Closed', 'General', '2024', 0, 'In-Progress'),
(18,'Closed', 'General', '2024', 0, 'In-Progress');


SELECT * FROM inventorydb.purchase_order;

