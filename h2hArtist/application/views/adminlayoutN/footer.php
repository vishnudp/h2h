<?php 
#echo "<pre>";
#print_r($global_tag_track);
$category_tokenization  = $addtrack_tokenization = null;
if(isset($global_tags_json)){
	$addtrack_tokenization = $global_tags_json;
}

if(isset($global_category_json)){
	$category_tokenization = $global_category_json;
}
?>
<footer id="footer">
  <div class="container">
    <div class="row">
      <div class="col-sm-12" style="text-align: center;"> &copy; 2014 Dotsquares</div>
     
    </div>
  </div>
</footer>
<!-- jQuery -->
<!--<script src="<?php echo base_url(); ?>js/jquery.min.js"></script>-->
<!-- bootstrap framework -->
<script src="<?php echo base_url(); ?>assets/bootstrap/js/bootstrap.min.js"></script>
<!-- jQuery resize event -->
<script src="<?php echo base_url(); ?>assets/js/jquery.ba-resize.min.js"></script>
<!-- retina ready -->
<script src="<?php echo base_url(); ?>assets/js/jquery_cookie.min.js"></script>
<!-- retina ready -->
<script src="<?php echo base_url(); ?>assets/js/retina.min.js"></script>
<!-- tinyNav -->
<script src="<?php echo base_url(); ?>assets/js/tinynav.js"></script>
<!-- sticky sidebar -->
<script src="<?php echo base_url(); ?>assets/js/jquery.sticky.js"></script>
<!-- Navgoco -->
<script src="<?php echo base_url(); ?>assets/js/lib/navgoco/jquery.navgoco.min.js"></script>
<!-- jMenu -->
<script src="<?php echo base_url(); ?>assets/js/lib/jMenu/js/jMenu.jquery.js"></script>
<!-- typeahead -->
<script src="<?php echo base_url(); ?>assets/js/lib/typeahead.js/typeahead.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lib/typeahead.js/hogan-2.0.0.js"></script>
<script src="<?php echo base_url(); ?>assets/js/ebro_common.js"></script>
<!-- peity (small charts) -->
<script src="<?php echo base_url(); ?>assets/js/lib/peity/jquery.peity.min.js"></script>
<!-- vector map -->
<script src="<?php echo base_url(); ?>assets/js/lib/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lib/jvectormap/maps/jquery-jvectormap-world-mill-en.js"></script>
<!-- charts -->
<script src="<?php echo base_url(); ?>assets/js/lib/flot/jquery.flot.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lib/flot/jquery.flot.pie.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lib/flot/jquery.flot.time.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lib/flot/jquery.flot.tooltip.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lib/flot/jquery.flot.resize.js"></script>
<!-- easy pie chart -->
<script src="<?php echo base_url(); ?>assets/js/lib/easy-pie-chart/jquery.easy-pie-chart.js"></script>
<script src="<?php echo base_url(); ?>assets/js/pages/ebro_dashboard1.js"></script>
<!-- datatables -->
<script src="<?php echo base_url(); ?>assets/js/lib/dataTables/media/js/jquery.dataTables.min.js"></script>
<!-- datatables column reorder -->
<script src="<?php echo base_url(); ?>assets/js/lib/dataTables/extras/ColReorder/media/js/ColReorder.min.js"></script>
<!-- datatable fixed columns -->
<script src="<?php echo base_url(); ?>assets/js/lib/dataTables/extras/FixedColumns/media/js/FixedColumns.min.js"></script>
<!-- datatables column toggle visibility -->
<script src="<?php echo base_url(); ?>assets/js/lib/dataTables/extras/ColVis/media/js/ColVis.min.js"></script>
<!-- datatable table tools -->
<script src="<?php echo base_url(); ?>assets/js/lib/dataTables/extras/TableTools/media/js/TableTools.min.js"></script>
<script src="<?php echo base_url(); ?>assets/js/lib/dataTables/extras/TableTools/media/js/ZeroClipboard.js"></script>
<!-- datatable bootstrap style -->
<script src="<?php echo base_url(); ?>assets/js/lib/dataTables/media/DT_bootstrap.js"></script>
<script src="<?php echo base_url(); ?>assets/js/pages/ebro_datatables.js"></script>
<!-- jqueryUI -->
<script src="<?php echo base_url(); ?>assets/js/lib/jquery_ui/jquery-ui-1.10.3.custom.min.js"></script>
<!-- elfinder -->
<script src="<?php echo base_url(); ?>assets/file_manager/js/elfinder.demo.js"></script>
<script src="<?php echo base_url(); ?>assets/js/pages/ebro_file_manager.js"></script>
<!-- multiupload -->
<script src="<?php echo base_url(); ?>assets/js/lib/jQuery-File-Upload/js/jquery.fileupload.all.js"></script>
<!-- The template to display files available for upload -->
<!--script id="template-upload" type="text/x-tmpl">
			{% for (var i=0, file; file=o.files[i]; i++) { %}
				<tr class="template-upload fade">
					<td class="upload_img">
						<span class="preview img-thumbnail"></span>
					</td>
					<td class="upload_info">
						{% if (file.error) { %}
							<div><span class="label label-important">Error</span> {%=file.error%}</div>
						{% } %}
						<p class="name">{%=file.name%}</p>
						<p class="size">{%=o.formatFileSize(file.size)%}</p>
						{% if (!o.files.error) { %}
							<div class="progress progress-striped progress-small active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
						{% } %}
					</td>
					<td class="upload_actions">
						{% if (!o.files.error && !i && !o.options.autoUpload) { %}
							<button class="btn btn-primary btn-sm start" disabled>
								<i class="glyphicon glyphicon-upload"></i>
								<span>Start</span>
							</button>
						{% } %}
						{% if (!i) { %}
							<button class="btn btn-warning btn-sm cancel">
								<i class="glyphicon glyphicon-ban-circle"></i>
								<span>Cancel</span>
							</button>
						{% } %}
					</td>
				</tr>
			{% } %}
			</script -->
