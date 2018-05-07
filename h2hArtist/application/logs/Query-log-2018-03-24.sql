INSERT INTO `tg_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES ('6b374a8d48aa2bebb3e2cbd435e118d5', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36', 1521863321, '') 
 Execution Time:0.1900110244751

UPDATE `tg_sessions` SET `last_activity` = 1521863321, `user_id` = '', `user_data` = 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"223029\";}' WHERE `session_id` =  '6b374a8d48aa2bebb3e2cbd435e118d5' 
 Execution Time:0.071004152297974

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.070003986358643

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
FROM (`tg_sessions`)
WHERE `session_id` =  '6b374a8d48aa2bebb3e2cbd435e118d5'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 Safari/537.36' 
 Execution Time:0.00099992752075195

SELECT `artist_category_id`
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0
AND `artist_category_is_active` =  1 
 Execution Time:0.062003135681152

SELECT `user_id`
FROM (`tg_users`)
WHERE `is_deleted` =  0
AND `is_active` =  1 
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
 Execution Time:0.079004049301147

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
 Execution Time:0.0010008811950684

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
 Execution Time:0.00099992752075195

