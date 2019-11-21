# Start of agents 
DROP TABLE IF EXISTS `agents`;
CREATE TABLE `agents` ( 
`id` int(11)  NOT NULL  auto_increment ,
`agentCode` varchar(255)  NOT NULL ,
`name` varchar(255)  NOT NULL ,
`surname` varchar(255)  NOT NULL ,
`clents` int(11)  NOT NULL ,
`commission` varchar(255)  NOT NULL ,
`rate` varchar(255)  NOT NULL ,
 PRIMARY KEY (`id`),

);


# Start of claim 
DROP TABLE IF EXISTS `claim`;
CREATE TABLE `claim` ( 
`id` int(11)  NOT NULL  auto_increment ,
`policyNo` varchar(255)  NOT NULL ,
`name` varchar(255)  NOT NULL ,
`surname` varchar(255)  NOT NULL ,
`natID` varchar(255)  NOT NULL ,
`proof` varchar(255)  NOT NULL ,
`burial` varchar(255)  NOT NULL ,
`claim` int(255)  NOT NULL ,
`status` varchar(255)  NOT NULL ,
 PRIMARY KEY (`id`),

);

INSERT INTO claim VALUES("1", "FPS199922A", "Mako", "hodzongi", "claim/64513715_2329697937285500_767717492830240768_o.jpg", "claim/Capture.PNG", "claim/name.png", "0", "Approved");
INSERT INTO claim VALUES("8", "FPS199922A", "Mako", "hodzongi", "claim/unnamed.jpg", "claim/cover.jpg", "claim/images.jpg", "15000", "Pending");
INSERT INTO claim VALUES("7", "CC19109V", "linda", "chishakwe", "claim/Screenshot (1).png", "claim/Screenshot (2).png", "claim/Screenshot (3).png", "9000", "pending");
INSERT INTO claim VALUES("11", "CC199459", "BELINDA", "LUNGU", "claim/Number 5.PNG", "claim/TEST SCORE.PNG", "claim/number 1.PNG", "35000", "Pending");
INSERT INTO claim VALUES("12", "ec191401H", "desmond", "dube", "claim/Screen Cap (5).JPG", "claim/Poster.jpg", "claim/folder.jpg", "35000", "Pending");
INSERT INTO claim VALUES("13", "CC191435B", "Letwin", "Tembo", "claim/IMG-20190115-WA0000.jpg", "claim/IMG-20190309-WA0008.jpg", "claim/IMG-20190502-WA0017.jpg", "35000", "Pending");
INSERT INTO claim VALUES("17", "CC191435B", "Letwin", "Tembo", "claim/IMG-20190502-WA0007.jpg", "claim/IMG-20190502-WA0021.jpg", "claim/IMG-20191002-WA0005.jpg", "35000", "Approved");
INSERT INTO claim VALUES("21", "CC199459", "BELINDA", "LUNGU", "claim/food02d.jpg", "claim/food03d.jpg", "claim/food02.jpg", "35000", "Pending");

# Start of comments 
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` ( 
`id` int(11)  NOT NULL  auto_increment ,
`reg` varchar(255)  NOT NULL ,
`comment` varchar(25555)  NOT NULL ,
 PRIMARY KEY (`id`),

);

INSERT INTO comments VALUES("1", "FPS199922A", "ui9nh,");
INSERT INTO comments VALUES("2", "FPS199922A", "volume boe here");
INSERT INTO comments VALUES("3", "CC194895K", "gOOD SERVICES .. KEEP UP THE GOOD WORK");
INSERT INTO comments VALUES("4", "ec191401H", "so far so good");

# Start of company 
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` ( 
`id` int(11)  NOT NULL  auto_increment ,
`name` varchar(255)  NOT NULL ,
`suffix` varchar(255)  NOT NULL ,
`phone` varchar(255)  NOT NULL ,
`address` varchar(255)  NOT NULL ,
 PRIMARY KEY (`id`),

);

INSERT INTO company VALUES("1", "Old mutual", "om", "775125004", "harare");
INSERT INTO company VALUES("2", "nyaradzo", "ny", "0732125004", "harare");
INSERT INTO company VALUES("3", "CRUST CORE", "CC", "7123562158", "GWERU");
INSERT INTO company VALUES("4", "ecocash", "ec", "0778544998", "masasa, harare");
INSERT INTO company VALUES("6", "Fidelity Life", "FL", "236778542669", "Mt Plesent ");

