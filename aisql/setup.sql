CREATE TABLE `Customer`(
    `CustomerID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `FirstName` VARCHAR(255) NOT NULL,
    `LastName` VARCHAR(255) NOT NULL,
    `Email` VARCHAR(255) NOT NULL,
    `Birthday` DATE NOT NULL,
    `Points` INT NOT NULL
);
CREATE TABLE `Order`(
    `OrderID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `ShopID` INT NOT NULL,
    `CustomerID` INT NOT NULL,
    PRIMARY KEY(`ShopID`)
);
CREATE TABLE `CookieOrder`(
    `OrderID` INT NOT NULL,
    `CookieID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `Amount` INT NOT NULL,
    PRIMARY KEY(`OrderID`)
);
CREATE TABLE `Cookie`(
    `CookieID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `Type` CHAR(2) NOT NULL,
    `CookieName` VARCHAR(255) NOT NULL,
    `GlutenFree` BOOLEAN NOT NULL,
    `DairyFree` BOOLEAN NOT NULL
);
CREATE TABLE `Shop`(
    `ShopID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `AddressID` INT NOT NULL,
    `PhoneNumber` INT NOT NULL,
    PRIMARY KEY(`AddressID`)
);
CREATE TABLE `CookieShop`(
    `ShopID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `CookieID` INT NOT NULL,
    PRIMARY KEY(`CookieID`)
);
CREATE TABLE `Address`(
    `AddressID` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `State` CHAR(2) NOT NULL,
    `Zip` INT NOT NULL,
    `City` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Shop` ADD CONSTRAINT `shop_addressid_foreign` FOREIGN KEY(`AddressID`) REFERENCES `Address`(`AddressID`);
ALTER TABLE
    `Order` ADD CONSTRAINT `order_orderid_foreign` FOREIGN KEY(`OrderID`) REFERENCES `CookieOrder`(`OrderID`);
ALTER TABLE
    `Order` ADD CONSTRAINT `order_customerid_foreign` FOREIGN KEY(`CustomerID`) REFERENCES `Customer`(`CustomerID`);
ALTER TABLE
    `Cookie` ADD CONSTRAINT `cookie_cookieid_foreign` FOREIGN KEY(`CookieID`) REFERENCES `CookieShop`(`ShopID`);
ALTER TABLE
    `Order` ADD CONSTRAINT `order_shopid_foreign` FOREIGN KEY(`ShopID`) REFERENCES `Shop`(`ShopID`);
ALTER TABLE
    `Cookie` ADD CONSTRAINT `cookie_cookieid_foreign` FOREIGN KEY(`CookieID`) REFERENCES `CookieOrder`(`CookieID`);
ALTER TABLE
    `Shop` ADD CONSTRAINT `shop_shopid_foreign` FOREIGN KEY(`ShopID`) REFERENCES `CookieShop`(`CookieID`);