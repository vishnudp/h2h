<?php 
$router_class = $this->router->class;
$router_function = $this->router->method;
?>
<section id="breadcrumbs">
  <div class="container">
    <ul>
      <li><a href="<?php echo site_url('admin/dashboard');?>" title="Administrator">Administrator</a></li>
      <li><a href="<?php echo site_url('admin/'.$router_class);?>" title="<?php echo ucfirst($router_class);?>"><?php echo ucfirst($router_class);?></a></li>
	  <?php if($router_function !='index'){?>
	  <li><?php echo ucfirst($router_function);?></li>
	  <?php }?>
    </ul>
  </div>
  <div class="container flashmsg">
    <?php 
     $error = $this->messages->get("error");
     if(isset($error[0])){ ?>
    <span class="required-server"><p><?php echo $error[0]; ?></p></span>
    <?php }                                     
     $success = $this->messages->get("success");
     if(isset($success[0])){ ?>
    <span class="success-server"><p><?php echo $success[0]; ?></p></span>
     <?php } ?> 
     <?php 
    $message = $this->session->flashdata('message');
    if(isset($message)){ ?>
    <span class="success-server"><p><?php echo $message; ?></p></span>
    <?php } ?> 	
	<?php 
     $error_message = $this->session->flashdata('error_message');
     if(isset($error_message)){ ?>
    <span class="flashmsgtext_error">
    <p><?php echo $error_message; ?></p>
    </span>
    <?php } ?>
  </div>
</section>