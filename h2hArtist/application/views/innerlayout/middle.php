<div class="page-content">

<div class="success">

<?php $success = $this->messages->get("success");
if(isset($success[0])){ ?>
<?php echo $success[0]; ?>
<?php } ?>

<?php 
$message = $this->session->flashdata('message');
if(isset($message)){ ?>
<?php echo $message; ?>
<?php } ?>

</div>

<div class="error">

<?php $error = $this->messages->get("error");
 if(isset($error[0])){ ?>
<?php echo $error[0]; ?>
<?php } ?>
<?php 
$error = $this->session->flashdata('error');
if(isset($error)){ ?>
<?php echo $error; ?>
<?php } ?>

</div>

<?php $this->load->view($layout);?>
</div>