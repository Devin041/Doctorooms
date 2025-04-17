
<div class="content-wrapper">
	<section class="content-header">
		<h1>
			My Table
			<small>Manage Table from here</small>
		</h1>
	</section>
	<section class="content">
<div class="row">
    <div class="col-md-12">
		<div class="box box-primary">
			<div class="box-header with-border">
                <h3 class="box-title">Table  Listing</h3>
            	<div class="box-tools">
					<?php if(count($table_master) <= 0){ ?>
                    <a href="<?php echo site_url('doctor/table_master/add'); ?>" class="btn btn-success btn-sm">Add</a>
               <?php } ?>
                </div>
            </div>
            <div class="box-body">
                <table class="table table-striped">
                    <tr>
						<th>#No</th>
						<th>Row</th>
						<th>Column</th>
						<th>Lable Header</th>
						<th>Lable Footer</th>
						<th>Lable Row</th>
						<th>Extra Label</th>
						<th>Actions</th>
                    </tr>
                    <?php $n=0; foreach($table_master as $t){ ?>
                    <tr>
						<td><?php echo ++$n; ?></td>
						<td><?php echo $t['row']; ?></td>
						<td><?php echo $t['table_column']; ?></td>
						<td><?php foreach (json_decode($t['lable_header']) as $label){echo $label." , " ;}  ?></td>
						<td><?php foreach (json_decode($t['lable_footer']) as $label){echo $label." , " ;}  ?></td>
						<td><?php foreach (json_decode($t['lable_row']) as $label){echo $label." , " ;}  ?></td>
						<td><?php echo $t['extra_label']; ?></td>
						<td>
                            <a href="<?php echo site_url('doctor/table_master/edit/'.$t['id']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil"></span> Edit</a>
							<a href="<?php echo site_url('doctor/table_master/remove/'.$t['id']); ?>"
							   class="btn btn-danger btn-xs"
							   data-toggle="tooltip" title="Delete" onclick="return conformDel(this, event)"><span
									class="fa fa-trash"></span></a>
                        </td>
                    </tr>
                    <?php } ?>
                </table>
                                
            </div>
        </div>
    </div>
</div>
	</section>
</div>
