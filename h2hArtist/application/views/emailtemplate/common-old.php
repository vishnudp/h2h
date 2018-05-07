<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $title; ?></title>

</head>

<body>
<table width="650px" style="font-family:Arial, Helvetica, sans-serif;" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;">
    Hello <?php echo $fullname; ?>,</td>
  </tr>
  
  
  <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;">
    
    <?php echo $text; ?>
    </td>
  </tr>
  <?php if(!empty($link)){ ?>
  <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;">
   <a href="<?php echo $link; ?>" title="link"><?php echo $link; ?></a></td>
  </tr>
  <?php } ?>
  
  
   <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;">
   Please let us know if we can be of any further assistance,
   </td>
  </tr>
  
  
  <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;">
    <?php echo $this->config->item('mail_regards'); ?></td>
  </tr>
  
  <tr>
    <td bgcolor="#ffffff" style="font-size:14px; color:#000; padding-top:13px; padding-bottom:13px; padding-left:20px;">
   <hr /><br />
   Support Center: <a href="<?php if($this->config->item('support_link') != ''){ echo $this->config->item('support_link');} ?>" title="<?php if($this->config->item('support_link') != ''){ echo $this->config->item('support_link');} ?>"><?php if($this->config->item('support_link') != ''){ echo $this->config->item('support_link');} ?></a></td>
  </tr>
  
</table>

</body>
</html>
