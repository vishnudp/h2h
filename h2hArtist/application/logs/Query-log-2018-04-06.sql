INSERT INTO `tg_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES ('27b86ecf98b6e263f83d09853ac52a53', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 1522988738, '') 
 Execution Time:0.20801210403442

UPDATE `tg_sessions` SET `last_activity` = 1522988738, `user_id` = '', `user_data` = 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"243678\";}' WHERE `session_id` =  '27b86ecf98b6e263f83d09853ac52a53' 
 Execution Time:0.39902305603027

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.46702599525452

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '27b86ecf98b6e263f83d09853ac52a53'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

DELETE FROM `tg_sessions`
WHERE `last_activity` < 1522981556 
 Execution Time:0.00099992752075195

SELECT `artist_category_id`
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0
AND `artist_category_is_active` =  1 
 Execution Time:0.084004878997803

SELECT `user_id`
FROM (`tg_users`)
WHERE `is_deleted` =  0
AND `is_active` =  1 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.11300611495972

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.17600989341736

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.002000093460083

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '27b86ecf98b6e263f83d09853ac52a53'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `session_id` = '46da7a13d6238e94f4349b605f88549a', `user_id` = '' WHERE session_id = '27b86ecf98b6e263f83d09853ac52a53' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '44'
AND `role_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `tg_slider_posts`.*
FROM (`tg_slider_posts`)
WHERE `post_is_deleted` =  0 
 Execution Time:0.071003913879395

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010011196136475

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:33:\"Slider Post deleted successfully.\";s:17:\"flash:old:message\";s:33:\"Slider Post deleted successfully.\";}' WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:33:\"Slider Post deleted successfully.\";}' WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.0010001659393311

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '10' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '44'
AND `role_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `tg_slider_posts`.*
FROM (`tg_slider_posts`)
WHERE `post_is_deleted` =  0 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.0010001659393311

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '45'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:31:\"Slider Post Added Successfully.\";s:17:\"flash:old:message\";s:31:\"Slider Post Added Successfully.\";}' WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0.0010001659393311

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:31:\"Slider Post Added Successfully.\";}' WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '10' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '44'
AND `role_id` =  '1' 
 Execution Time:0

SELECT `tg_slider_posts`.*
FROM (`tg_slider_posts`)
WHERE `post_is_deleted` =  0 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '10' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '45'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.024002075195312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:31:\"Slider Post Added Successfully.\";s:17:\"flash:old:message\";s:31:\"Slider Post Added Successfully.\";}' WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522989093, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:31:\"Slider Post Added Successfully.\";}' WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '10' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '44'
AND `role_id` =  '1' 
 Execution Time:0

SELECT `tg_slider_posts`.*
FROM (`tg_slider_posts`)
WHERE `post_is_deleted` =  0 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '46da7a13d6238e94f4349b605f88549a'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.051003217697144

UPDATE `tg_sessions` SET `last_activity` = 1522992798, `session_id` = 'a6a25f763ec29b48c7e36a86e145b548', `user_id` = '' WHERE session_id = '46da7a13d6238e94f4349b605f88549a' 
 Execution Time:0.1080060005188

UPDATE `tg_sessions` SET `last_activity` = 1522992798, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  'a6a25f763ec29b48c7e36a86e145b548' 
 Execution Time:0.017000913619995

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.033002138137817

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '10' 
 Execution Time:0.049003124237061

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '44'
AND `role_id` =  '1' 
 Execution Time:0.028001070022583

SELECT `tg_slider_posts`.*
FROM (`tg_slider_posts`)
WHERE `post_is_deleted` =  0 
 Execution Time:0.0020008087158203

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.055002927780151

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.086004972457886

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0020010471343994

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.025002002716064

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'a6a25f763ec29b48c7e36a86e145b548'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522994210, `session_id` = '974029e51e1a3d9ecd80f2753e010b07', `user_id` = '' WHERE session_id = 'a6a25f763ec29b48c7e36a86e145b548' 
 Execution Time:0.0010001659393311

DELETE FROM `tg_sessions`
WHERE `last_activity` < 1522987010 
 Execution Time:0.027002096176147

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010011196136475

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '974029e51e1a3d9ecd80f2753e010b07'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522995305, `session_id` = 'bcad1282e8fe5300050a93cb6a56c2e6', `user_id` = '' WHERE session_id = '974029e51e1a3d9ecd80f2753e010b07' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010008811950684

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'bcad1282e8fe5300050a93cb6a56c2e6'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522995305, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  'bcad1282e8fe5300050a93cb6a56c2e6' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522995305, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  'bcad1282e8fe5300050a93cb6a56c2e6' 
 Execution Time:0

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010008811950684

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'bcad1282e8fe5300050a93cb6a56c2e6'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.038002014160156

UPDATE `tg_sessions` SET `last_activity` = 1522995305, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  'bcad1282e8fe5300050a93cb6a56c2e6' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.0010001659393311

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.062002897262573

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'bcad1282e8fe5300050a93cb6a56c2e6'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `session_id` = '1845bc7064d6989f79ee9dde34bea901', `user_id` = '' WHERE session_id = 'bcad1282e8fe5300050a93cb6a56c2e6' 
 Execution Time:0.0010001659393311

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0.0010001659393311

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:24:\"Page Added Successfully.\";s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0.0010001659393311

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010011196136475

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:24:\"Page Added Successfully.\";s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0010001659393311

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:24:\"Page Added Successfully.\";s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.0010001659393311

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

DELETE FROM `tg_sessions`
WHERE `last_activity` < 1522990397 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010011196136475

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.0010001659393311

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:24:\"Page Added Successfully.\";s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522997411, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '1845bc7064d6989f79ee9dde34bea901'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `session_id` = 'f3e9b549bae717f7582ca2dc68b0e6e8', `user_id` = '' WHERE session_id = '1845bc7064d6989f79ee9dde34bea901' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0.0010001659393311

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:24:\"Page Added Successfully.\";s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0.0010001659393311

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0010001659393311

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `page_title` =  'Help'
AND `is_deleted` =  0 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `page_title` =  'Help'
AND `is_deleted` =  0 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010008811950684

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.0010001659393311

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0010011196136475

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_static_pages`)
WHERE `page_title` =  'Help'
AND `is_deleted` =  0 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010011196136475

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `page_title` =  'Help'
AND `is_deleted` =  0 
 Execution Time:0.0010011196136475

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:24:\"Page Added Successfully.\";s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:24:\"Page Added Successfully.\";}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0.0010001659393311

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00099992752075195

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.0010008811950684

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '7' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1522998358, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1521863339\";s:11:\"login_count\";s:3:\"771\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1522988756;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'f3e9b549bae717f7582ca2dc68b0e6e8' 
 Execution Time:0

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00099992752075195

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0010008811950684

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0010001659393311

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

