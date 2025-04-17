<div class="content-wrapper">
	<section class="content-header">
		<h1>
			My C/O
			<small>Manage C/O from here</small>
		</h1>
	</section>

<section class="content">
<div class="row">
    <div class="col-md-12">
		<div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">C/O List</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('doctor/co/add'); ?>" class="btn btn-success btn-sm">Add</a>
                </div>
            </div>
            <div class="box-body">
                <table class="table table-bordered dttable">
					<thead>
                    <tr>
						<th>#NO</th>
						<th>C/O Category</th>


						<th>C/O Detail</th>
<!--						<th>Status</th>-->
						<th>Actions</th>
                    </tr>
					</thead>
					<tbody>
					<?php $no=0; ?>
                    <?php foreach($co_master as $c){ ?>
                    <tr>
						<td><?php echo ++$no ?></td>
						<td><?php echo $c['co_code']; ?></td>
						<td><?php echo $c['co_detail']; ?></td>
<!--						<td>--><?php //echo $c['status']; ?><!--</td>-->
						<td>
                            <a href="<?php echo site_url('doctor/co/edit/'.$c['id']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil"></span> </a>
							<a href="<?php echo site_url('doctor/co/remove/'.$c['id']); ?>"
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
