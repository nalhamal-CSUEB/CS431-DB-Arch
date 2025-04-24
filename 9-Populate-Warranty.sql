INSERT INTO `inventorydb`.`warranty`
(`Equipment_ID`,
`PO_Number`,
`Exp_Date`)
VALUES
(1,4,'2026-01-01'),
(2,7,'2027-01-01'),
(1,8,'2026-01-01');

SELECT `purchase_order`.`PO_Number`,
    `purchase_order`.`Req_ID`,
    `purchase_order`.`Status`,
    `equipment`.`equipment_ID`,
    `equipment`.`eq_name`
FROM `inventorydb`.`purchase_order`
Inner Join inventorydb.equipment
On purchase_order.PO_Number = equipment.PO_Number;



