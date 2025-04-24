INSERT INTO `inventorydb`.`quote`
(`Req_ID`,
`Vendor_ID`,
`Price`,
`Quantity`,
`Date`)
VALUES
(10, 1, 10, 20, '2024-06-10'),
(11, 1, 100, 4, '2024-08-10'),
(12, 3, 5, 200, '2024-06-10'),
(13, 5, 1000, 1, '2024-04-11'),
(14, 2, 100, 30, '2024-05-10'),
(15, 8, 250, 5, '2024-06-10'),
(16, 6, 175, 20, '2024-06-10'),
(17, 6, 120, 100, '2024-07-11'),
(18, 5, 10, 20, '2024-06-10');

SELECT * FROM inventorydb.quote;


SELECT * FROM inventorydb.requisition;