# Start of depend 
DROP TABLE IF EXISTS `depend`;
CREATE TABLE `depend` ( 
`id` int(11)  NOT NULL  auto_increment ,
`policyNo` varchar(255)  NOT NULL ,
`name` varchar(255)  NOT NULL ,
`surname` varchar(255)  NOT NULL ,
`rship` varchar(255)  NOT NULL ,
`policy` varchar(255)  NOT NULL ,
 PRIMARY KEY (`id`),

);

INSERT INTO depend VALUES("1", "FPS199922A", "Inasem", "Hodzongi", "Father", "Basic");
INSERT INTO depend VALUES("2", "FPS199922A", "keylar", "chioto", "Daughter", "Basic");
INSERT INTO depend VALUES("4", "FPS199922A", "Melody", "Ngorima", "Mother", "Basic");
INSERT INTO depend VALUES("5", "CC19109V", "clive", "kasichi", "Son", "Platnum");
INSERT INTO depend VALUES("6", "CC194895K", "martin", "rubaya", "Father", "Basic");
INSERT INTO depend VALUES("7", "CC194895K", "robert", "chabata", "Nephew", "Basic");
INSERT INTO depend VALUES("8", "CC199459", "martha", "kadoom", "Daughter", "Standard");
INSERT INTO depend VALUES("9", "ec191401H", "vusa", "dube", "Son", "Standard");
INSERT INTO depend VALUES("10", "CC191435B", "Letwin", "Tembo", "Owner", "Standard");
INSERT INTO depend VALUES("11", "CC191435B", "Edwin", "Sibanda", "Brother", "Standard");
INSERT INTO depend VALUES("12", "FL197891", "Mutsa", "Mupunga", "Owner", "Lite");
INSERT INTO depend VALUES("13", "FL197891", "Caroline", "Mupunga", "Sister", "Lite");

# Start of mesg 
DROP TABLE IF EXISTS `mesg`;
CREATE TABLE `mesg` ( 
`id` int(11)  NOT NULL  auto_increment ,
`name` varchar(255)  NOT NULL ,
`msg` varchar(255)  NOT NULL ,
`time` varchar(255)  NOT NULL ,
 PRIMARY KEY (`id`),

);

INSERT INTO mesg VALUES("1", "Vusa Dube", "Admin here", "2019-11-07 23:23:34");
INSERT INTO mesg VALUES("2", "Letwin Tembo CC191435B", "Um impressed", "2019-11-09 14:54:12");
INSERT INTO mesg VALUES("3", "LennaTo Takashi", "Thank you Letwin", "2019-11-19 08:48:06");
INSERT INTO mesg VALUES("4", "Lenie Moyo", "Thank you Crust Core Clients", "2019-11-19 09:44:59");
INSERT INTO mesg VALUES("5", "Lenie Moyo", "", "2019-11-19 10:07:45");
INSERT INTO mesg VALUES("6", "desmond dube ec191401H", "Thanks to Ecocash um assured", "2019-11-19 10:11:50");
INSERT INTO mesg VALUES("7", "Tatenda Mashava", "Fidelity ,, we are here to stay", "2019-11-19 15:49:46");

# Start of policy 
DROP TABLE IF EXISTS `policy`;
CREATE TABLE `policy` ( 
`id` int(11)  NOT NULL  auto_increment ,
`type` varchar(255)  NOT NULL ,
`premium` int(11)  NOT NULL ,
`cover` int(11)  NOT NULL ,
 PRIMARY KEY (`id`),

);

INSERT INTO policy VALUES("1", "Lite", "5", "9000");
INSERT INTO policy VALUES("2", "Basic", "10", "15000");
INSERT INTO policy VALUES("3", "Standard", "20", "35000");
INSERT INTO policy VALUES("4", "Platnum", "70", "100000");

# Start of premium 
DROP TABLE IF EXISTS `premium`;
CREATE TABLE `premium` ( 
`id` int(11)  NOT NULL  auto_increment ,
`policyNo` varchar(255)  NOT NULL ,
`depend` varchar(255) ,
`amt` int(11)  NOT NULL ,
`cover` int(11) ,
`date` date  NOT NULL ,
`time` time  NOT NULL ,
 PRIMARY KEY (`id`),

);

