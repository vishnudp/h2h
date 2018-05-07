INSERT INTO `tg_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES ('f515a061aab463d8bcb1dc76cad98186', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36', 1515253608, '') 
 Execution Time:3.1121778488159

UPDATE `tg_sessions` SET `last_activity` = 1515253608, `user_id` = '', `user_data` = 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"357645\";}' WHERE `session_id` =  'f515a061aab463d8bcb1dc76cad98186' 
 Execution Time:0.21401190757751

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.26701498031616

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f515a061aab463d8bcb1dc76cad98186'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36' 
 Execution Time:0.00099992752075195

UPDATE `tg_sessions` SET `last_activity` = 1515253608, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"230697\";s:8:\"messages\";a:1:{s:5:\"error\";a:1:{i:0;s:53:\"Provided credential does not match! Please try again!\";}}}' WHERE `session_id` =  'f515a061aab463d8bcb1dc76cad98186' 
 Execution Time:0.0019998550415039

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.080004930496216

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

UPDATE `tg_block_ip_list` SET `login_attempt` = 0, `block_ip_list_authentication` = 1, `block_ip_list_time` = 1515253699 WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.27701592445374

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0

UPDATE `tg_sessions` SET `last_activity` = 1515253608, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"230697\";s:8:\"messages\";a:0:{}}' WHERE `session_id` =  'f515a061aab463d8bcb1dc76cad98186' 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f515a061aab463d8bcb1dc76cad98186'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36' 
 Execution Time:0.00099992752075195

DELETE FROM `tg_sessions`
WHERE `last_activity` < 1515246515 
 Execution Time:0.00099992752075195

SELECT `artist_category_id`
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0
AND `artist_category_is_active` =  1 
 Execution Time:0.67203879356384

SELECT `user_id`
FROM (`tg_users`)
WHERE `is_deleted` =  0
AND `is_active` =  1 
 Execution Time:0.00099992752075195

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010001659393311

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
 Execution Time:0.0010001659393311

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.41802406311035

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
 Execution Time:0.002000093460083

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
 Execution Time:0.0010008811950684

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
 Execution Time:0.0020010471343994

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
 Execution Time:0.00099992752075195

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

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f515a061aab463d8bcb1dc76cad98186'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36' 
 Execution Time:0.0019998550415039

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
 Execution Time:0.0019998550415039

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00099992752075195

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
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0010011196136475

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
 Execution Time:0.0020010471343994

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
 Execution Time:0.002000093460083

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.029001951217651

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
 Execution Time:0.00099992752075195

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0010001659393311

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'f515a061aab463d8bcb1dc76cad98186'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36' 
 Execution Time:0.033001184463501

UPDATE `tg_sessions` SET `last_activity` = 1515255773, `session_id` = 'c1355ade462058276b22f15c3ad426a9', `user_id` = '' WHERE session_id = 'f515a061aab463d8bcb1dc76cad98186' 
 Execution Time:0.00099992752075195

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
 Execution Time:0

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '68'
AND `role_id` =  '1' 
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
 Execution Time:0.0010011196136475

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
 Execution Time:0

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00099992752075195

