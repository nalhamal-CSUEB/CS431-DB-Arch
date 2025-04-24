INSERT INTO `inventorydb`.`requisition`
(`Primary_Requestor`,
`Secondary_Requestor`,
`Vendor_ID`,
`Request_Date`,
`Approved_Date`)
VALUES
('000000000', '000000001', '1', '2024-05-10', '2024-06-10'),
('000000000', '000000001', '1', '2024-05-24', '2024-08-10'),
('000000008', '000000000', '2', '2024-5-10', '2024-6-10'),
('000000007', '000000001', '3', '2024-3-10', '2024-4-10'),
('000000006', '000000007', '4', '2024-3-10', '2024-5-10'),
('000000000', '000000001', '4', '2024-5-10', '2024-6-10'),
('000000000', '000000001', '5', '2024-5-10', '2024-6-10'),
('000000000', '000000001', '6', '2024-5-10', '2024-7-10'),
('000000000', '000000001', '8', '2024-5-10', '2024-6-10');

SELECT `requisition`.`Req_ID`,
    `requisition`.`Primary_Requestor`,
    `requisition`.`Secondary_Requestor`,
    `requisition`.`Vendor_ID`,
    `requisition`.`Request_Date`,
    `requisition`.`Approved_Date`
FROM `inventorydb`.`requisition`;


SELECT `user`.`WNumber`,
    `user`.`Fname`,
    `user`.`Lname`,
    `user`.`Minit`,
    `user`.`Email`,
    `user`.`Privilege`,
    `user`.`Dept_ID`
FROM `inventorydb`.`user`;