<!-- The template to display files available for download -->
<!--script id="template-download" type="text/x-tmpl">
			{% for (var i=0, file; file=o.files[i]; i++) { %}
				<tr class="template-download fade">
					<td class="download_img">
						<span class="preview img-thumbnail">
							{% if (file.thumbnail_url) { %}
								<a href="{%=file.url%}" title="{%=file.name%}" class="gallery" download="{%=file.name%}"><img src="{%=file.thumbnail_url%}"></a>
							{% } %}
						</span>
					</td>
					<td class="download_info">
						{% if (file.error) { %}
							<div><span class="label label-important">Error</span> {%=file.error%}</div>
						{% } %}
						<p class="name">
							<a href="{%=file.url%}" title="{%=file.name%}" class="{%=file.thumbnail_url?'gallery':''%}" download="{%=file.name%}">{%=file.name%}</a>
						</p>
						<p class="size">{%=o.formatFileSize(file.size)%}</p>
					</td>
					<td class="download_actions">
						<button class="btn btn-danger delete" data-type="{%=file.delete_type%}" data-url="{%=file.delete_url%}"{% if (file.delete_with_credentials) { %} data-xhr-fields="{'withCredentials':true}"{% } %}>
							<i class="glyphicon glyphicon-trash"></i>
							<span>Delete</span>
						</button>
						<input type="checkbox" name="delete" value="1" class="toggle">
					</td>
				</tr>
			{% } %}
</script-->
    <script src="<?php echo base_url(); ?>assets/js/pages/ebro_form_multiupload.js"></script>
    <!-- 2col multiselect -->
    <script src="<?php echo base_url(); ?>assets/js/lib/multi-select/js/jquery.multi-select.js"></script>
    <!-- select2 -->
    <script src="<?php echo base_url(); ?>assets/js/lib/select2/select2.min.js"></script>
    <!-- datepicker -->
    <script src="<?php echo base_url(); ?>assets/js/lib/datepicker/js/bootstrap-datepicker.js"></script>
    <!-- iCheck -->
    <script src="<?php echo base_url(); ?>assets/js/lib/iCheck/jquery.icheck.min.js"></script>
    <!-- parsley -->
    <script src="<?php echo base_url(); ?>assets/js/lib/parsley/parsley.min.js"></script>
    <script src="<?php echo base_url(); ?>assets/js/pages/ebro_form_validate.js"></script>


