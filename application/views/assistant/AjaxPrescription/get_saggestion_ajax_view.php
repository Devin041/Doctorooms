<?php foreach ($questions as $key => $qu) { ?>
	<div class="col-md-6">
		<div class="box box-info" style="margin-bottom: -5px">
			<div class="box-body">
				<h4 class="text-primary"><?= $qu['question'] ?></h4>
				<!--										<input type="hidden" name="co[]" value="-->
				<? //= $co['co_code']?><!--">-->

				<?php
				$ext = "";
				foreach ($qu['suggestion'] as $key => $sg) {
					$checked = "";
					foreach ($old_questions as $old) {
						if ($sg == $old->suggestions) {
							$checked = "checked='checked'";
						}
						if ($old->question == 'extra') {
							$ext = $old->suggestions;
						}
					}

					?>
					<ul class="todo-list ui-sortable" style="margin-bottom: 7px">
						<li style="display:flex;">
							<input type="checkbox" class="form-check-inline checkbox "
								   name="ques_suggestion" value="<?= $sg ?>" id="qus<?= $key ?>"
								   data-qus="<?= $qu['question'] ?>" <?= $checked ?>">
							<span class="text" style="font-weight: normal;" for="qus<?= $key ?>"><?= $sg ?></span>
						</li>
					</ul>
				<?php } ?>
			</div>
		</div>
	</div>

<?php } ?>

<div class="col-md-12">
	<br>
	<br>
	<label for="">Note</label>
	<textarea id="extra_suggestion" class="form-control " id="note-textarea" name="extra"><?= $ext ?></textarea>
	<br>
	<button type="button" id="start-record-btn" class="btn btn-primary">Start Recognition</button>
	<button type="button" id="pause-record-btn" class="btn btn-secondary">Pause Recognition</button>
<br>
	<span id="recording-instructions"></span>
</div>

<div class="col-md-6">
	<br>
	<label for="">Next Visit date</label>
	<input type="date" id="next_date" class="form-control" value="<?= $next_date->next_visit ?>" name="next_date">
</div>
<script src="<?=base_url()?>assets/lte/bower_components/speechToText/script.js"></script>
