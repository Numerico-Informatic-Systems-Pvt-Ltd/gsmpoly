<div class="technicalqualifications form">
<?php echo $this->Form->create('Technicalqualification');?>
	<fieldset>
		<legend><?php __('Edit Technicalqualification'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('placement_id');
		echo $this->Form->input('exam_passed');
		echo $this->Form->input('year_of_passing');
		echo $this->Form->input('board');
		echo $this->Form->input('average_marks');
		echo $this->Form->input('remarks');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Technicalqualification.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Technicalqualification.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List TechnicalDetails', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Placements', true), array('controller' => 'placements', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Placement', true), array('controller' => 'placements', 'action' => 'add')); ?> </li>
	</ul>
</div>