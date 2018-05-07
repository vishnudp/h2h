INSERT INTO `tg_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES ('8348f8f9989f8e1631818f2e195438ef', '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36', 1525688976, '') 
 Execution Time:0.00077199935913086

UPDATE `tg_sessions` SET `last_activity` = 1525688976, `user_id` = '', `user_data` = 'a:2:{s:9:\"user_data\";s:0:\"\";s:11:\"captchaWord\";s:6:\"170114\";}' WHERE `session_id` =  '8348f8f9989f8e1631818f2e195438ef' 
 Execution Time:0.00063109397888184

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00048089027404785

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00046300888061523

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029087066650391

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027298927307129

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '8348f8f9989f8e1631818f2e195438ef'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00059413909912109

SELECT `artist_category_id`
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0
AND `artist_category_is_active` =  1 
 Execution Time:0.00041294097900391

SELECT `user_id`
FROM (`tg_users`)
WHERE `is_deleted` =  0
AND `is_active` =  1 
 Execution Time:0.00025486946105957

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00045394897460938

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00028800964355469

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022196769714355

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019311904907227

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00085711479187012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00032687187194824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00032591819763184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00024294853210449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00031900405883789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00033187866210938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025701522827148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00021815299987793

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00020623207092285

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00021696090698242

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00070309638977051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00036406517028809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00032591819763184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00028610229492188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00034093856811523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00023412704467773

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00024509429931641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024914741516113

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00030303001403809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00024104118347168

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '8348f8f9989f8e1631818f2e195438ef'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00073885917663574

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00041103363037109

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00033998489379883

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00030899047851562

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00019097328186035

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00072598457336426

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036787986755371

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018191337585449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00017690658569336

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018692016601562

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00082707405090332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00034880638122559

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027799606323242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00024294853210449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00027918815612793

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00024509429931641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00031399726867676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024509429931641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00030803680419922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0002288818359375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023818016052246

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00092387199401855

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00056219100952148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00056695938110352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00069308280944824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00039505958557129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0003960132598877

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00037407875061035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00030398368835449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00046396255493164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00034999847412109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00037813186645508

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '8348f8f9989f8e1631818f2e195438ef'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00051093101501465

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `session_id` = '772693769f91011447db25c92e82a556', `user_id` = '' WHERE session_id = '8348f8f9989f8e1631818f2e195438ef' 
 Execution Time:0.00061511993408203

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00044512748718262

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00029897689819336

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '10' 
 Execution Time:0.00026106834411621

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '44'
AND `role_id` =  '1' 
 Execution Time:0.0002601146697998

SELECT `tg_slider_posts`.*
FROM (`tg_slider_posts`)
WHERE `post_is_deleted` =  0 
 Execution Time:0.00057387351989746

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0004119873046875

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022506713867188

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019407272338867

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022101402282715

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00092291831970215

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00048017501831055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00034785270690918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00038909912109375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00038385391235352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00042080879211426

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00043916702270508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00045490264892578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00049996376037598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00055909156799316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00057601928710938

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00082993507385254

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00048613548278809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00035595893859863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0002288818359375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025701522827148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00022482872009277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00039505958557129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00052595138549805

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00036096572875977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00039315223693848

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00074195861816406

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00045490264892578

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00047612190246582

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00049185752868652

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00038599967956543

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.0010080337524414

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00047206878662109

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00032401084899902

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00037193298339844

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039291381835938

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00093293190002441

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00062203407287598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00046992301940918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00041103363037109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00040197372436523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0004279613494873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00046992301940918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0006248950958252

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00057291984558105

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00063109397888184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00043797492980957

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00098896026611328

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00053501129150391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00040793418884277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00048089027404785

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00052499771118164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00050997734069824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00050997734069824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00051689147949219

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00050902366638184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00050783157348633

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00054097175598145

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00042200088500977

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00043511390686035

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00031900405883789

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '8' 
 Execution Time:0.00026416778564453

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '29'
AND `role_id` =  '1' 
 Execution Time:0.00025105476379395

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_id`  =  '1' 
 Execution Time:0.00066685676574707

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034713745117188

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027608871459961

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021600723266602

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021600723266602

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00064992904663086

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0002591609954834

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027894973754883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00029206275939941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00024008750915527

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00024580955505371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00024986267089844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022697448730469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022101402282715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00020480155944824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00021195411682129

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00064992904663086

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00025796890258789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00028586387634277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00040197372436523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0004570484161377

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00034308433532715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00030517578125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00026798248291016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002281665802002

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00026488304138184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023794174194336

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00053095817565918

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:37:\"Artist Category Updated Successfully.\";s:17:\"flash:old:message\";s:37:\"Artist Category Updated Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00061202049255371

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:37:\"Artist Category Updated Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00058507919311523

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00047397613525391

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00042295455932617

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00036096572875977

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00033092498779297

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00076985359191895

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00046992301940918

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00045204162597656

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042009353637695

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034713745117188

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00093388557434082

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00055599212646484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00048112869262695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00035595893859863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00035691261291504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00039386749267578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00042104721069336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00047111511230469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00044608116149902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003659725189209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00046396255493164

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00075793266296387

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00045394897460938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00051498413085938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00042104721069336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00039100646972656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00044488906860352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00043487548828125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00038599967956543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00046706199645996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00032687187194824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00036311149597168

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00051093101501465

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00055313110351562

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00033712387084961

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00035500526428223

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '8' 
 Execution Time:0.0002739429473877

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '28'
AND `role_id` =  '1' 
 Execution Time:0.00021791458129883

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00069308280944824

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00020098686218262

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00023198127746582

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021696090698242

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0008089542388916

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003209114074707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027084350585938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0002589225769043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026702880859375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00027799606323242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00026106834411621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00042605400085449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00046706199645996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00034809112548828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00024199485778809

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00080084800720215

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003199577331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027298927307129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00023603439331055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00021600723266602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00031685829162598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00037598609924316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00032305717468262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00027608871459961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00031495094299316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0003211498260498

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00053095817565918

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:35:\"Artist Category Added Successfully.\";s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00058913230895996

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00037503242492676

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00045394897460938

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00041794776916504

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00031495094299316

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00027799606323242

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.0006258487701416

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00045895576477051

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030899047851562

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00028300285339355

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00024795532226562

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00092911720275879

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00056314468383789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00051212310791016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00045895576477051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00042605400085449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00031185150146484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00027203559875488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00026607513427734

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00036716461181641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00041484832763672

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00028014183044434

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00086498260498047

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00055885314941406

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00056195259094238

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0004880428314209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00040483474731445

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028300285339355

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00027990341186523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00023198127746582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00024986267089844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00040006637573242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00042819976806641

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00058794021606445

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00055599212646484

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00045919418334961

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.0003359317779541

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '8' 
 Execution Time:0.0002439022064209

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '29'
AND `role_id` =  '1' 
 Execution Time:0.00020194053649902

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_id`  =  '2' 
 Execution Time:0.00072598457336426

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00051188468933105

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029921531677246

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030112266540527

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025486946105957

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00091695785522461

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00050592422485352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00041699409484863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00035595893859863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026416778564453

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00025582313537598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00024604797363281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022387504577637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00024080276489258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0002892017364502

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00027298927307129

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00088191032409668

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00037693977355957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00035285949707031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0003502368927002

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0004429817199707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00049304962158203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00040912628173828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0003969669342041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00047397613525391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00033712387084961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00043892860412598

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00049114227294922

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:37:\"Artist Category Updated Successfully.\";s:17:\"flash:old:message\";s:37:\"Artist Category Updated Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00060200691223145

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:37:\"Artist Category Updated Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.0005490779876709

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00038695335388184

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00041007995605469

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00030088424682617

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.0003201961517334

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00084900856018066

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00044894218444824

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039196014404297

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0004570484161377

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029110908508301

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00072693824768066

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00026798248291016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00020194053649902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00022578239440918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00021195411682129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00023722648620605

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00030803680419922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002892017364502

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00028681755065918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00037693977355957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00059795379638672

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00083303451538086

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00066089630126953

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00039482116699219

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00025486946105957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00049114227294922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00035309791564941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00021791458129883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024700164794922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00026988983154297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00026702880859375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00030207633972168

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0004730224609375

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00066018104553223

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00045585632324219

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00040793418884277

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '8' 
 Execution Time:0.00024986267089844

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '29'
AND `role_id` =  '1' 
 Execution Time:0.00020790100097656

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_id`  =  '2' 
 Execution Time:0.00073790550231934

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00049495697021484

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036501884460449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003349781036377

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029492378234863

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00064992904663086

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00032186508178711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00044083595275879

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00031208992004395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00035810470581055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00030803680419922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00035810470581055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00039100646972656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00035595893859863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00029301643371582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023102760314941

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00090789794921875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00042605400085449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00058889389038086

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00031185150146484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026798248291016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00034904479980469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00032496452331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00029516220092773

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00039792060852051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035881996154785

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00037717819213867

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00051093101501465

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:37:\"Artist Category Updated Successfully.\";s:17:\"flash:old:message\";s:37:\"Artist Category Updated Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00056791305541992

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:37:\"Artist Category Updated Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.0004580020904541

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00038409233093262

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00051093101501465

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00024509429931641

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.0002140998840332

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00083184242248535

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00069403648376465

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022006034851074

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00017595291137695

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00017690658569336

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00064682960510254

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00049686431884766

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00065994262695312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00039100646972656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00035810470581055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00033807754516602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0002291202545166

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00028610229492188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00039577484130859

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00031709671020508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00028014183044434

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00084900856018066

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003352165222168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00021100044250488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00021004676818848

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026798248291016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00056600570678711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00035405158996582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00049090385437012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00048398971557617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035500526428223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00044798851013184

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00042200088500977

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00037193298339844

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.0003819465637207

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.0003669261932373

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '8' 
 Execution Time:0.00027298927307129

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '28'
AND `role_id` =  '1' 
 Execution Time:0.00022697448730469

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00079584121704102

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022196769714355

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019478797912598

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019001960754395

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00092291831970215

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00049495697021484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00023293495178223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00020217895507812

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00022220611572266

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023293495178223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00028705596923828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00045490264892578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00048494338989258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00050616264343262

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00069713592529297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00052905082702637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00054001808166504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0004270076751709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00024795532226562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00023198127746582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00022006034851074

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002288818359375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00028204917907715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035905838012695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00027704238891602

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00048089027404785

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:35:\"Artist Category Added Successfully.\";s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00043606758117676

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00048995018005371

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00046610832214355

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00036096572875977

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00040578842163086

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00036883354187012

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00084614753723145

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00049519538879395

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029087066650391

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00020718574523926

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00017714500427246

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00071501731872559

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00053215026855469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0005500316619873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00056099891662598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026679039001465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00020003318786621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00020813941955566

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00041794776916504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00068306922912598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00038599967956543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00050902366638184

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00069117546081543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0004279613494873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0004279613494873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00050902366638184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00040292739868164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00034093856811523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002751350402832

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00038409233093262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035786628723145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00052499771118164

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00043082237243652

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00047898292541504

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00035810470581055

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.0003509521484375

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '8' 
 Execution Time:0.0003199577331543

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '28'
AND `role_id` =  '1' 
 Execution Time:0.00033092498779297

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00080108642578125

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00023221969604492

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018405914306641

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0001680850982666

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00067687034606934

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00045394897460938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00036191940307617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00039815902709961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00023508071899414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00023293495178223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002751350402832

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00037193298339844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00026893615722656

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00063705444335938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00046682357788086

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00044608116149902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0005030632019043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00042986869812012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022721290588379

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00030994415283203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00052404403686523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00052404403686523

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00050687789916992

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:35:\"Artist Category Added Successfully.\";s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00056886672973633

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00041699409484863

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00048685073852539

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00041389465332031

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00030612945556641

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00036096572875977

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.0010290145874023

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00045990943908691

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034308433532715

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00035190582275391

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029516220092773

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00086688995361328

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00043797492980957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00051403045654297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00053095817565918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00050187110900879

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00037598609924316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00035381317138672

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00046300888061523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0003809928894043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00038504600524902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0003349781036377

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0008080005645752

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00043797492980957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00041699409484863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00050592422485352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00051188468933105

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00042104721069336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00038909912109375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00028800964355469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00028705596923828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00027704238891602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00028800964355469

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00042486190795898

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00062704086303711

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00048112869262695

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.0003509521484375

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '8' 
 Execution Time:0.00030303001403809

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '28'
AND `role_id` =  '1' 
 Execution Time:0.00018501281738281

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00074195861816406

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027608871459961

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003058910369873

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025296211242676

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00060892105102539

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00046300888061523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00045514106750488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00053095817565918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00050902366638184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00061702728271484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00031399726867676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00020909309387207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00019693374633789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00021505355834961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00028014183044434

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00077295303344727

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00037693977355957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.000244140625

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00033688545227051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00038290023803711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00051188468933105

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00032305717468262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002291202545166

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00023913383483887

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00025296211242676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00044703483581543

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0004270076751709

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:35:\"Artist Category Added Successfully.\";s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00052189826965332

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00045990943908691

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00037097930908203

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00028586387634277

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00021696090698242

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00020408630371094

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00071501731872559

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036787986755371

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018000602722168

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00017881393432617

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00017213821411133

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00082015991210938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00042200088500977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00055885314941406

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00034904479980469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00021696090698242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00022792816162109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00037407875061035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00046920776367188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00036191940307617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035810470581055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00037693977355957

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00096297264099121

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0004432201385498

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00038504600524902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00027012825012207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00037503242492676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00051403045654297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00029897689819336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024199485778809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0003209114074707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00045108795166016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00048398971557617

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00056695938110352

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00048112869262695

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00042605400085449

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00043296813964844

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '8' 
 Execution Time:0.00036406517028809

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '28'
AND `role_id` =  '1' 
 Execution Time:0.00028681755065918

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00088310241699219

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042581558227539

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042200088500977

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00044918060302734

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00058293342590332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00026893615722656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0004270076751709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0004270076751709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00051617622375488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00038599967956543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00024986267089844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00023007392883301

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002291202545166

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00029611587524414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00034499168395996

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00090885162353516

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00031399726867676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00044703483581543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00043106079101562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00048303604125977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00044488906860352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0004279613494873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00031590461730957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002589225769043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00040388107299805

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00048494338989258

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00058102607727051

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:35:\"Artist Category Added Successfully.\";s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00069618225097656

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00035595893859863

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00039505958557129

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00040006637573242

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00020909309387207

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00016498565673828

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00054693222045898

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036120414733887

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034904479980469

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027108192443848

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00020909309387207

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0006561279296875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00025701522827148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00042200088500977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00041794776916504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00048398971557617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00042390823364258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00042295455932617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00050115585327148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0005490779876709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00056290626525879

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00052309036254883

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00089716911315918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00039100646972656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00054001808166504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00048112869262695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00042486190795898

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00049710273742676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00049400329589844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00051498413085938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00049781799316406

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00052595138549805

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00051999092102051

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0004580020904541

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00043892860412598

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00038981437683105

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00035214424133301

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '8' 
 Execution Time:0.00029897689819336

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '28'
AND `role_id` =  '1' 
 Execution Time:0.00028014183044434

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00081396102905273

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027298927307129

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0002448558807373

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00023818016052246

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00072979927062988

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00029993057250977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027704238891602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0002751350402832

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00029492378234863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00033283233642578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00037288665771484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00041985511779785

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00043511390686035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00049591064453125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00046396255493164

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00078392028808594

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00030994415283203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00030303001403809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0003809928894043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00029206275939941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028491020202637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00031208992004395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002899169921875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002748966217041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003058910369873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00048995018005371

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00044703483581543

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:35:\"Artist Category Added Successfully.\";s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00050115585327148

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00036501884460449

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00036716461181641

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00028491020202637

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.0002131462097168

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00019097328186035

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00084018707275391

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.000579833984375

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00046491622924805

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00043702125549316

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022983551025391

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00068902969360352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00028085708618164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027084350585938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00022411346435547

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00035905838012695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00032401084899902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00024795532226562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024700164794922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00025510787963867

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00023508071899414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023388862609863

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0009760856628418

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003359317779541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00024795532226562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026583671569824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00023508071899414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0003511905670166

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00043392181396484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00028514862060547

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0002439022064209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00032806396484375

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00051712989807129

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00045490264892578

