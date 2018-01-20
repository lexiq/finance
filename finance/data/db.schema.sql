CREATE TABLE `category` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar (255) not null default '',
  `parent_id` int(11) null,
  `exclude_from_cashflow` TINYINT(1) NOT NULL DEFAULT 0
  INDEX `parent_id` (`parent_id`)
);

CREATE TABLE `account` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `name` varchar (255) not null default ''
);


CREATE TABLE `transaction` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `date` DATE NULL,
  `account_id` INT (11) null,
  `category_id` INT (11) null,
  `description` varchar(255) not null default '',
  `amount` DECIMAL(8, 2) NOT NULL DEFAULT 0,
  index `date` (`date`),
  index `account_id` (`account_id`),
  index `category_id` (`category_id`)
);

CREATE TABLE `keyword` (
  `id` int(11) PRIMARY KEY AUTO_INCREMENT,
  `keyword`  varchar(255) not null default '',
  `category_id` INT (11) null
);
