<div class="content-wrapper">
	<section class="content-header">
		<h1>
			Other Settings
			<small>Manage Prescription Other settings from here</small>
		</h1>
	</section>

	<section class="content">
<div class="row">
    <div class="col-md-12">
		<div class="box box-primary">
			<div class="box-header with-border">
                <h3 class="box-title">Other Settings</h3>
            	<div class="box-tools">
					<?php if (count($p_other_settings)==0){?>
                    <a href="<?php echo site_url('doctor/p_other_setting/add'); ?>" class="btn btn-success btn-sm">Add</a>
               <?php }?>
                </div>
            </div>
            <div class="box-body">
                <table class="table table-striped">
                    <tr>
						<th>ID</th>
						<th>Logo</th>
						<th>Time</th>
						<th>Header</th>
						<th>Full Header</th>
						<th>Actions</th>
                    </tr>
                    <?php foreach($p_other_settings as $p){ ?>
                    <tr>
						<td><?php echo $p['id']; ?></td>
						<td>
							<?php if ($p['logo'] != ""){ ?>
							<img width="100px" src="<?= base_url() ?>upload/p_logo/<?= $p['logo'] ?>">
						<?php }?>
						</td>
						<?php $time=json_decode($p['time']) ?>
						<td><?= $p['time']?> </td>
						<td><?php echo $p['header']; ?></td>
						<td>
							<?php if ($p['full_header'] != ""){ ?>
								<img width="100px" src="<?= base_url() ?>upload/p_logo/<?= $p['full_header'] ?>">
							<?php }?>
						</td>
						<td>
                            <a href="<?php echo site_url('doctor/p_other_setting/edit/'.$p['id']); ?>" class="btn btn-info btn-xs"><span class="fa fa-pencil"></span> </a>
                            <a href="<?php echo site_url('doctor/p_other_setting/remove/'.$p['id']); ?>"    class="btn btn-danger btn-xs hidden"
							   data-toggle="tooltip" title="Delete" onclick="return conformDel(this, event)"><span
									class="fa fa-trash"></span> </a>
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