DELETE FROM `tg_sessions`
WHERE `last_activity` < 1525682676 
 Execution Time:0.00038695335388184

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00045299530029297

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00034785270690918

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '8' 
 Execution Time:0.00023698806762695

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '28'
AND `role_id` =  '1' 
 Execution Time:0.00021195411682129

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0010221004486084

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00046014785766602

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042605400085449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00041985511779785

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00081300735473633

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00041604042053223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00043201446533203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0004580020904541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00033307075500488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028800964355469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00037789344787598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00048995018005371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00039196014404297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00040698051452637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0004119873046875

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00081610679626465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00043511390686035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00046086311340332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00041103363037109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00030088424682617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0003211498260498

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00038981437683105

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00034308433532715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0003809928894043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00044488906860352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00039482116699219

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00047206878662109

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:35:\"Artist Category Added Successfully.\";s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00051283836364746

UPDATE `tg_sessions` SET `last_activity` = 1525689627, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:35:\"Artist Category Added Successfully.\";}' WHERE `session_id` =  '772693769f91011447db25c92e82a556' 
 Execution Time:0.00034499168395996

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00040078163146973

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'artistcategory' 
 Execution Time:0.00037193298339844

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '8' 
 Execution Time:0.00023293495178223

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '8'
AND `action_id` =  '27'
AND `role_id` =  '1' 
 Execution Time:0.00025081634521484

