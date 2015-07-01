<div class="placements form">
<?php echo $this->Form->create('Placement');?>
	<fieldset>
		<legend><?php __('Edit Placement'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('form_for');
		echo $this->Form->input('branch');
		echo $this->Form->input('category');
		echo $this->Form->input('stu_name');
		echo $this->Form->input('father_name');
		echo $this->Form->input('resi_address');
		echo $this->Form->input('present_address');
		echo $this->Form->input('stu_contact_no');
		echo $this->Form->input('email');
		echo $this->Form->input('guar_contact_no');
		echo $this->Form->input('date_of_birth');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Placement.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Placement.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Placements', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'add')); ?> </li>
	</ul>
</div>