INSERT INTO premium VALUES("1", "FPS199922A", "", "10", "15000", "2019-10-26", "03:35:11");
INSERT INTO premium VALUES("2", "FPS199922A", "", "10", "15000", "2019-10-26", "03:35:11");
INSERT INTO premium VALUES("3", "FPS199922A", "", "10", "15000", "2019-10-26", "03:35:11");
INSERT INTO premium VALUES("4", "CC199459", "", "20", "35000", "2019-10-28", "09:33:52");
INSERT INTO premium VALUES("5", "CC19109V", "", "70", "100000", "2019-10-28", "10:19:31");
INSERT INTO premium VALUES("6", "ec191401H", "Son", "20", "35000", "2019-10-29", "02:30:19");
INSERT INTO premium VALUES("7", "CC191435B", "", "20", "35000", "2019-11-07", "08:45:44");
INSERT INTO premium VALUES("8", "CC191435B", "", "20", "35000", "2019-11-07", "08:45:44");
INSERT INTO premium VALUES("9", "CC191435B", "Owner", "20", "35000", "2019-11-07", "08:54:49");
INSERT INTO premium VALUES("10", "CC191435B", "Brother", "20", "35000", "2019-11-07", "08:54:49");
INSERT INTO premium VALUES("11", "FL197891", "Owner", "5", "9000", "2019-11-19", "04:15:04");
INSERT INTO premium VALUES("12", "FL197891", "Sister", "5", "9000", "2019-11-19", "04:15:04");

# Start of regs 
DROP TABLE IF EXISTS `regs`;
CREATE TABLE `regs` ( 
`reg` varchar(255) ,
`id` int(11)  NOT NULL  auto_increment ,
 PRIMARY KEY (`id`),

);


# Start of rship 
DROP TABLE IF EXISTS `rship`;
CREATE TABLE `rship` ( 
`id` int(11)  NOT NULL  auto_increment ,
`rship` varchar(255)  NOT NULL ,
 PRIMARY KEY (`id`),

);

INSERT INTO rship VALUES("1", "Son");
INSERT INTO rship VALUES("2", "Daughter");
INSERT INTO rship VALUES("3", "Father");
INSERT INTO rship VALUES("4", "Mother");

# Start of subscriber 
DROP TABLE IF EXISTS `subscriber`;
CREATE TABLE `subscriber` ( 
`reg` varchar(255)  NOT NULL ,
`name` varchar(255)  NOT NULL ,
`surname` varchar(255)  NOT NULL ,
`sex` varchar(255)  NOT NULL ,
`fone` varchar(255)  NOT NULL ,
`address` varchar(255)  NOT NULL ,
`user` varchar(255)  NOT NULL ,
`password` varchar(255)  NOT NULL ,
`email` varchar(255)  NOT NULL ,
`policy` varchar(255)  NOT NULL ,
`company` varchar(255)  NOT NULL ,
`pathe` varchar(255)  NOT NULL ,
`agent` varchar(255) ,
 PRIMARY KEY (`reg`),

);

INSERT INTO subscriber VALUES("FPS199922A", "Mako", "hodzongi", "Male", "03569545", "1663 MKoba 12 Gweru Zimbabwe", "mako", "mako", "mako@crust.com", "Basic", "", "images/1.JPG", "");
INSERT INTO subscriber VALUES("CC19109V", "linda", "chishakwe", "Female", "071235894", "mabvuku", "linda", "linda", "linda@gmail.com", "Platnum", "CRUST CORE", "images/cover.jpg", "");
INSERT INTO subscriber VALUES("CC194895K", "RUSO", "SIBANDA", "Male", "071254863", "RBZ", "RUSO", "RUSO", "RUSO@GMAIL.COM", "Basic", "CRUST CORE", "../subscriber/images/72065391_10162268847090262_8993994334839767040_n.jpg", "");
INSERT INTO subscriber VALUES("CC199459", "BELINDA", "LUNGU", "Female", "077796543", "GREENDALE", "BELINDA", "BELINDA", "BELINDA@GMAIL.COM", "Standard", "CRUST CORE", "../subscriber/images/72039238_1591433987674529_6169470248664694784_n.jpg", "");
INSERT INTO subscriber VALUES("ec191401H", "desmond", "dube", "Male", "0778654234", "greencroft, ", "vybrant", "vybrant", "vybrant@cars.net", "Standard", "ecocash", "../subscriber/images/Screen Cap (1).JPG", "");
INSERT INTO subscriber VALUES("", "", "", "", "", "", "", "", "", "", "", "", "");
INSERT INTO subscriber VALUES("CC191435B", "Letwin", "Tembo", "Female", "0789564231", "Kwekwe", "leti", "leti", "leti@gmail.com", "Standard", "CRUST CORE", "../subscriber/images/IMG-20190206-WA0007.jpg", "");
INSERT INTO subscriber VALUES("FL197891", "Mutsa", "Mupunga", "Female", "0712356559", "Chitungwiza,\nHarare", "Mutsa", "mutsa2019", "mutsa@yahoo.com", "Lite", "Fidelity Life", "../subscriber/images/shutterstock_26254903.jpg", "Dorcas");