SELECT *
FROM (`tg_artist_category`)
WHERE `artist_category_is_deleted` =  0 
 Execution Time:0.00087308883666992

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042891502380371

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026512145996094

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00023317337036133

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019001960754395

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00062417984008789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00030398368835449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00026798248291016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0002751350402832

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00029206275939941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00037097930908203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00046706199645996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0003209114074707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00027298927307129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00025296211242676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00021719932556152

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00081014633178711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00030612945556641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0002589225769043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00027298927307129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00024795532226562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00023913383483887

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00022697448730469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00033092498779297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00036406517028809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00032305717468262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00024890899658203

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '772693769f91011447db25c92e82a556'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00059294700622559

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `session_id` = '05cb24e2288eedba2f12c6b163380de7', `user_id` = '' WHERE session_id = '772693769f91011447db25c92e82a556' 
 Execution Time:0.00057196617126465

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00037288665771484

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00045895576477051

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00040483474731445

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00023913383483887

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00028085708618164

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029301643371582

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00090694427490234

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00057697296142578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00032305717468262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00030517578125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025582313537598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00024604797363281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025010108947754

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00043487548828125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00050210952758789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00047588348388672

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00049591064453125

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00072693824768066

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003509521484375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027894973754883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0003058910369873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026488304138184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0002589225769043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023698806762695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022292137145996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00023412704467773

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00041317939758301

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00038385391235352

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00055193901062012

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_id` =  '1' 
 Execution Time:0.00037980079650879

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00050210952758789

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00048494338989258

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030398368835449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025796890258789

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00093293190002441

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00045180320739746

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00042414665222168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00047707557678223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00038313865661621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0003349781036377

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00029683113098145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0003809928894043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00035691261291504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00049805641174316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00035500526428223

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00062990188598633

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00022387504577637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00023794174194336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00037908554077148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026202201843262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00029706954956055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0002601146697998

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00025296211242676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00032496452331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00022101402282715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00039410591125488

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00043988227844238

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:29:\"Sponsor updated successfully.\";s:17:\"flash:old:message\";s:29:\"Sponsor updated successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00060701370239258

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:29:\"Sponsor updated successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00059700012207031

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00045490264892578

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036811828613281

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018191337585449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030112266540527

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003359317779541

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00081419944763184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00048112869262695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0004889965057373

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00052499771118164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00044012069702148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00047993659973145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00063300132751465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0005497932434082

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00044894218444824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00024199485778809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00022697448730469

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00071096420288086

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00025296211242676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00020289421081543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00032281875610352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00027179718017578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00029706954956055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002739429473877

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00032305717468262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035595893859863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023913383483887

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00040197372436523

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00058078765869141

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_id` =  '2' 
 Execution Time:0.00077605247497559

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00045609474182129

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026607513427734

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00020718574523926

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018095970153809

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00070714950561523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00044488906860352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003199577331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00026607513427734

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025510787963867

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0002448558807373

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023293495178223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00033903121948242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00037598609924316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00036287307739258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00030207633972168

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00082707405090332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00041007995605469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003049373626709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00026988983154297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00037193298339844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00027585029602051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00048208236694336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00046896934509277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00045609474182129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00050711631774902

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00050997734069824

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00057315826416016

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00047802925109863

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030112266540527

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027298927307129

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022697448730469

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00085210800170898

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00044989585876465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00048613548278809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00044918060302734

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00029611587524414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028109550476074

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025296211242676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024580955505371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00030398368835449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003669261932373

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00052595138549805

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00096297264099121

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00048494338989258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00051999092102051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00044608116149902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0003209114074707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00034713745117188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00035500526428223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00028204917907715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00046014785766602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00037407875061035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00040388107299805

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00047492980957031

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_id` =  '1' 
 Execution Time:0.00038003921508789

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0004279613494873

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025296211242676

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00046706199645996

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034308433532715

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00065493583679199

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00056600570678711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00044989585876465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00048303604125977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00051403045654297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00046706199645996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0005500316619873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022506713867188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00021600723266602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00029706954956055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00046896934509277

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00065183639526367

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00038695335388184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00047898292541504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00053095817565918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00043296813964844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00030899047851562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00032901763916016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022411346435547

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00020980834960938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00037407875061035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00053787231445312

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00042200088500977

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:29:\"Sponsor updated successfully.\";s:17:\"flash:old:message\";s:29:\"Sponsor updated successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00043511390686035

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:29:\"Sponsor updated successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00036907196044922

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00039505958557129

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00048708915710449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00032496452331543

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00040698051452637

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034093856811523

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00061702728271484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00038504600524902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003209114074707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00032901763916016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00034999847412109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00032496452331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00045394897460938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002751350402832

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00024008750915527

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00022792816162109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00027203559875488

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00095701217651367

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0004730224609375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00045299530029297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00044107437133789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00052285194396973

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00041007995605469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00054001808166504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00050997734069824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0003349781036377

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035619735717773

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00050210952758789

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00048208236694336

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00049591064453125

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_id` =  '2' 
 Execution Time:0.00045299530029297

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0005800724029541

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00040292739868164

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00050497055053711

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003199577331543

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00080704689025879

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00034594535827637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003969669342041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00033187866210938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00027799606323242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0002129077911377

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00021100044250488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00020408630371094

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00031495094299316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00025701522827148

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0010359287261963

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00045108795166016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00052809715270996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00052499771118164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0005028247833252

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00053000450134277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00049400329589844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00030517578125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00026512145996094

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00031208992004395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00037789344787598

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00046586990356445

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:29:\"Sponsor updated successfully.\";s:17:\"flash:old:message\";s:29:\"Sponsor updated successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00038504600524902

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:29:\"Sponsor updated successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00034189224243164

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00040984153747559

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00058197975158691

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036501884460449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00028896331787109

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00033402442932129

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00099301338195801

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00050902366638184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00051212310791016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00053310394287109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0004420280456543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00044512748718262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0005190372467041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00049400329589844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0004880428314209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00047898292541504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00034809112548828

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00084495544433594

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00045490264892578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00048112869262695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00049519538879395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00043320655822754

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00032305717468262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00030779838562012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00024676322937012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00045990943908691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00041389465332031

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00044393539428711

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.0005500316619873

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00049877166748047

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034999847412109

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029492378234863

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026392936706543

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00083494186401367

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00044798851013184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00041890144348145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0003201961517334

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00028491020202637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00034213066101074

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00033688545227051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00028610229492188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00026607513427734

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00043296813964844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00043702125549316

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00067305564880371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00040197372436523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00031208992004395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00032806396484375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0003058910369873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00045108795166016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00055789947509766

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00039887428283691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00029778480529785

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00025486946105957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00021791458129883

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00040602684020996

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00042390823364258

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00037789344787598

