INSERT INTO `inventorydb`.`equipment`
(`PO_Number`,
`Eq_Name`,
`Description`,
`Quantity`)
VALUES
(1, 'Widget', 'Model 5000 Widget', 1),
(3, 'Wizbang', 'Wizbang 2200', 2),
(5, 'Cog', 'Ultra Cog 100', 2),
(6, 'Collet', '5in Dia. Collet', 5);

SELECT `equipment`.`Equipment_ID`,
    `equipment`.`PO_Number`,
    `equipment`.`Eq_Name`,
    `equipment`.`Description`,
    `equipment`.`Quantity`
FROM `inventorydb`.`equipment`;

