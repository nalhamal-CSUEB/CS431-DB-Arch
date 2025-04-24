INSERT INTO `inventorydb`.`vendor`
(`Website`,
`E-mail`,
`Address`,
`City`,
`State`,
`Zipcode`)
VALUES
('www.homedepot.com','Johhny@homedepot.com','3333 Third St','Someplace','AZ','00000'),
('www.grainger.com', 'Blaire@grainger.com','4444 Fourth St','Another Place', 'NM', '00001'),
('www.uline.com','Gerald@uline.com','5555 Fifth St','Someplace','AZ','00000'),
('www.newark.com', 'Belinda@newark.com','6666 Sixth St','Another Place', 'NM', '00001'),
('www.jameco.com','Jack@jameco.com','7777 Seventh St','Someplace','AZ','00000'),
('www.fastenal.com', 'Jenny@fastenal.com','8888 Eight St','Another Place', 'NM', '00001');

SELECT `vendor`.`Vendor_ID`,
    `vendor`.`Website`,
    `vendor`.`E-mail`,
    `vendor`.`Address`,
    `vendor`.`City`,
    `vendor`.`State`,
    `vendor`.`Zipcode`
FROM `inventorydb`.`vendor`;