DELETE FROM `tg_sessions`
WHERE `last_activity` < 1525683030 
 Execution Time:0.00023102760314941

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00050497055053711

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00043082237243652

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00052189826965332

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00053596496582031

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00070905685424805

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00088715553283691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003960132598877

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00043702125549316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00042605400085449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00047397613525391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00047898292541504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00048208236694336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00058698654174805

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00046300888061523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003659725189209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00053286552429199

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00083804130554199

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003058910369873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00047492980957031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00040888786315918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00055098533630371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00057101249694824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00050592422485352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00037193298339844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00047492980957031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00054311752319336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00034403800964355

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0004730224609375

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.0004270076751709

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00048685073852539

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036001205444336

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036001205444336

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026392936706543

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0006711483001709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003058910369873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00032496452331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00048995018005371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0003509521484375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00047492980957031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0004878044128418

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0003809928894043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022792816162109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00026702880859375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00021195411682129

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00085115432739258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0004270076751709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00042390823364258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00043892860412598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00046896934509277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00046205520629883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00037312507629395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00028014183044434

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002589225769043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00031900405883789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0005030632019043

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00047087669372559

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00055193901062012

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00035285949707031

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00048089027404785

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042104721069336

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00024700164794922

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019598007202148

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018882751464844

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00067710876464844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00035786628723145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003199577331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00024700164794922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025296211242676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00039291381835938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00061416625976562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00047683715820312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00049591064453125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00050997734069824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00049185752868652

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00075793266296387

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00032496452331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00033402442932129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0002291202545166

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025081634521484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00051093101501465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00055289268493652

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0004119873046875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00050997734069824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00046586990356445

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0002899169921875

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00042414665222168

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00036811828613281

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00048685073852539

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00032496452331543

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030899047851562

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034499168395996

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00090384483337402

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00051403045654297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0005190372467041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00041794776916504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00034618377685547

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0003049373626709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00025081634521484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022792816162109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00023198127746582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00026392936706543

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00092291831970215

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00032711029052734

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00043201446533203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00049495697021484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00049805641174316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00044107437133789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00045609474182129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00046205520629883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00048398971557617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00048589706420898

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00052094459533691

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00051212310791016

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00055789947509766

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00029993057250977

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00048303604125977

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00043487548828125

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026798248291016

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021600723266602

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030016899108887

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0006871223449707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00035619735717773

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00030612945556641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00049901008605957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00064206123352051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0004730224609375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00035715103149414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00036096572875977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00028109550476074

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00046801567077637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00054097175598145

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00060200691223145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00024294853210449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00022506713867188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00039315223693848

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00033402442932129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00041699409484863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00032496452331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022292137145996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00026822090148926

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00037288665771484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00048995018005371

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00045180320739746

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00056600570678711

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00047492980957031

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039386749267578

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00035500526428223

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00035500526428223

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00075602531433105

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00032901763916016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00036907196044922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0004119873046875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00070810317993164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00056815147399902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00047588348388672

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00053977966308594

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00048518180847168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00044608116149902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00037813186645508

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00078296661376953

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00039196014404297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00048708915710449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00041484832763672

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0005650520324707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00055909156799316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00052499771118164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0005180835723877

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00045013427734375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00044608116149902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0004420280456543

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00044703483581543

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00048184394836426

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00030422210693359

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00040507316589355

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00047707557678223

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003359317779541

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00031089782714844

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00023508071899414

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00071382522583008

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00035214424133301

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00043606758117676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00029587745666504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025486946105957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00024890899658203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00021982192993164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00033092498779297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00030112266540527

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003058910369873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00035715103149414

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00065708160400391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0002598762512207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003511905670166

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00039887428283691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00038504600524902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00033187866210938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00024676322937012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00033402442932129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.000762939453125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00069379806518555

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00052690505981445

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00052905082702637

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00049805641174316

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00040197372436523

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025486946105957

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00020790100097656

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021696090698242

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00086402893066406

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00043392181396484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00046920776367188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00048279762268066

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00041794776916504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00029087066650391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00034284591674805

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00042414665222168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00043916702270508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00049304962158203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00049614906311035

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00088191032409668

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00045919418334961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00048995018005371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00051689147949219

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00047206878662109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00046491622924805

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0005040168762207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00049901008605957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00053501129150391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00052309036254883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00054502487182617

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00051593780517578

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00046896934509277

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.000244140625

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00044608116149902

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003659725189209

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00023889541625977

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0002291202545166

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019407272338867

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00098609924316406

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00043106079101562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00037813186645508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00045299530029297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00041699409484863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00043702125549316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00028300285339355

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00023889541625977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00030708312988281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00040292739868164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00043511390686035

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00068998336791992

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00039386749267578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00024199485778809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00021195411682129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0002439022064209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00046896934509277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00040006637573242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00047206878662109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003211498260498

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00027012825012207

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00046610832214355

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00052618980407715

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00046801567077637

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0002739429473877

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00024914741516113

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026202201843262

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00094485282897949

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00044608116149902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00043511390686035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00047612190246582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00049805641174316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00048995018005371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00042295455932617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00054502487182617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00054502487182617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00051307678222656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00045585632324219

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0009160041809082

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00050592422485352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00041890144348145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00045299530029297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00036501884460449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00044584274291992

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00054502487182617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00065398216247559

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0005030632019043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00049901008605957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00051093101501465

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00052714347839355

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00047707557678223

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00034999847412109

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00050806999206543

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00065708160400391

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00043392181396484

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00033783912658691

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00045013427734375

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.000701904296875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00028300285339355

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0004730224609375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00046205520629883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00044608116149902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00053191184997559

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00044798851013184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00031399726867676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002598762512207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00030303001403809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00033903121948242

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00071907043457031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00035405158996582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00034594535827637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00042986869812012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00036501884460449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00045394897460938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00045418739318848

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00029611587524414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00041389465332031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00036287307739258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00045490264892578

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00052905082702637

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.0003969669342041

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00043916702270508

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029206275939941

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00032806396484375

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00033903121948242

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00087094306945801

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00046420097351074

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00047802925109863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00056695938110352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0005040168762207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00033688545227051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0002589225769043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00027894973754883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00025010108947754

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003819465637207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00042891502380371

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00075006484985352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00050997734069824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00049805641174316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00051116943359375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00044012069702148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00031280517578125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00055480003356934

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00052809715270996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00031280517578125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00045394897460938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0003199577331543

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00040793418884277

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00044679641723633

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.0004580020904541

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00047802925109863

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0004429817199707

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00032401084899902

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00038290023803711

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039100646972656

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00071287155151367

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00027990341186523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027585029602051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00028014183044434

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00036501884460449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00027894973754883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002288818359375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022983551025391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00022387504577637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00038003921508789

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00072908401489258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00029706954956055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0002739429473877

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00025510787963867

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00030612945556641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00026512145996094

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025510787963867

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00023579597473145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002281665802002

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00025105476379395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023102760314941

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00036311149597168

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00043702125549316

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00048589706420898

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00052404403686523

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00040483474731445

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00032615661621094

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0008242130279541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00036096572875977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00034785270690918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00037312507629395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00032305717468262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00041699409484863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00066900253295898

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00043296813964844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00029611587524414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00023889541625977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00029897689819336

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00081801414489746

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00034499168395996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003509521484375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00029802322387695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00043606758117676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00038409233093262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00042200088500977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00046396255493164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00030899047851562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00023794174194336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00021719932556152

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00050115585327148

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:27:\"Sponsor added successfully.\";s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00059413909912109

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:27:\"Sponsor added successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00048518180847168

