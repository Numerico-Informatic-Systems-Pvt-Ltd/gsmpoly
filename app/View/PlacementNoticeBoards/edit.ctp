<div class="placementNoticeBoards form">
<?php echo $this->Form->create('PlacementNoticeBoard');?>
	<fieldset>
		<legend><?php __('Edit Placement Notice Board'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('title');
		echo $this->Form->input('description');
		echo $this->Form->input('url');
		echo $this->Form->input('active');
		echo $this->Form->input('slug');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('PlacementNoticeBoard.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('PlacementNoticeBoard.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Placement Notice Boards', true), array('action' => 'index'));?></li>
	</ul>
</div>