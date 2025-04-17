<div class="content-wrapper">
	<section class="content-header">
		<h1>
			My Complain
			<small>Manage Complain from here</small>
		</h1>
	</section>
	<section class="content">
<div class="row">
    <div class="col-md-12">
		<div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">Complain List</h3>
            	<div class="box-tools">
                    <a href="<?php echo site_url('doctor/questions/add'); ?>" class="btn btn-success btn-sm">Add</a>
                </div>
            </div>
            <div class="box-body">
				<table class="table table-bordered dttable">
					<thead>
                    <tr>
						<th>#No</th>
						<th width="106px">Complain code</th>
						<th>Category</th>

						<th>Complain</th>
						<th>Explanations</th>
						<th>Actions</th>
                    </tr></thead>
					<tbody>
					<?php $no=0;?>
                    <?php foreach($questions_master as $q){ ?>
                    <tr>
						<td><?php echo ++$no; ?></td>
						<td><?php echo $q['question_code']; ?></td>
						<td><?php echo $q['co_code']; ?></td>
						<td><?php echo $q['question']; ?></td>
						<td><?php echo $q['explenations']; ?></td>
						<td>
                            <a href="<?php echo site_url('doctor/questions/edit/'.$q['q_id']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil"></span></a>
							<a href="<?php echo site_url('doctor/questions/remove/'.$q['q_id']); ?>"
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