# Start of users 
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` ( 
`company` varchar(255) ,
`name` varchar(255) ,
`surname` varchar(255) ,
`contact` varchar(255) ,
`email` varchar(255) ,
`sex` varchar(255) ,
`access` int(25) ,
`username` varchar(255) ,
`password` varchar(255) ,
`id` int(11)  NOT NULL  auto_increment ,
 PRIMARY KEY (`id`),

);

INSERT INTO users VALUES("nyaradzo", "LennaTo", "Takashi", "773747838", "tate@gmail.com", "Male", "0", "admin", "admin", "1");
INSERT INTO users VALUES("CRUST CORE", "Trust", "Matanga", "772273744", "trust@gmail.com", "Female", "1", "head", "head", "2");
INSERT INTO users VALUES("nyaradzo", "James", "White", "776665556", "james@yahoo.com", "Male", "2", "james", "james", "3");
INSERT INTO users VALUES("CRUST CORE", "Lenie", "Moyo", "773384756", "leni@yahoo.com", "Male", "3", "leni", "leni", "4");
INSERT INTO users VALUES("Old mutual", "wellington", "ganzio", "2147483647", "welly@crustcore.com", "male", "5", "welly", "welly", "5");
INSERT INTO users VALUES("CRUST CORE", "teddy", "magwere", "2147483647", "teddy@gmail.com", "male", "4", "teddy", "teddy", "6");
INSERT INTO users VALUES("Old mutual", "esilida", "hodzongi", "732125004", "essy@gmail.com", "Female", "1", "essy", "essy", "7");
INSERT INTO users VALUES("Old mutual", "ranga", "maggie", "732125004", "ranga@crustfps.com", "Male", "3", "ranga", "ranga", "9");
INSERT INTO users VALUES("ecocash", "martin", "rubaya", "775200500", "martin@econet.net", "Male", "2", "matso", "matso", "13");
INSERT INTO users VALUES("nyaradzo", "LAWRENCE", "MUPARUTSA", "2147483647", "uchihas327@gmail.com", "Male", "2", "lawrie", "lawrie", "10");
INSERT INTO users VALUES("ecocash", "strive", "masiyiwa", "775300800", "strive@econet.net", "Male", "1", "strive", "strive", "12");
INSERT INTO users VALUES("ecocash", "getrude", "machobo", "775700100", "getty@econet.net", "Female", "3", "getty", "getty", "14");
INSERT INTO users VALUES("Fidelity Life", "Tatenda", "Mashava", "786556874", "fidelity@gmail.com", "Male", "1", "fidelity", "FIDELITY", "18");
INSERT INTO users VALUES("CRUST CORE", "Vusa", "Dube", "2147483647", "vusa@gmail.com", "Male", "2", "dubes", "dubes", "17");
INSERT INTO users VALUES("Fidelity Life", "Boldwin", "Chiwandire", "774586985", "boldwin@fidelty.co.za", "Female", "2", "boldwin", "boldwinc", "19");
INSERT INTO users VALUES("Fidelity Life", "Docas", "Andrea", "712249008", "dpcas@gmail.com", "Female", "3", "Dorcas", "docas2019", "20");
Backup Taken Successful!!!