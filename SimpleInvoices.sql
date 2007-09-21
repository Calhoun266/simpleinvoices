DROP DATABASE `genlu`;
CREATE DATABASE `genlu`;
USE `genlu`;

-- --------------------------------------------------------

--
-- Table structure for table `genlu_account_payments`
--

CREATE TABLE `genlu_account_payments` (
  `id` int(10) NOT NULL auto_increment,
  `ac_inv_id` varchar(10) collate utf8_unicode_ci NOT NULL,
  `ac_amount` double(25,2) NOT NULL,
  `ac_notes` text collate utf8_unicode_ci NOT NULL,
  `ac_date` datetime NOT NULL,
  `ac_payment_type` int(10) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `genlu_account_payments`
--

INSERT INTO `genlu_account_payments` (`id`, `ac_inv_id`, `ac_amount`, `ac_notes`, `ac_date`, `ac_payment_type`) VALUES
(1, '1', 410.00, 'payment - cheque 14526', '2006-08-25 12:09:14', 1),
(2, '4', 255.75, '', '2006-08-25 12:13:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `genlu_biller`
--

CREATE TABLE `genlu_biller` (
  `id` int(10) NOT NULL auto_increment,
  `name` varchar(255) default NULL,
  `street_address` varchar(255) default NULL,
  `street_address2` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `zip_code` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `mobile_phone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `logo` varchar(255) default NULL,
  `footer` text,
  `notes` text,
  `custom_field1` varchar(255) default NULL,
  `custom_field2` varchar(255) default NULL,
  `custom_field3` varchar(255) default NULL,
  `custom_field4` varchar(255) default NULL,
  `enabled` varchar(1) NOT NULL default '1',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `genlu_biller`
--

INSERT INTO `genlu_biller` (`id`, `name`, `street_address`, `street_address2`, `city`, `state`, `zip_code`, `country`, `phone`, `mobile_phone`, `fax`, `email`, `logo`, `footer`, `notes`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `enabled`) VALUES
(1, 'Mr Plough', '43 Evergreen Terace', '', 'Springfield', 'New York', '90245', '', '04 5689 0456', '0456 4568 8966', '04 5689 8956', 'homer@mrplough.com', 'ubuntulogo.png', '', '', '', '7898-87987-87', '', '', '1'),
(2, 'Homer Simpson', '43 Evergreen Terace', NULL, 'Springfield', 'New York', '90245', NULL, '04 5689 0456', '0456 4568 8966', '04 5689 8956', 'homer@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(3, 'The Beer Baron', '43 Evergreen Terace', NULL, 'Springfield', 'New York', '90245', NULL, '04 5689 0456', '0456 4568 8966', '04 5689 8956', 'beerbaron@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(4, 'Fawlty Towers', '13 Seaside Drive', NULL, 'Torquay', 'Brixton on Avon', '65894', 'United Kingdom', '089 6985 4569', '0425 5477 8789', '089 6985 4568', 'penny@fawltytowers.co.uk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_custom_fields`
--

CREATE TABLE `genlu_custom_fields` (
  `cf_id` int(11) NOT NULL auto_increment,
  `cf_custom_field` varchar(255) collate utf8_unicode_ci default NULL,
  `cf_custom_label` varchar(255) collate utf8_unicode_ci default NULL,
  `cf_display` varchar(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`cf_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `genlu_custom_fields`
--

INSERT INTO `genlu_custom_fields` (`cf_id`, `cf_custom_field`, `cf_custom_label`, `cf_display`) VALUES
(1, 'biller_cf1', NULL, '0'),
(2, 'biller_cf2', 'Tax ID', '0'),
(3, 'biller_cf3', NULL, '0'),
(4, 'biller_cf4', NULL, '0'),
(5, 'customer_cf1', NULL, '0'),
(6, 'customer_cf2', NULL, '0'),
(7, 'customer_cf3', NULL, '0'),
(8, 'customer_cf4', NULL, '0'),
(9, 'product_cf1', NULL, '0'),
(10, 'product_cf2', NULL, '0'),
(11, 'product_cf3', NULL, '0'),
(12, 'product_cf4', NULL, '0'),
(13, 'invoice_cf1', NULL, '0'),
(14, 'invoice_cf2', NULL, '0'),
(15, 'invoice_cf3', NULL, '0'),
(16, 'invoice_cf4', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_customers`
--

CREATE TABLE `genlu_customers` (
  `id` int(10) NOT NULL auto_increment,
  `customer_short_id` varchar(255) NOT NULL,
  `attention` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `street_address` varchar(255) default NULL,
  `street_address2` varchar(255) default NULL,
  `city` varchar(255) default NULL,
  `state` varchar(255) default NULL,
  `zip_code` varchar(255) default NULL,
  `country` varchar(255) default NULL,
  `phone` varchar(255) default NULL,
  `mobile_phone` varchar(255) default NULL,
  `fax` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `website` varchar(255) default NULL,
  `shipping_address` varchar(255) default NULL,
  `shipping_address2` varchar(255) default NULL,
  `shipping_city` varchar(255) default NULL,
  `shipping_state` varchar(255) default NULL,
  `shipping_zip_code` varchar(255) default NULL,
  `shipping_country` varchar(255) default NULL,
  `shipping_phone` varchar(255) default NULL,
  `shipping_fax` varchar(255) default NULL,
  `shipping_email` varchar(255) default NULL,
  `notes` text,
  `custom_field1` varchar(255) default NULL,
  `custom_field2` varchar(255) default NULL,
  `custom_field3` varchar(255) default NULL,
  `custom_field4` varchar(255) default NULL,
  `enabled` varchar(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY (`name`),
  UNIQUE KEY (`customer_short_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `genlu_customers`
--
INSERT INTO `genlu_customers` (`id`, `customer_short_id`, `attention`, `name`, `street_address`, `street_address2`, `city`, `state`, `zip_code`, `country`, `phone`, `mobile_phone`, `fax`, `email`, `website`, `shipping_address`, `shipping_address2`, `shipping_city`, `shipping_state`, `shipping_zip_code`, `shipping_country`, `shipping_phone`, `shipping_fax`, `shipping_email`, `notes`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `enabled`) VALUES
(1, 'MI101', 'Salim', 'Watch Time Inc.', '121 E Flagler St.', NULL, 'Miami', 'FL', '33132', 'USA', '(305) 539-0515', NULL, '(305) 539-0515', 'sales@WatchTimeInc.com', 'http://www.watchtimeinc.com', '121 E Flagler St.', NULL, 'Miami', 'FL', '33132', 'USA', '(305) 539-0515', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(2, 'MI102', 'Ali', 'Watch Plaza', '30 Ne 1st Avenue', NULL, 'Miami', 'FL', '33132', 'USA', '305-358-0440', NULL, NULL, NULL, NULL, '30 Ne 1st Avenue', NULL, 'Miami', 'FL', '33132', 'USA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_defaults`
--

CREATE TABLE `genlu_defaults` (
  `def_id` int(10) NOT NULL auto_increment,
  `def_biller` int(25) default NULL,
  `def_customer` int(25) default NULL,
  `def_tax` int(25) default NULL,
  `def_inv_preference` int(25) default NULL,
  `def_number_line_items` int(25) NOT NULL default '0',
  `def_inv_template` varchar(50) NOT NULL default 'default',
  `def_payment_type` varchar(25) default '1',
  PRIMARY KEY  (`def_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `genlu_defaults`
--

INSERT INTO `genlu_defaults` (`def_id`, `def_biller`, `def_customer`, `def_tax`, `def_inv_preference`, `def_number_line_items`, `def_inv_template`, `def_payment_type`) VALUES
(1, 4, 3, 1, 1, 5, 'default', '1');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_invoice_items`
--

CREATE TABLE `genlu_invoice_lines` (
	`id` int(10) NOT NULL auto_increment,
	`invoice_id` int(10) NOT NULL default '0',
	`product_id` int(10) default '0',
	`description` text,
	`quantity` int NOT NULL default '0',
	`unit_price` double(25,2) default '0.00',
	PRIMARY KEY  (`id`),
	KEY (`invoice_id`),
	KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `genlu_invoice_type`
--

CREATE TABLE `genlu_invoice_type` (
  `inv_ty_id` int(11) NOT NULL auto_increment,
  `inv_ty_description` varchar(25) NOT NULL default '',
  PRIMARY KEY  (`inv_ty_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `genlu_invoice_type`
--

INSERT INTO `genlu_invoice_type` (`inv_ty_id`, `inv_ty_description`) VALUES
(1, 'Total'),
(2, 'Itemised'),
(3, 'Consulting');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_invoices`
--

CREATE TABLE `genlu_invoices` (
	`id` int(10) NOT NULL auto_increment,
	`invoice_number` varchar(255) NOT NULL,
	`biller_id` int(10) NOT NULL default '0',
	`customer_id` int(10) NOT NULL default '0',
	`ship_to_id` int(10) NOT NULL default '0',
	`type_id` int(10) NOT NULL default '0',
	`tax_id` varchar(25) NOT NULL default '0',
	`freight` decimal(10,2) default '0.00',
	`preference_id` int(10) NOT NULL default '0',
	`date` datetime NOT NULL default '0000-00-00 00:00:00',
	`note` text,
	PRIMARY KEY  (`id`),
	UNIQUE KEY (`invoice_number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Table structure for table `genlu_log`
--

CREATE TABLE `genlu_log` (
  `id` bigint(20) NOT NULL auto_increment,
  `timestamp` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL,
  `sqlquerie` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `genlu_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `genlu_payment_types`
--

CREATE TABLE `genlu_payment_types` (
  `pt_id` int(10) NOT NULL auto_increment,
  `pt_description` varchar(250) collate utf8_unicode_ci NOT NULL,
  `pt_enabled` varchar(1) collate utf8_unicode_ci NOT NULL default '1',
  PRIMARY KEY  (`pt_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `genlu_payment_types`
--

INSERT INTO `genlu_payment_types` (`pt_id`, `pt_description`, `pt_enabled`) VALUES
(1, 'Cash', '1'),
(2, 'Credit Card', '1');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_preferences`
--

CREATE TABLE `genlu_preferences` (
  `pref_id` int(11) NOT NULL auto_increment,
  `pref_description` varchar(50) default NULL,
  `pref_currency_sign` varchar(50) default NULL,
  `pref_inv_heading` varchar(50) default NULL,
  `pref_inv_wording` varchar(50) default NULL,
  `pref_inv_detail_heading` varchar(50) default NULL,
  `pref_inv_detail_line` text,
  `pref_inv_payment_method` varchar(50) default NULL,
  `pref_inv_payment_line1_name` varchar(50) default NULL,
  `pref_inv_payment_line1_value` varchar(50) default NULL,
  `pref_inv_payment_line2_name` varchar(50) default NULL,
  `pref_inv_payment_line2_value` varchar(50) default NULL,
  `pref_enabled` varchar(1) NOT NULL default '1',
  PRIMARY KEY  (`pref_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `genlu_preferences`
--

INSERT INTO `genlu_preferences` (`pref_id`, `pref_description`, `pref_currency_sign`, `pref_inv_heading`, `pref_inv_wording`, `pref_inv_detail_heading`, `pref_inv_detail_line`, `pref_inv_payment_method`, `pref_inv_payment_line1_name`, `pref_inv_payment_line1_value`, `pref_inv_payment_line2_name`, `pref_inv_payment_line2_value`, `pref_enabled`) VALUES
(1, 'Invoice - default', '$', 'Invoice', 'Invoice', 'Details', 'Payment is to be made within 14 days of the invoice being sent', 'Electronic Funds Transfer', 'Account name:', 'H. & M. Simpson', 'Account number:', '0123-4567-7890', '1'),
(2, 'Invoice - no payment details', '$', 'Invoice', 'Invoice', NULL, '', '', '', '', '', '', '1'),
(3, 'Receipt - default', '$', 'Receipt', 'Receipt', 'Details', '<br>This transaction has been paid in full, please keep this receipt as proof of purchase.<br> Thank you', '', '', '', '', '', '1'),
(4, 'Estimate - default', '$', 'Estimate', 'Estimate', 'Details', '<br>This is an estimate of the final value of services rendered.<br>Thank you', '', '', '', '', '', '1'),
(5, 'Quote - default', '$', 'Quote', 'Quote', 'Details', '<br>This is a quote of the final value of services rendered.<br>Thank you', '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_products`
--

CREATE TABLE `genlu_products` (
  `id` int(11) NOT NULL auto_increment,
  `reference` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `last_unit_cost` decimal(25,2) default NULL,
  `us_retail` decimal(25,2) default NULL,
  `price_level_A` decimal(25,2) default NULL,
  `price_level_B` decimal(25,2) default NULL,
  `price_level_C` decimal(25,2) default NULL,
  `price_level_D` decimal(25,2) default NULL,
  `custom_field1` varchar(255) default NULL,
  `custom_field2` varchar(255) default NULL,
  `custom_field3` varchar(255) default NULL,
  `custom_field4` varchar(255) default NULL,
  `notes` text NOT NULL,
  `enabled` varchar(1) NOT NULL default '1',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `reference` (`reference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `genlu_products`
--
INSERT INTO `genlu_products` (`id`, `reference`, `description`, `type`, `last_unit_cost`, `us_retail`, `price_level_A`, `price_level_B`, `price_level_C`, `price_level_D`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `notes`, `enabled`) VALUES
(1, 'CSX02', 'Technomarine Watch', 'technomarine', 126.00, 300.00, 180.00, 165.00, 0.00, 0.00, '', '', '', '', '', '1'),
(2, 'CSX05', 'Technomarine Watch', 'technomarine', 126.00, 300.00, 180.00, 165.00, 0.00, 0.00, '', '', '', '', '', '1'),
(3, 'CSX09', 'Technomarine Watch', 'technomarine', 126.00, 300.00, 180.00, 165.00, 0.00, 0.00, '', '', '', '', '', '1'),
(4, 'RSX02', 'Technomarine Watch', 'technomarine', 130.20, 310.00, 186.00, 170.55, 0.00, 0.00, '', '', '', '', '', '1'),
(5, 'RSX05', 'Technomarine Watch', 'technomarine', 130.20, 310.00, 186.00, 170.55, 0.00, 0.00, '', '', '', '', '', '1'),
(6, 'RSX12', 'Technomarine Watch', 'technomarine', 130.20, 310.00, 186.00, 170.55, 0.00, 0.00, '', '', '', '', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_sql_patchmanager`
--

CREATE TABLE `genlu_sql_patchmanager` (
  `sql_id` int(11) NOT NULL auto_increment,
  `sql_patch_ref` varchar(50) NOT NULL default '',
  `sql_patch` varchar(255) NOT NULL,
  `sql_release` varchar(25) NOT NULL default '',
  `sql_statement` text NOT NULL,
  PRIMARY KEY  (`sql_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `genlu_sql_patchmanager`
--

INSERT INTO `genlu_sql_patchmanager` (`sql_id`, `sql_patch_ref`, `sql_patch`, `sql_release`, `sql_statement`) VALUES
(1, '1', 'Create genlu_sql_patchmanger table', '20060514', 'CREATE TABLE genlu_sql_patchmanager (sql_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,sql_patch_ref VARCHAR( 50 ) NOT NULL ,sql_patch VARCHAR( 50 ) NOT NULL ,sql_release VARCHAR( 25 ) NOT NULL ,sql_statement TEXT NOT NULL) TYPE = MYISAM '),
(2, '2', 'Update invoice no details to have a default curren', '20060514', ''),
(3, '3', 'Add a row into the defaults table to handle the de', '20060514', ''),
(4, '4', 'Set the default number of line items to 5', '20060514', ''),
(5, '5', 'Add logo and invoice footer support to biller', '20060514', ''),
(6, '6', 'Add default invoice template option', '20060514', ''),
(7, '7', 'Edit tax description field lenght to 50', '20060526', ''),
(8, '8', 'Edit default invoice template field lenght to 50', '20060526', ''),
(9, '9', 'Add consulting style invoice', '20060531', ''),
(10, '10', 'Add enabled to biller', '20060815', ''),
(11, '11', 'Add enabled to customters', '20060815', ''),
(12, '12', 'Add enabled to prefernces', '20060815', ''),
(13, '13', 'Add enabled to products', '20060815', ''),
(14, '14', 'Add enabled to products', '20060815', ''),
(15, '15', 'Add tax_id into invoice_items table', '20060815', ''),
(16, '16', 'Add Payments table', '20060827', ''),
(17, '17', 'Adjust data type of quantity field', '20060827', ''),
(18, '18', 'Create Payment Types table', '20060909', ''),
(19, '19', 'Add info into the Payment Type table', '20060909', ''),
(20, '20', 'Adjust accounts payments table to add a type field', '20060909', ''),
(21, '21', 'Adjust the defautls table to add a payment type fi', '20060909', ''),
(22, '22', 'Add note field to customer', '20061026', ''),
(23, '23', 'Add note field to Biller', '20061026', ''),
(24, '24', 'Add note field to Products', '20061026', ''),
(25, '25', 'Add street address 2 to customers', '20061211', ''),
(26, '26', 'Add custom fields to customers', '20061211', ''),
(27, '27', 'Add mobile phone to customers', '20061211', ''),
(28, '28', 'Add street address 2 to billers', '20061211', ''),
(29, '29', 'Add custom fields to billers', '20061211', ''),
(30, '30', 'Creating the custom fields table', '20061211', ''),
(31, '31', 'Adding data to the custom fields table', '20061211', ''),
(32, '32', 'Adding custom fields to products', '20061211', ''),
(33, '33', 'Alter product custom field 4', '20061214', ''),
(34, '34', 'Reset invoice template to default refer Issue 70', '20070125', ''),
(35, '35', 'Adding data to the custom fields table for invoice', '20070204', ''),
(36, '36', 'Adding custom fields to the invoices table', '20070204', ''),
(37, '0', 'Start', '20060514', ''),
(38, '37', 'Reset invoice template to default due to new invoi', '20070325', ''),
(39, '38', 'Alter custom field table - field length now 255 fo', '20070325', ''),
(40, '39', 'Alter custom field table - field length now 255 fo', '20070325', ''),
(41, '40', 'Alter field name in genlu_partchmanager', '20070424', ''),
(42, '41', 'Alter field name in genlu_account_payments', '20070424', ''),
(43, '42', 'Alter field name b_name to name', '20070424', ''),
(44, '43', 'Alter field name b_id to id', '20070430', ''),
(45, '44', 'Alter field name b_street_address to street_address', '20070430', ''),
(46, '45', 'Alter field name b_street_address2 to street_address2', '20070430', ''),
(47, '46', 'Alter field name b_city to city', '20070430', ''),
(48, '47', 'Alter field name b_state to state', '20070430', ''),
(49, '48', 'Alter field name b_zip_code to zip_code', '20070430', ''),
(50, '49', 'Alter field name b_country to country', '20070430', ''),
(51, '50', 'Alter field name b_phone to phone', '20070430', ''),
(52, '51', 'Alter field name b_mobile_phone to mobile_phone', '20070430', ''),
(53, '52', 'Alter field name b_fax to fax', '20070430', ''),
(54, '53', 'Alter field name b_email to email', '20070430', ''),
(55, '54', 'Alter field name b_co_logo to logo', '20070430', ''),
(56, '55', 'Alter field name b_co_footer to footer', '20070430', ''),
(57, '56', 'Alter field name b_notes to notes', '20070430', ''),
(58, '57', 'Alter field name b_enabled to enabled', '20070430', ''),
(59, '58', 'Alter field name b_custom_field1 to custom_field1', '20070430', ''),
(60, '59', 'Alter field name b_custom_field2 to custom_field2', '20070430', ''),
(61, '60', 'Alter field name b_custom_field3 to custom_field3', '20070430', ''),
(62, '61', 'Alter field name b_custom_field4 to custom_field4', '20070430', ''),
(63, '62', 'Introduce system_defaults table', '20070503', ''),
(64, '63', 'Insert date into the system_defaults table', '20070503', ''),
(65, '64', 'Alter field name prod_id to id', '20070507', ''),
(66, '65', 'Alter field name prod_description to description', '20070507', ''),
(67, '66', 'Alter field name prod_unit_price to unit_price', '20070507', ''),
(68, '67', 'Alter field name prod_custom_field1 to custom_field1', '20070507', ''),
(69, '68', 'Alter field name prod_custom_field2 to custom_field2', '20070507', ''),
(70, '69', 'Alter field name prod_custom_field3 to custom_field3', '20070507', ''),
(71, '70', 'Alter field name prod_custom_field4 to custom_field4', '20070507', ''),
(72, '71', 'Alter field name prod_notes to notes', '20070507', ''),
(73, '72', 'Alter field name prod_enabled to enabled', '20070507', ''),
(74, '73', 'Alter field name c_id to id', '20070507', ''),
(75, '74', 'Alter field name c_attention to attention', '20070507', ''),
(76, '75', 'Alter field name c_name to name', '20070507', ''),
(77, '76', 'Alter field name c_street_address to street_address', '20070507', ''),
(78, '77', 'Alter field name c_street_address2 to street_address2', '20070507', ''),
(79, '78', 'Alter field name c_city to city', '20070507', ''),
(80, '79', 'Alter field name c_state to state', '20070507', ''),
(81, '80', 'Alter field name c_zip_code to zip_code', '20070507', ''),
(82, '81', 'Alter field name c_country to countyr', '20070507', ''),
(83, '82', 'Alter field name c_phone to phone', '20070507', ''),
(84, '83', 'Alter field name c_mobile_phone to mobile_phone', '20070507', ''),
(85, '84', 'Alter field name c_fax to fax', '20070507', ''),
(86, '85', 'Alter field name c_email to email', '20070507', ''),
(87, '86', 'Alter field name c_notes to notes', '20070507', ''),
(88, '87', 'Alter field name c_custom_field1 to custom_field1', '20070507', ''),
(89, '88', 'Alter field name c_custom_field2 to custom_field2', '20070507', ''),
(90, '89', 'Alter field name c_custom_field3 to custom_field3', '20070507', ''),
(91, '90', 'Alter field name c_custom_field4 to custom_field4', '20070507', ''),
(92, '91', 'Alter field name c_enabled to enabled', '20070507', ''),
(93, '92', 'Alter field name inv_id to id', '20070507', ''),
(94, '93', 'Alter field name inv_biller_id to biller_id', '20070507', ''),
(95, '94', 'Alter field name inv_customer_id to customer_id', '20070507', ''),
(96, '95', 'Alter field name inv_type type_id', '20070507', ''),
(97, '96', 'Alter field name inv_preference to preference_id', '20070507', ''),
(98, '97', 'Alter field name inv_date to date', '20070507', ''),
(99, '98', 'Alter field name invoice_custom_field1 to custom_field1', '20070507', ''),
(100, '99', 'Alter field name invoice_custom_field2 to custom_field2', '20070507', ''),
(101, '100', 'Alter field name invoice_custom_field3 to custom_field3', '20070507', ''),
(102, '101', 'Alter field name invoice_custom_field4 to custom_field4', '20070507', ''),
(103, '102', 'Alter field name inv_note to note ', '20070507', ''),
(104, '103', 'Alter field name inv_it_id to id ', '20070507', ''),
(105, '104', 'Alter field name inv_it_invoice_id to invoice_id ', '20070507', ''),
(106, '105', 'Alter field name inv_it_quantity to quantity ', '20070507', ''),
(107, '106', 'Alter field name inv_it_product_id to product_id ', '20070507', ''),
(108, '107', 'Alter field name inv_it_unit_price to unit_price ', '20070507', ''),
(109, '108', 'Alter field name inv_it_tax_id to tax_id  ', '20070507', ''),
(110, '109', 'Alter field name inv_it_tax to tax  ', '20070507', ''),
(111, '110', 'Alter field name inv_it_tax_amount to tax_amount  ', '20070507', ''),
(112, '111', 'Alter field name inv_it_gross_total to gross_total ', '20070507', ''),
(113, '112', 'Alter field name inv_it_description to description ', '20070507', ''),
(114, '113', 'Alter field name inv_it_total to total', '20070507', ''),
(115, '114', 'Add logging table', '20070514', ''),
(116, '115', 'Add logging systempreference', '20070514', ''),
(117, '116', 'System defaults conversion patch - set default biller', '20070507', ''),
(118, '117', 'System defaults conversion patch - set default customer', '20070507', ''),
(119, '118', 'System defaults conversion patch - set default tax', '20070507', ''),
(120, '119', 'System defaults conversion patch - set default invoice preference', '20070507', ''),
(121, '120', 'System defaults conversion patch - set default number of line items', '20070507', ''),
(122, '121', 'System defaults conversion patch - set default invoice template', '20070507', ''),
(123, '122', 'System defaults conversion patch - set default paymemt type', '20070507', '');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_system_defaults`
--

CREATE TABLE `genlu_system_defaults` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(30) NOT NULL,
  `value` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `genlu_system_defaults`
--

INSERT INTO `genlu_system_defaults` (`id`, `name`, `value`) VALUES
(1, 'biller', '4'),
(2, 'customer', '3'),
(3, 'tax', '1'),
(4, 'preference', '1'),
(5, 'line_items', '5'),
(6, 'template', 'default'),
(7, 'payment_type', '1'),
(8, 'language', 'en'),
(9, 'dateformat', 'Y-m-d'),
(10, 'spreadsheet', 'xls'),
(11, 'wordprocessor', 'doc'),
(12, 'pdfscreensize', '800'),
(13, 'pdfpapersize', 'A4'),
(14, 'pdfleftmargin', '15'),
(15, 'pdfrightmargin', '15'),
(16, 'pdftopmargin', '15'),
(17, 'pdfbottommargin', '15'),
(18, 'emailhost', 'localhost'),
(19, 'emailusername', ''),
(20, 'emailpassword', ''),
(21, 'logging', '0');

-- --------------------------------------------------------

--
-- Table structure for table `genlu_tax`
--

CREATE TABLE `genlu_tax` (
  `tax_id` int(11) NOT NULL auto_increment,
  `tax_description` varchar(50) default NULL,
  `tax_percentage` decimal(10,2) default NULL,
  `tax_enabled` varchar(1) NOT NULL default '1',
  PRIMARY KEY  (`tax_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `genlu_tax`
--

INSERT INTO `genlu_tax` (`tax_id`, `tax_description`, `tax_percentage`, `tax_enabled`) VALUES
(3, 'Sales Tax (USA)', 10.00, '1'),
(5, 'No Tax', 0.00, '1');