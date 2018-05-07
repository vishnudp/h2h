<!-- main content -->
<style>
.h1style{
    text-align: center;color: #48AC2E;
}
</style>
	
						<div class="row">
                         <h1 class="h1style">Welcome to H2H Administration</h1>
							<div class="col-sm-3">
								
	                        </div>
					   
						
						<div class="row">
							<div class="col-sm-12">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">H2H Summaries</h4>
									</div>
									<div class="panel-body stat_wide">
                                    
										<div class="row">
											<div class="col-sm-4">
												<div class="media">
													<img alt="icon-candidates.png" src="<?php echo base_url(); ?>assets/images/study-well.jpg" class="media-object img-thumbnail pull-left" />
													<div class="media-body">
														<h3><a href="<?php echo base_url().'admin/group' ?>" title="Total Groups">Total Groups </a></h3>
														<p><strong></strong></p>
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="media">
													<img alt="EC_Candidate.png"  src="<?php echo base_url(); ?>assets/images/test.jpg" class="media-object img-thumbnail pull-left" />
													<div class="media-body">
														<h3><a href="<?php echo base_url().'admin/video' ?>" title="Total Videos">Total Videos</a></h3>
														<p><strong></strong></p>
														
													</div>
												</div>
											</div>
											<div class="col-sm-4">
												<div class="media">
													<img alt="failed.png"  src="<?php echo base_url(); ?>assets/images/subjects.jpg" class="media-object img-thumbnail pull-left">
													<div class="media-body">
														<h3><a href="<?php echo base_url().'admin/pics' ?>" title="Total Pictures">Total Pictures</a></h3>
														<p><strong></strong></p>
														
													</div>
												</div>
											</div>
										</div>

										<div class="row">
										   
											
                                             <div class="col-sm-4">
												<div class="media">
													<img alt="users-icon.png"  src="<?php echo base_url(); ?>assets/images/users-icon.png" class="media-object img-thumbnail pull-left" />
													<div class="media-body">
														<h3><a href="<?php echo base_url().'admin/user' ?>" title="Total Users">Total Active Users</a></h3>
														<p><strong><?php if(isset($total_users)){ echo $total_users;} ?></strong></p>
														
													</div>
												</div>
											</div>                                           
                                            
                                            </div>
									</div>
                                    
								</div>
							</div>
						</div> 
						
                </div>
                        
