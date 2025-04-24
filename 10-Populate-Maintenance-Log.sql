INSERT INTO `inventorydb`.`maintenance_log`
(`WNumber`,
`Equipment_ID`,
`log_date`,
`Status`,
`Description`)
VALUES
('000000008', 1, NOW(), 'Inspection', 'Responded to request for inspection. Found a leak. Need to repair.');

SELECT `maintenance_log`.`Log_Num`,
    `user`.`Fname`,
    `equipment`.`Eq_name`,
    `maintenance_log`.`Log_Date`,
    `maintenance_log`.`Status`,
    `maintenance_log`.`Description`
FROM `inventorydb`.`maintenance_log`
Join `user` Join `equipment`
On maintenance_log.WNumber = `user`.WNumber and
maintenance_log.Equipment_ID = equipment.Equipment_ID;









SELECT `purchase_order`.`PO_Number`,
    `purchase_order`.`Req_ID`,
    `purchase_order`.`PO_Type`,
    `purchase_order`.`Fund_Type`,
    `purchase_order`.`Fiscal_Year`,
    `purchase_order`.`Total_Cost`,
    `purchase_order`.`Status`
FROM `inventorydb`.`purchase_order`;

SELECT `equipment`.`Equipment_ID`,
    `equipment`.`PO_Number`,
    `equipment`.`Eq_Name`,
    `equipment`.`Description`,
    `equipment`.`Quantity`
FROM `inventorydb`.`equipment`;

SELECT `user`.`WNumber`,
    `user`.`Fname`,
    `user`.`Privilege`,
    `user`.`Dept_ID`,
    `department`.`dept_name`
FROM `inventorydb`.`user`
Inner Join `inventorydb`.`department`
On `user`.`dept_id` = `department`.`dept_id`;