<!-- 2col multiselect -->

			<script src="<?php echo base_url(); ?>assets/js/jquery.quicksearch.js"></script>
		<!-- select2 -->
        
		<!-- chained selects -->
			<script src="<?php echo base_url(); ?>assets/js/lib/chained/jquery.chained.min.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/lib/chained/jquery.chained.remote.min.js"></script>
		<!-- combobox -->
			<script src="<?php echo base_url(); ?>assets/js/lib/fuelUx/combobox.js"></script>
		<!-- masked inputs -->
			<script src="<?php echo base_url(); ?>assets/js/lib/jquery.inputmask/jquery.inputmask.bundle.min.js"></script>
		<!-- password strength meter -->
			<script src="<?php echo base_url(); ?>assets/js/lib/complexify/jquery.complexify.min.js"></script>
			<script src="<?php echo base_url(); ?>assets/js/lib/complexify/jquery.complexify.banlist.js"></script>
		<!-- datepicker -->
			<script src="<?php echo base_url(); ?>assets/js/lib/datepicker/js/bootstrap-datepicker.js"></script>
		<!-- timepicker -->
			<script src="<?php echo base_url(); ?>assets/js/lib/timepicker/js/bootstrap-timepicker.min.js"></script>
		<!-- colorpicker -->
			<script src="<?php echo base_url(); ?>assets/js/lib/colorpicker/js/bootstrap-colorpicker.js"></script>
		<!-- iCheck -->
			<script src="<?php echo base_url(); ?>assets/js/lib/iCheck/jquery.icheck.min.js"></script>
		<!-- bootstrap switch -->
			<script src="<?php echo base_url(); ?>assets/js/lib/bootstrap-switch/js/bootstrap-switch.min.js"></script>
		<!-- noUI slider -->
			<script src="<?php echo base_url(); ?>assets/js/lib/noUiSlider/jquery.nouislider.min.js"></script>
		<!-- Ion rangeSlider -->
			<script src="<?php echo base_url(); ?>assets/js/lib/ion_rangeSlider/js/ion.rangeSlider.min.js"></script>
		<!-- autosize -->
			<script src="<?php echo base_url(); ?>assets/js/lib/autosize/jquery.autosize-min.js"></script>
		<!-- textarea counter -->
			<script src="<?php echo base_url(); ?>assets/js/lib/jquery_textarea_counter/jquery.textareaCounter.plugin.js"></script>
		<!-- fileupload widgets -->
			<script src="<?php echo base_url(); ?>assets/js/lib/jasny_plugins/bootstrap-fileupload.js"></script>
            
            <!-- wysiwg -->
			<script src="<?php echo base_url(); ?>assets/js/lib/ckeditor/ckeditor.js"></script>
			
			<script src="<?php echo base_url(); ?>assets/js/pages/ebro_wysiwg.js"></script>
            
			
<script src="<?php echo base_url(); ?>assets/js/pages/ebro_form_extended.js"></script>
<script type="text/javascript">
//* select2
	ebro_select2 = {
		init: function() {
			if($('#addtrack_tokenization').length) {
				$('#addtrack_tokenization').select2({
					placeholder: "Select...",
					allowClear: true,
					tags:[<?php echo $addtrack_tokenization; ?>],
					tokenSeparators: [",", " "]
				});
			}
		}
	}
	ebro_select2.init();
</script>

<script type="text/javascript">
	ebro_select3 = {
		init: function() {
			if($('#category_tokenization').length) {
				$('#category_tokenization').select2({
					placeholder: "Select...",
					tags:[<?php echo $category_tokenization; ?>],
					tokenSeparators: [",", " "]
				});
			}
		}
	}
	ebro_select3.init();
</script>
<script src="<?php echo base_url(); ?>assets/js/common.js"></script>

</body></html>