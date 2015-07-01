<div class="otherinstitutes form">
<?php echo $this->Form->create('Otherinstitute');?>
	<fieldset>
		<legend><?php __('Add Otherinstitute'); ?></legend>
	<?php
		echo $this->Form->input('name');
		echo $this->Form->input('content');
		echo $this->Form->input('link');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Otherinstitutes', true), array('action' => 'index'));?></li>
	</ul>
</div>