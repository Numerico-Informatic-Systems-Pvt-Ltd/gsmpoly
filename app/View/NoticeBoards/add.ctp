<?php $this->layout = "admin_layout" ?>
<div class="noticeBoards form">
<?php echo $this->Form->create('NoticeBoard');?>
	<fieldset>
		<legend><?php __('Add Notice Board'); ?></legend>
	<?php
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

		<li><?php echo $this->Html->link(__('List Notice Boards', true), array('action' => 'index'));?></li>
	</ul>
</div>