SELECT *
FROM (`tg_sponsers`)
WHERE `sponser_is_deleted` =  '0' 
 Execution Time:0.00064802169799805

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003960132598877

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025105476379395

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025701522827148

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0002288818359375

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00074291229248047

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00028705596923828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00030207633972168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00036287307739258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0004417896270752

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0003821849822998

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00028491020202637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022697448730469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00020694732666016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00021100044250488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0002129077911377

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00065207481384277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00034713745117188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003819465637207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00032210350036621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026392936706543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00025701522827148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025320053100586

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00028800964355469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00024294853210449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00030803680419922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00042915344238281

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00046515464782715

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00063419342041016

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00037002563476562

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.0004119873046875

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '10' 
 Execution Time:0.00036907196044922

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '44'
AND `role_id` =  '1' 
 Execution Time:0.00025701522827148

SELECT `tg_slider_posts`.*
FROM (`tg_slider_posts`)
WHERE `post_is_deleted` =  0 
 Execution Time:0.00061511993408203

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00045204162597656

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026488304138184

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030398368835449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003349781036377

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0006098747253418

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00028610229492188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00051403045654297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00058197975158691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00047612190246582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00048303604125977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00031709671020508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024509429931641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00021791458129883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00021004676818848

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00082898139953613

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00047683715820312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00044107437133789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00037097930908203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025606155395508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028395652770996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0003659725189209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00046515464782715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00045299530029297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00052499771118164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00043082237243652

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00046586990356445

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00040197372436523

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00034117698669434

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'add'
AND `controller_id` =  '10' 
 Execution Time:0.00020289421081543

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '45'
AND `role_id` =  '1' 
 Execution Time:0.00022602081298828

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00079989433288574

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00023102760314941

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026512145996094

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021505355834961

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00063204765319824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00029611587524414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00028896331787109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0002281665802002

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0002129077911377

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00020217895507812

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00019383430480957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022602081298828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00022101402282715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00044798851013184

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00058984756469727

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00028014183044434

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00023388862609863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00027298927307129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00021696090698242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028896331787109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00028491020202637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00032186508178711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00028705596923828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00022602081298828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00039219856262207

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00057101249694824

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:31:\"Slider Post Added Successfully.\";s:17:\"flash:old:message\";s:31:\"Slider Post Added Successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00049400329589844

UPDATE `tg_sessions` SET `last_activity` = 1525690129, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:31:\"Slider Post Added Successfully.\";}' WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.00024604797363281

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.0003809928894043

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'slider' 
 Execution Time:0.00034213066101074

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '10' 
 Execution Time:0.00041294097900391

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '10'
AND `action_id` =  '44'
AND `role_id` =  '1' 
 Execution Time:0.00039505958557129

