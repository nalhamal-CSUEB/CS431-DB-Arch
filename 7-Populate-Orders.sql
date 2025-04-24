INSERT INTO `inventorydb`.`orders`
(`Invoice_Num`,
`PO_Number`,
`Order_Date`,
`Order_Number`,
`Receive_Date`,
`Status`)
VALUES
('INV0004', '1', '2024-06-10', 'ORD0004', '2024-07-10', 'Paid' ),
('INV0005', '1', '2024-06-10', 'ORD0004', '2024-07-15', 'Paid' ),
('INV0006', '1', '2024-06-10', 'ORD0004', '2024-07-16', 'Paid' ),
('INV0020', '3', '2024-08-10', 'ORD0020', '2024-09-10', 'Unpaid' ),
('INV0007', '4', '2024-06-10', 'ORD0005', '2024-06-12', 'Paid' ),
('INV0008', '5', '2024-06-10', 'ORD0006', '2024-07-10', 'Paid' ),
('INV0009', '6', '2024-06-10', 'ORD0007', '2024-07-10', 'Paid' ),
('INV0010', '7', '2024-06-10', 'ORD0008', NULL, 'Ordered' );

SELECT `orders`.`Invoice_Num`,
    `orders`.`PO_Number`,
    `orders`.`Order_Date`,
    `orders`.`Order_Number`,
    `orders`.`Receive_Date`,
    `orders`.`Status`
FROM `inventorydb`.`orders`;


SELECT * FROM inventorydb.purchase_order
Inner Join inventorydb.requisition 
On purchase_order.Req_ID = requisition.Req_ID;

