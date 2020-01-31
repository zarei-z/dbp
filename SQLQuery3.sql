/*insertingvalues into delivery*/

INSERT INTO delivery (staffnum, staff_fname, staff_lname)
VALUES (123, 'hassan', 'hoseini');

INSERT INTO delivery (staffnum, staff_fname, staff_lname)
VALUES (124, 'amir', 'amiri');

INSERT INTO delivery (staffnum, staff_fname, staff_lname)
VALUES (125, 'ahmad', 'ahmadi');

INSERT INTO delivery (staffnum, staff_fname, staff_lname)
VALUES (126, 'mohsen', 'mohseni');

INSERT INTO delivery (staffnum, staff_fname, staff_lname)
VALUES (127, 'fatemeh', 'abbasi');

INSERT INTO delivery (staffnum, staff_fname, staff_lname)
VALUES (128, 'mahmood', 'mahmoodi');

INSERT INTO delivery (staffnum, staff_fname, staff_lname)
VALUES (129, 'hoda', 'rostami');

INSERT INTO delivery (staffnum, staff_fname, staff_lname)
VALUES (130, 'hamed', 'hamedi');

/*inserting values into meal*/

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (200, 'late coffee', '9000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (201, 'moka coffee', '11000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (202, 'chocolate shake', '15000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (203, 'banana shake', '15000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (204, 'cream sweet', '10000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (205, 'donate', '5000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (206, 'kroasan', '9000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (207, 'chocolate cake', '15000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (208, 'pizza', '25000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (209, 'chicken', '30000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (210, 'fries', '9000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (211, 'stake', '40000');

INSERT INTO meal (mealid, mealname, mealprice)
VALUES (212, 'mushroom', '10000');

/*inserting values into users*/

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (300, 'homa', 'hasani' , '1356-12-12' , 134);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (301, 'homayoon', 'hoseini' , '1350-10-22' , null);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (302, 'mohammad', 'mohammadi' , '1370-06-15' , null);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (303, 'ali', 'rashidi' , '1372-12-14' , null);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (304, 'ahmad', 'molayi' , '1365-04-17' , 1645);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (305, 'saleh', 'salehi' , '1380-12-12' , 234);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (306, 'monir', 'moniri' , '1340-05-23' , null);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (307, 'hoda', 'samadi' , '1375-09-06' , null);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (308, 'hassan', 'nasiri' , '1357-11-23' , null);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (309, 'mona', 'darabi' , '1373-03-03' , null);

INSERT INTO users (userid, fname, lname , birthdate , dis_code)
VALUES (310, 'mahshid', 'soori' , '1375-10-06' , 187);


/*inserting values into place*/

INSERT INTO place (placeid, placename, typep)
VALUES (600, 'danzhe', 'restaurant');

INSERT INTO place (placeid, placename, typep)
VALUES (601, 'spiyas', 'restaurant');

INSERT INTO place (placeid, placename, typep)
VALUES (602, 'pedare khoob', 'restaurant');

INSERT INTO place (placeid, placename, typep)
VALUES (603, 'green moon', 'restaurant');

INSERT INTO place (placeid, placename, typep)
VALUES (604, 'kliz', 'restaurant');

INSERT INTO place (placeid, placename, typep)
VALUES (605, 'dorehami', 'restaurant');

INSERT INTO place (placeid, placename, typep)
VALUES (606, 'teras', 'cafe');

INSERT INTO place (placeid, placename, typep)
VALUES (607, 'fekrkade', 'cafe');

INSERT INTO place (placeid, placename, typep)
VALUES (608, 'bon bast', 'cafe');

INSERT INTO place (placeid, placename, typep)
VALUES (609, 'labkhand', 'cafe');

INSERT INTO place (placeid, placename, typep)
VALUES (610, 'caren', 'cafe');

INSERT INTO place (placeid, placename, typep)
VALUES (611, 'zhav', 'cafe');

INSERT INTO place (placeid, placename, typep)
VALUES (612, 'hoora', 'sweetshop');

INSERT INTO place (placeid, placename, typep)
VALUES (613, 'kaj', 'sweetshop');

INSERT INTO place (placeid, placename, typep)
VALUES (614, 'nojoomi', 'sweetshop');

INSERT INTO place (placeid, placename, typep)
VALUES (615, 'minoo', 'sweetshop');

INSERT INTO place (placeid, placename, typep)
VALUES (616, 'nila', 'sweetshop');

/*inserting values into have*/

INSERT INTO have (placeid, mealid)
VALUES (600 , 208);

INSERT INTO have (placeid, mealid)
VALUES (600 , 209);

INSERT INTO have (placeid, mealid)
VALUES (600 , 210);

INSERT INTO have (placeid, mealid)
VALUES (600 , 211);

INSERT INTO have (placeid, mealid)
VALUES (601 , 208);

INSERT INTO have (placeid, mealid)
VALUES (601 , 210);

INSERT INTO have (placeid, mealid)
VALUES (601 , 211);

INSERT INTO have (placeid, mealid)
VALUES (601 , 212);

INSERT INTO have (placeid, mealid)
VALUES (602 , 206);

INSERT INTO have (placeid, mealid)
VALUES (602 , 208);

INSERT INTO have (placeid, mealid)
VALUES (602 , 209);

INSERT INTO have (placeid, mealid)
VALUES (602 , 212);

INSERT INTO have (placeid, mealid)
VALUES (603 , 200);

INSERT INTO have (placeid, mealid)
VALUES (603 , 201);

INSERT INTO have (placeid, mealid)
VALUES (603 , 208);

INSERT INTO have (placeid, mealid)
VALUES (603 , 209);

INSERT INTO have (placeid, mealid)
VALUES (604 , 208);

INSERT INTO have (placeid, mealid)
VALUES (604 , 201);

INSERT INTO have (placeid, mealid)
VALUES (604 , 202);

INSERT INTO have (placeid, mealid)
VALUES (604 , 211);

INSERT INTO have (placeid, mealid)
VALUES (604 , 212);

INSERT INTO have (placeid, mealid)
VALUES (605 , 208);

INSERT INTO have (placeid, mealid)
VALUES (605 , 209);

INSERT INTO have (placeid, mealid)
VALUES (605 , 210);

INSERT INTO have (placeid, mealid)
VALUES (605 , 211);

INSERT INTO have (placeid, mealid)
VALUES (605 , 212);

INSERT INTO have (placeid, mealid)
VALUES (606 , 200);

INSERT INTO have (placeid, mealid)
VALUES (606 , 201);

INSERT INTO have (placeid, mealid)
VALUES (606 , 202);

INSERT INTO have (placeid, mealid)
VALUES (606 , 203);

INSERT INTO have (placeid, mealid)
VALUES (607 , 201);

INSERT INTO have (placeid, mealid)
VALUES (607 , 202);

INSERT INTO have (placeid, mealid)
VALUES (607 , 204);

INSERT INTO have (placeid, mealid)
VALUES (608 , 203);

INSERT INTO have (placeid, mealid)
VALUES (608 , 204);

INSERT INTO have (placeid, mealid)
VALUES (608 , 205);

INSERT INTO have (placeid, mealid)
VALUES (609 , 201);

INSERT INTO have (placeid, mealid)
VALUES (609 , 202);

INSERT INTO have (placeid, mealid)
VALUES (610 , 200);

INSERT INTO have (placeid, mealid)
VALUES (610 , 202);

INSERT INTO have (placeid, mealid)
VALUES (610 , 204);

INSERT INTO have (placeid, mealid)
VALUES (610 , 206);

INSERT INTO have (placeid, mealid)
VALUES (611 , 200);

INSERT INTO have (placeid, mealid)
VALUES (611 , 201);

INSERT INTO have (placeid, mealid)
VALUES (611 , 202);

INSERT INTO have (placeid, mealid)
VALUES (612 , 204);

INSERT INTO have (placeid, mealid)
VALUES (612 , 205);

INSERT INTO have (placeid, mealid)
VALUES (612 , 206);

INSERT INTO have (placeid, mealid)
VALUES (612 , 207);

INSERT INTO have (placeid, mealid)
VALUES (613 , 204);

INSERT INTO have (placeid, mealid)
VALUES (614 , 205);

INSERT INTO have (placeid, mealid)
VALUES (614 , 206);

INSERT INTO have (placeid, mealid)
VALUES (615 , 204);

INSERT INTO have (placeid, mealid)
VALUES (615 , 205);

INSERT INTO have (placeid, mealid)
VALUES (615 , 206);

INSERT INTO have (placeid, mealid)
VALUES (616 , 206);

INSERT INTO have (placeid, mealid)
VALUES (616 , 205);

/*inserting values into search*/

INSERT INTO search (userid, mealid)
VALUES (300 , 212);

INSERT INTO search (userid, mealid)
VALUES (305 , 210);

INSERT INTO search (userid, mealid)
VALUES (301 , 200);

INSERT INTO search (userid, mealid)
VALUES (301 , 212);

INSERT INTO search (userid, mealid)
VALUES (300 , 209);
