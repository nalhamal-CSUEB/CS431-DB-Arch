INSERT INTO User
	(WNumber, Fname, Lname, Minit, EMail, Privilege, Dept_ID)
VALUES
	('000000000','Nabil', 'Alhamal', '', 'nalhamal@horizon.csueeastbay.edu', 'Admin', 6),
    ('000000001','Jerry', 'Fields', '', 'jfield@csueastbay.edu', 'User', 1),
    ('000000002','Stephanie', 'Singh', '', 'ssingh@horizon.csueeastbay.edu', 'User', 4),
    ('000000003','Terry', 'Pine', '', 'tpine@horizon.csueeastbay.edu', 'User', 4),
    ('000000004','Billy', 'Zane', '', 'bzane@horizon.csueeastbay.edu', 'User', 5),
    ('000000005','Sarah', 'Wing', '', 'swing@horizon.csueeastbay.edu', 'User', 7),
    ('000000006','Alonso', 'Morales', '', 'amorales@horizon.csueeastbay.edu', 'User', 8),
    ('000000007','Tom', 'Cain', '', 'tcain@horizon.csueeastbay.edu', 'Power User', 2),
    ('000000008','Fred', 'Flintstone', '', 'fflintstone@', 'User', 3);
    
SELECT `department`.`Dept_ID`,
    `department`.`Dept_Name`,
    `department`.`Location`
FROM `inventorydb`.`department`;

    
SELECT `user`.`WNumber`,
    `user`.`Fname`,
    `user`.`Lname`,
    `user`.`Minit`,
    `user`.`Email`,
    `user`.`Privilege`,
    `user`.`Dept_ID`
FROM `inventorydb`.`user`
Order by `user`.`Privilege`;
