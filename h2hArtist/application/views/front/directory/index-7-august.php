<div class="pricing">
<div class="row-fluid">
    <?php if(!empty($all_subscriber)){ 
        foreach ($all_subscriber as $key => $value) {
            $color = 'green';
            if($key == 0){
                $color = 'green';
                $perfect = 'Doctor';
            }
            if($key == 1){
                $color = 'blue';
                $perfect = 'Engineer';
            }
            if($key == 2){
                $color = 'red';
                $perfect = 'Accountant';
            }
            if($key == 3){
                $color = 'yellow';
                $perfect = 'Bankers';
            }
        
    ?>
      <div class="span3">
        <div class="ccr-pricing-table <?php echo $color; ?>">
          <section class="ccr-pricing-header">
            <p class="ccr-price-title"><?php echo $value['plan_title'];?></p>
            <p class="ccr-price-value"> <sup>$<?php  echo $value['amount'];?>/</sup><?php echo $value['plan_validity']; ?><span> Days</span> </p>
            <p class="ccr-price-quality"><em>Perfect for <?php echo $perfect; ?></em></p>
          </section>
          <section class="ccr-pricing-ul">
          <!--ul>
            <li class="ccr-price-freture"><i class="fa fa-asterisk"></i>1 WordPress Install</li>
            <li class="ccr-price-visitor"><i class="fa fa-star"></i>25,000 visits/mo.</li>
            <li class="ccr-price-data"><i class="fa fa-tachometer"></i>Unlimited Data Transfer</li>
            <li class="ccr-price-storage"><i class="fa fa-briefcase"></i>10GB Local Storage</li>
          </ul-->
          <?php echo $value['plan_description'];?>
          </section>
          <section class="ccr-pricing-footer">
            <button onclick="goTo('<?php echo $value['plan_id']; ?>');" class="ccr-price-host">Sign up</button>
          </section>
        </div> <!-- /.ccr-pricing-table-1 -->
      </div>
      <?php } }?>
    </div>
</div>