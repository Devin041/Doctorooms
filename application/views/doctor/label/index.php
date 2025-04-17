<div class="content-wrapper">
	<section class="content-header">
		<h1>
			My Label
			<small>Manage Label from here</small>
		</h1>
	</section>

	<section class="content">
<div class="row">
    <div class="col-md-12">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Label List</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('doctor/label/add'); ?>" class="btn btn-success btn-sm">Add</a>
                </div>
            </div>
            <div class="box-body">
                <table class="table table-striped dttable">
					<thead>
                    <tr>
						<th>#No</th>
						<th>Label Title</th>
						<th>Label Unit</th>
						<th>Actions</th>
                    </tr>
					</thead>
					<?php $no=0; ?>
					<tbody>
                    <?php foreach($label_master as $l){ ?>
                    <tr>
						<td><?php echo ++$no; ?></td>
						<td><?php echo $l['label_title']; ?></td>
						<td><?php echo $l['label_unit']; ?></td>
						<td>
                            <a href="<?php echo site_url('doctor/label/edit/'.$l['id']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil"></span> </a>
							<a href="<?php echo site_url('doctor/label/remove/'.$l['id']); ?>"
							   class="btn btn-danger btn-xs"
							   data-toggle="tooltip" title="Delete" onclick="return conformDel(this, event)"><span
									class="fa fa-trash"></span></a>
                        </td>
                    </tr>
                    <?php } ?>
					</tbody>
                </table>
                                
            </div>
        </div>
    </div>
</div>
	</section>
</div>