SELECT `tg_slider_posts`.*
FROM (`tg_slider_posts`)
WHERE `post_is_deleted` =  0 
 Execution Time:0.0010190010070801

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00046920776367188

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003209114074707

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00028204917907715

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027799606323242

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00094890594482422

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00053501129150391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00048995018005371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00022792816162109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00022792816162109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00044488906860352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00047516822814941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00061917304992676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00041699409484863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00031781196594238

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0008552074432373

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0005030632019043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0005180835723877

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00041103363037109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00049686431884766

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00053000450134277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00027990341186523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00026893615722656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00047111511230469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0005800724029541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00048303604125977

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  '05cb24e2288eedba2f12c6b163380de7'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0004730224609375

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `session_id` = 'ab47dee2986adf549b7f35571970ad08', `user_id` = '' WHERE session_id = '05cb24e2288eedba2f12c6b163380de7' 
 Execution Time:0.0004119873046875

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00032806396484375

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00037097930908203

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0003199577331543

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00023698806762695

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00020694732666016

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00067901611328125

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00048494338989258

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029802322387695

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034403800964355

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00037097930908203

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0006859302520752

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00033092498779297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00028681755065918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0002598762512207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00024604797363281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00024509429931641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00022792816162109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00020790100097656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00031590461730957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00041103363037109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00042510032653809

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00088000297546387

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00033092498779297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003349781036377

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00028681755065918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025486946105957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00020313262939453

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00019001960754395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00018978118896484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00024199485778809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00033402442932129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00027704238891602

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00046205520629883

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Deleted Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Deleted Successfully.\";}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00046992301940918

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Deleted Successfully.\";}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00035595893859863

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00050997734069824

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00035715103149414

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00027108192443848

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00020790100097656

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00072002410888672

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00066804885864258

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0004420280456543

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042510032653809

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00046396255493164

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0007631778717041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0010690689086914

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00052499771118164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00052189826965332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00046801567077637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00041818618774414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00036311149597168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00029802322387695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00021600723266602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00020384788513184

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00065708160400391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0002589225769043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00029897689819336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0002901554107666

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0004429817199707

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00052905082702637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0004580020904541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0003969669342041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00033712387084961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0002439022064209

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00042295455932617

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00064516067504883

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0003960132598877

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00025796890258789

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.0002131462097168

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00019311904907227

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.00058889389038086

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039792060852051

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00035905838012695

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00033807754516602

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00044608116149902

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00081014633178711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00040483474731445

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027990341186523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00028610229492188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00042104721069336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00027918815612793

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023293495178223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00039196014404297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00039386749267578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00034403800964355

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00044703483581543

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00077295303344727

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00024199485778809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.000244140625

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00027179718017578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00024604797363281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00030517578125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00033283233642578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00030016899108887

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00030612945556641

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0002598762512207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023007392883301

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00039100646972656

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00046110153198242

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00032496452331543

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0003669261932373

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00031304359436035

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.0003669261932373

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00026798248291016

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00085997581481934

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003819465637207

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026392936706543

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00034403800964355

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00033807754516602

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00077009201049805

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00044417381286621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00026893615722656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00026202201843262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025582313537598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00038409233093262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00037097930908203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00030803680419922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00037884712219238

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00046801567077637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00044989585876465

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00088095664978027

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00037097930908203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003199577331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0003199577331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00038695335388184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00045990943908691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00048303604125977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00045299530029297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0003349781036377

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00021910667419434

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00022387504577637

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00044107437133789

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00040698051452637

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00036001205444336

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00049996376037598

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00044012069702148

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.0004119873046875

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.00079011917114258

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00055193901062012

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042414665222168

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00043487548828125

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036406517028809

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00088882446289062

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00051593780517578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00051689147949219

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00038599967956543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00024986267089844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00033688545227051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00031805038452148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00031280517578125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00022411346435547

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00020885467529297

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00059890747070312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00024104118347168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00030303001403809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00032806396484375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00023412704467773

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00037193298339844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0003511905670166

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00027799606323242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00031590461730957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00045990943908691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00032496452331543

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00044584274291992

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00046706199645996

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00047087669372559

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00037980079650879

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0004420280456543

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00038695335388184

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00035500526428223

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.0011131763458252

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00038790702819824

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0002601146697998

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021696090698242

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029492378234863

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00069594383239746

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00032782554626465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003809928894043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00032997131347656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00028514862060547

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00029587745666504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00035905838012695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0003361701965332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00043797492980957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00044107437133789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00036907196044922

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00082898139953613

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0002748966217041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00021696090698242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00022292137145996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00031900405883789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00062394142150879

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00048303604125977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00051999092102051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00050187110900879

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035691261291504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0002129077911377

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00041294097900391

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00061702728271484

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00043487548828125

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00032401084899902

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00028800964355469

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00024199485778809

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.0006859302520752

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0004570484161377

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025701522827148

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.000244140625

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003058910369873

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00075483322143555

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00033807754516602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00028896331787109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00028395652770996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0002751350402832

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00037598609924316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0005190372467041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0004119873046875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00040102005004883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00049209594726562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00039911270141602

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00098085403442383

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00046086311340332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00043511390686035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00030183792114258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00029611587524414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00024795532226562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00024700164794922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024294853210449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00026488304138184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003659725189209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023293495178223

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00043606758117676

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00039911270141602

