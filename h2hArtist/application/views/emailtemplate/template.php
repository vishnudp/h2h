<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>New Test Setup</title>
</head>

<body>
<table width="650px" style="font-family:Arial, Helvetica, sans-serif;" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="302"><img src="<?php echo base_url(); ?>images/logo.jpg" width="302" height="107" alt="logo" title="logo"/></td>
    <td width="348">&nbsp;</td>
  </tr>
</table>
</td>
  </tr>
  <tr>
    <td bgcolor="#464646" style="font-size:18px; color:#FFFFFF; padding-top:10px; padding-bottom:10px; padding-left:20px;"><?php echo $email_header; ?></td>
  </tr>
  <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;">Hello Admin,</td>
  </tr>
   <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;">New Test setup added. Please find below details :</td>
  </tr>
  <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;"><strong>Test Number</strong> : <?php echo $email_setup_number; ?></td>
  </tr>
   <tr>
 	 <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;"><strong>Test Password</strong> : <?php echo $email_setup_pass; ?></td>
  </tr>
  <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;"><strong>Candidate Name</strong> : <?php echo $email_first_name; ?>&nbsp;<?php echo $email_last_name; ?></td>
  </tr>
  <tr>
        <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;"><strong>Login Url</strong> : <a href="{login_url}" title="Login">{login_url}</a></td>
  </tr>
  <tr>
   <td bgcolor="#464646" style="font-size:12px; color:#FFFFFF; padding-top:15px; padding-bottom:15px; padding-left:20px;"> &copy; <?php echo $email_footer; ?></td>
  </tr>
</table>

</body>
</html>
