<div class="content-wrapper">
	<section class="content-header">
		<h1>
			My Suggestions
			<small>Manage Suggestions from here</small>
		</h1>
	</section>
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Suggestions List</h3>

					</div>

					<div class="box-body">
						<div class="row">
						<div class=" col-md-6">

							<h3 >Questions</h3>
						<ul class="list-group">


							<?php
							$id = $this->input->get('id');

							foreach($cos as $co){  	if (count($co['questions'] )>0){?>
								<button type="button" class="list-group-item list-group-item-action active">
									<?= $co['co_code']?>
								</button>
					<?php

								foreach($co['questions'] as $q){ ?>

										<a class="list-group-item list-group-item-action" href="?id=<?php echo $q['id'] ?>" <?php if ($q['id']==$id){ echo 'style="background: aquamarine"';}?> class="product-title active"><?php echo $q['question']; ?>
										</a>


							<?php }}}?>
						</ul>
						</div>
							<?php echo form_open('doctor/suggestions/add/'.$this->input->get('id')); ?>
							<div class="col-md-6">
								<h3 >Suggestions </h3>
									<div id="itemDetails">

										<?php if(isset($suggestions)){
											foreach ($suggestions as $key=>$row){
												?>
												<div class="row suggestions">
													<div class="col-sm-10">


															<textarea rows="5" name="suggestions[<?= $key ?>][suggestions]"  class="form-control" placeholder="Enter suggestions here" required><?= $row['suggestions']?></textarea>


													</div>



													<div class="col-sm-1" style="text-align: center;">
														<button class="btn btn-danger btn-sm" style="margin-top: 24px;"
																onclick="removeItem(this)">
															<span class="fa fa-trash"></span>
														</button>
													</div>
												</div>
												<br>
										<?php
											}
										} ?>
									</div>
								<?php if ($this->input->get('id')!=""){?>
								<button id="addNew" type="button" class="btn btn-warning">
									<i class="fa fa-plus"></i> Add New
								</button>
								<button type="submit" class="btn btn-primary">
									<i class="fa fa-check"></i> Save
								</button>
								<?php }else{
									?>
									<div class="alert alert-warning alert-dismissible text-capitalize">
<!--										<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>-->
										<h4><i class="icon fa fa-warning"></i> Alert!</h4>
										Please select question first to add suggestion.
									</div>
								<?php
								} ?>
							<?php echo form_close(); ?>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<script>
	$("#addNew").click(function () {

		var row = "<?php
		$r =
	<<< END
		<div class="row suggestions">
			<div class="col-sm-10">
			
			<textarea rows="5" name="suggestions[__index__][suggestions]"  class="form-control" placeholder="Enter suggestions here" required></textarea>
		
		
		</div>
		
		
		
		<div class="col-sm-1" style="text-align: center;">
			<button class="btn btn-danger btn-sm" style="margin-top: 24px;"
		onclick="removeItem(this)">
			<span class="fa fa-trash"></span>
			</button>
			</div>
			</div>
<br>
END;
		echo(htmlspecialchars(str_replace("\r", '', str_replace("\n", '', $r))));
	?>";
		var count = $('#itemDetails > .row').length;

		row = row.replace(/__index__/g, count);

		$('#itemDetails').append($("<div/>").html(row).text());
	});
	function removeItem(btn) {
		$(btn).parent().parent().remove();
	}

</script>