UPDATE `tg_sessions` SET `last_activity` = 1525690468, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00027799606323242

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00036001205444336

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00030779838562012

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.0002448558807373

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.0001981258392334

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00067782402038574

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036096572875977

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022697448730469

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00036096572875977

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00031709671020508

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00088596343994141

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0004730224609375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00053596496582031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00053095817565918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0005040168762207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00047397613525391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00045108795166016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00046205520629883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00058102607727051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00056600570678711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0004730224609375

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00079607963562012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00057196617126465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00049996376037598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0005190372467041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00046992301940918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00050497055053711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00048089027404785

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00045394897460938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00048208236694336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00055289268493652

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00051617622375488

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'ab47dee2986adf549b7f35571970ad08'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.000762939453125

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `session_id` = 'e268bb625dab30ebca8a5abd98890832', `user_id` = '' WHERE session_id = 'ab47dee2986adf549b7f35571970ad08' 
 Execution Time:0.00053596496582031

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00032401084899902

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0004279613494873

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00037407875061035

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00023508071899414

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00019598007202148

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.00064587593078613

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003960132598877

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00032901763916016

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0002901554107666

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021791458129883

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00062799453735352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00025701522827148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00024104118347168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00026202201843262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00031709671020508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00048279762268066

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0004730224609375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00038313865661621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00028300285339355

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00025582313537598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0002288818359375

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.000885009765625

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00042009353637695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00040793418884277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00033307075500488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00029182434082031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028777122497559

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00048208236694336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0003669261932373

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0003049373626709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035905838012695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00037908554077148

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00051498413085938

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00059413909912109

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00052094459533691

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00036287307739258

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00027084350585938

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00026988983154297

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00022006034851074

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.0009000301361084

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039005279541016

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025200843811035

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022387504577637

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029706954956055

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00062394142150879

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00029110908508301

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027012825012207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00032496452331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00045108795166016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00050592422485352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00052595138549805

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00034189224243164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00027203559875488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00020694732666016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0002131462097168

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00062990188598633

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00023198127746582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00022482872009277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00027799606323242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00036787986755371

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00040006637573242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00049710273742676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00042104721069336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00046300888061523

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00047206878662109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00054383277893066

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0004730224609375

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00040602684020996

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00042319297790527

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00030708312988281

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00023007392883301

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00018692016601562

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.00096797943115234

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00040602684020996

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00024080276489258

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019407272338867

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019407272338867

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00069403648376465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00037407875061035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00032210350036621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00026297569274902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00042986869812012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00040888786315918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00046205520629883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00055193901062012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00041913986206055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00039505958557129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0004570484161377

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00067687034606934

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00030922889709473

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027608871459961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00026702880859375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0003509521484375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00029587745666504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0002748966217041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00031495094299316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00042486190795898

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00050902366638184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00048685073852539

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00054383277893066

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00041913986206055

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00042009353637695

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00041413307189941

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00040316581726074

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.00079202651977539

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00044512748718262

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030612945556641

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00033092498779297

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00031614303588867

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00088882446289062

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00056695938110352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00046014785766602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00033211708068848

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00036287307739258

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00049519538879395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00045299530029297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00051617622375488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00043511390686035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00040411949157715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00032401084899902

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00086092948913574

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00041890144348145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003211498260498

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00029993057250977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00034308433532715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00047111511230469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00049304962158203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0004580020904541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00040793418884277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00034499168395996

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00057482719421387

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00037503242492676

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00029301643371582

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00024890899658203

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.0002598762512207

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.00076603889465332

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00047397613525391

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027298927307129

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025701522827148

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00024890899658203

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00085091590881348

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00049400329589844

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00055289268493652

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00039291381835938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0002899169921875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00024318695068359

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00022006034851074

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00037908554077148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00049281120300293

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00039410591125488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00034403800964355

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00071215629577637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0005180835723877

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00053906440734863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00034809112548828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00032281875610352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00023603439331055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023698806762695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00021982192993164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00034999847412109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00036907196044922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00037002563476562

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00044393539428711

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00047612190246582

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00047707557678223

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00037908554077148

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00031304359436035

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.00062417984008789

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042200088500977

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029397010803223

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025486946105957

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025105476379395

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00064587593078613

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00053906440734863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00047087669372559

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00053596496582031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00050592422485352

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0005340576171875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00030112266540527

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00020790100097656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00020098686218262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00037407875061035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00069093704223633

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00063705444335938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00045394897460938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00043606758117676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00050902366638184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00046110153198242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028681755065918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00021004676818848

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00020408630371094

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00051116943359375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00046110153198242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00037908554077148

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00053095817565918

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00056290626525879

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00031900405883789

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00040197372436523

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00042605400085449

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00031089782714844

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00022101402282715

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00062108039855957

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00050616264343262

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039291381835938

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00032806396484375

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022387504577637

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00069499015808105

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00038695335388184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00033807754516602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.0004880428314209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00051617622375488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00051283836364746

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00046086311340332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00044894218444824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00033807754516602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00037002563476562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00035905838012695

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0006721019744873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00035500526428223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00024604797363281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00027012825012207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026297569274902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00023508071899414

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0002439022064209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00022411346435547

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022506713867188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00021004676818848

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00032496452331543

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00060009956359863

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00059294700622559

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00045108795166016

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0004420280456543

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00041890144348145

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00041699409484863

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.0010948181152344

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00041604042053223

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029397010803223

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00031185150146484

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00031399726867676

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00065398216247559

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00033402442932129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00023078918457031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00025796890258789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0003049373626709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00027084350585938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00030016899108887

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00043702125549316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00042104721069336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00032901763916016

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00096511840820312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00038695335388184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00028800964355469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00043797492980957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0005340576171875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00045585632324219

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00031709671020508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00053906440734863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00051617622375488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00045609474182129

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00040507316589355

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00056219100952148

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00032305717468262

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00037097930908203

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00037598609924316

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00023579597473145

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00020813941955566

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.0006861686706543

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003509521484375

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00024604797363281

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00020194053649902

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00020217895507812

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00057601928710938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00033998489379883

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00043606758117676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00045895576477051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00055694580078125

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00050497055053711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00047683715820312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00045895576477051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00045013427734375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0004580020904541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00047111511230469

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0008699893951416

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00039005279541016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00031208992004395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00030803680419922

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.0004580020904541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0003819465637207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00045895576477051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00046801567077637

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00046896934509277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00039386749267578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00030994415283203

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00049781799316406

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00060200691223145

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0003662109375

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00058293342590332

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00040197372436523

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.0003669261932373

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.0010991096496582

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00043416023254395

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026988983154297

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00033116340637207

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00033783912658691

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0006411075592041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00046110153198242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00039291381835938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00026798248291016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00034713745117188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00039291381835938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00027203559875488

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00031900405883789

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00024008750915527

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00023794174194336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00021100044250488

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00073790550231934

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00034499168395996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00029087066650391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00023603439331055

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00026202201843262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00037598609924316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00050497055053711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00057888031005859

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00053095817565918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00047993659973145

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00041890144348145

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00053596496582031

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00031113624572754

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00036716461181641

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00046610832214355

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00034379959106445

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00039505958557129

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00092577934265137

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00037097930908203

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0001828670501709

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018906593322754

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026488304138184

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00075984001159668

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003359317779541

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0002601146697998

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00026607513427734

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00029802322387695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0003969669342041

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00026702880859375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00055408477783203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00047898292541504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00035786628723145

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0002751350402832

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00094795227050781

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00050091743469238

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00040483474731445

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00022292137145996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00020694732666016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00020503997802734

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00020694732666016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00040602684020996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00039291381835938

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00028514862060547

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00042915344238281

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00054597854614258

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00065994262695312

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00037002563476562

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00033998489379883

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.0002589225769043

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.0003509521484375

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '7' 
 Execution Time:0.00087904930114746

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00041794776916504

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00024008750915527

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00021100044250488

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00020408630371094

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00092792510986328

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00039815902709961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00021505355834961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00020694732666016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00020408630371094

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00020694732666016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00027704238891602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00042295455932617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00042915344238281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00049495697021484

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00044488906860352

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00070500373840332

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00042009353637695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00036191940307617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00033116340637207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00034809112548828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00051093101501465

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00030398368835449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00020289421081543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002129077911377

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0003662109375

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00045394897460938

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00053095817565918

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00050187110900879

UPDATE `tg_sessions` SET `last_activity` = 1525690769, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'e268bb625dab30ebca8a5abd98890832' 
 Execution Time:0.00035595893859863

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00045609474182129

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00038409233093262

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00020503997802734

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00020790100097656

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '7' 
 Execution Time:0.00063490867614746

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00042009353637695

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022411346435547

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018811225891113

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00017905235290527

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00076198577880859

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00047707557678223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00039482116699219

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00034403800964355

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00033116340637207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00022506713867188

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002739429473877

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00029897689819336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00024914741516113

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00031208992004395

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00060415267944336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0002601146697998

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.0003199577331543

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00041103363037109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00050091743469238

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00049710273742676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00034904479980469

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00020813941955566

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022602081298828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00020098686218262

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00020980834960938

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0004730224609375

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.0004279613494873

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00037884712219238

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00039315223693848

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00037217140197754

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00033903121948242

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00031709671020508

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00096797943115234

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00041294097900391

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019311904907227

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.000244140625

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029420852661133

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.0006721019744873

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00030088424682617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00024104118347168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00048589706420898

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00039196014404297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00037813186645508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00042009353637695

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00042200088500977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00038504600524902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00030994415283203

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00022602081298828

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00091290473937988

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00051403045654297

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00041508674621582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00027799606323242

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00027608871459961

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00037908554077148

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00060296058654785

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00034499168395996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0002598762512207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00032210350036621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00048112869262695

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00043606758117676

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00067496299743652

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00057291984558105

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00058889389038086

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00029897689819336

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.0002748966217041

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '6' 
 Execution Time:0.00075292587280273

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00053095817565918

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00029277801513672

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025510787963867

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00025606155395508

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00069618225097656

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00034785270690918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00041580200195312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00057101249694824

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00030303001403809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00024604797363281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00027012825012207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00025200843811035

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022792816162109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00020909309387207

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00020313262939453

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00064182281494141

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00034499168395996

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00027680397033691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00025510787963867

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026082992553711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00026297569274902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025105476379395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00025510787963867

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00026106834411621

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00030779838562012

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00029206275939941

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00057506561279297

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00046777725219727

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.0002748966217041

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00024318695068359

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00036406517028809

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00040698051452637

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00031280517578125

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00038504600524902

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '6' 
 Execution Time:0.001086950302124

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0013411045074463

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00030994415283203

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022006034851074

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022196769714355

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00065493583679199

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00046777725219727

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00040411949157715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00031208992004395

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00037693977355957

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00038695335388184

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00027585029602051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.0002131462097168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00021600723266602

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00031495094299316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.0003819465637207

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00067281723022461

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.0003809928894043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00031518936157227

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00031018257141113

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00026512145996094

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00025606155395508

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00035285949707031

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00040292739868164

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0004270076751709

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00038290023803711

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00027990341186523

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0005500316619873

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00070309638977051

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00069212913513184

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.0003659725189209

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00050592422485352

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00044798851013184

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00032997131347656

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.00097393989562988

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00054812431335449

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00037384033203125

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00027990341186523

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00026702880859375

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00089693069458008

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00045990943908691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00032401084899902

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00024795532226562

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00022006034851074

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00028586387634277

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00025391578674316

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00023293495178223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00022101402282715

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0002439022064209

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00023412704467773

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00097393989562988

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00038814544677734

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00042510032653809

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00051212310791016

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00042414665222168

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00035309791564941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.0003821849822998

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00041508674621582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00052881240844727

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0005340576171875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00049686431884766

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.00072503089904785

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:3:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00056791305541992

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00040793418884277

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00031900405883789

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'edit'
AND `controller_id` =  '17' 
 Execution Time:0.00022697448730469

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '69'
AND `role_id` =  '1' 
 Execution Time:0.00025796890258789

SELECT *
FROM (`tg_static_pages`)
WHERE `page_id` =  '2' 
 Execution Time:0.0010631084442139

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039887428283691

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00022983551025391

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00019407272338867

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00018405914306641

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00069904327392578

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00027680397033691

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00023198127746582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00022983551025391

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00024604797363281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00029587745666504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00028705596923828

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00023794174194336

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.0004119873046875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0005340576171875

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00039196014404297

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00078201293945312

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00033688545227051

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00029993057250977

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00028896331787109

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00027298927307129

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.0002589225769043

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023293495178223

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00024604797363281

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00037789344787598

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00033211708068848

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00030803680419922

SELECT *
FROM (`tg_sessions`)
WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732'
AND `ip_address` =  '::1'
AND `user_agent` =  'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36' 
 Execution Time:0.0005340576171875

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:5:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:new:message\";s:26:\"Page Updated Successfully.\";s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00064611434936523

UPDATE `tg_sessions` SET `last_activity` = 1525691071, `user_id` = '', `user_data` = 'a:4:{s:9:\"user_data\";s:0:\"\";s:18:\"admin_session_data\";a:30:{s:7:\"user_id\";s:1:\"2\";s:7:\"role_id\";s:1:\"1\";s:11:\"hardware_id\";s:0:\"\";s:10:\"first_name\";s:3:\"H2H\";s:9:\"last_name\";s:3:\"H2H\";s:8:\"username\";s:5:\"admin\";s:5:\"email\";s:13:\"h2h@gmail.com\";s:13:\"user_password\";s:65:\"b8a83c3567f863928848234ac246ffa3753d4cea34f2df029c973fc298ad8a907\";s:7:\"address\";s:4:\"test\";s:10:\"country_id\";s:1:\"0\";s:7:\"zone_id\";s:9:\"rajasthan\";s:9:\"city_name\";s:6:\"jaipur\";s:12:\"phone_number\";s:10:\"1234567890\";s:8:\"location\";s:0:\"\";s:17:\"verification_code\";s:0:\"\";s:10:\"sms_status\";s:0:\"\";s:12:\"get_verified\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:5:\"about\";s:0:\"\";s:8:\"user_dob\";s:10:\"1984-05-05\";s:6:\"gender\";s:0:\"\";s:13:\"profile_image\";s:0:\"\";s:8:\"key_code\";s:6:\"142572\";s:8:\"auth_key\";s:65:\"90efb161b2d982e474e9ebef8ebd77ccec7eb60111f02ca6bfc707cd343fe392f\";s:10:\"last_login\";s:10:\"1522988756\";s:11:\"login_count\";s:3:\"772\";s:9:\"is_active\";s:1:\"1\";s:10:\"is_deleted\";s:1:\"0\";s:12:\"created_time\";s:19:\"1970-01-01 00:00:00\";s:12:\"updated_time\";s:19:\"2015-09-23 03:19:54\";}s:15:\"last_login_time\";i:1525688986;s:17:\"flash:old:message\";s:26:\"Page Updated Successfully.\";}' WHERE `session_id` =  'af2decf6d12794774a4a7fa279458732' 
 Execution Time:0.00054097175598145

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00042414665222168

SELECT `controller_id`
FROM (`tg_controllers`)
WHERE `controller_name` =  'page' 
 Execution Time:0.00041103363037109

SELECT `id`
FROM (`tg_actions`)
WHERE `action` =  'index'
AND `controller_id` =  '17' 
 Execution Time:0.00033402442932129

SELECT `id`
FROM (`tg_privileges`)
WHERE `controller_id` =  '17'
AND `action_id` =  '67'
AND `role_id` =  '1' 
 Execution Time:0.00041604042053223

SELECT *
FROM (`tg_static_pages`)
WHERE `is_deleted` =  0 
 Execution Time:0.0010440349578857

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00049304962158203

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00037693977355957

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.0003511905670166

SELECT *
FROM (`tg_block_ip_list`)
WHERE `block_ip_list_ipaddress` =  '::1' 
 Execution Time:0.00039386749267578

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00089883804321289

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00053095817565918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00054001808166504

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00053095817565918

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00049710273742676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00055885314941406

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00072193145751953

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00033378601074219

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00024294853210449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.00019311904907227

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00031495094299316

SELECT DISTINCT `P`.`controller_id`, `C`.`controller_name`, `C`.`controller_alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_controllers` AS C ON `P`.`controller_id` = `C`.`controller_id`
WHERE `P`.`role_id` =  '1'
ORDER BY `C`.`ordering` 
 Execution Time:0.00060915946960449

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '1' 
 Execution Time:0.00023198127746582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '8' 
 Execution Time:0.00023102760314941

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '10' 
 Execution Time:0.00037884712219238

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '16' 
 Execution Time:0.00048398971557617

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '17' 
 Execution Time:0.00035595893859863

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '15' 
 Execution Time:0.00023412704467773

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '18' 
 Execution Time:0.00023198127746582

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '19' 
 Execution Time:0.00025296211242676

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '13' 
 Execution Time:0.0002291202545166

SELECT `P`.`action_id`, `A`.`action`, `A`.`action_url`, `A`.`alias`
FROM (`tg_privileges` AS P)
LEFT JOIN `tg_actions` AS A ON `P`.`action_id` = `A`.`id`
WHERE `P`.`role_id` =  '1'
AND `P`.`controller_id` =  '3' 
 Execution Time:0.00022697448730469

