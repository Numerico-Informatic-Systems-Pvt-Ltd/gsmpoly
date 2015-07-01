<?php   $this->layout = "admin_layout" ?>
<?php echo $this->Html->css('nis.generic');?>
<div class="noticeBoards form">
<?php echo $this->Form->create('NoticeBoard',array('type'=>'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Notice Board'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('description');
		echo $this->Form->label('Document:' );
		echo $this->Form->file('NoticeBoard.url');
		echo $this->Form->input('active',array('type'=>'hidden','value'=>1));
                echo $this->Form->input('slug');
	?>
	</fieldset>
    
<?php echo $this->Form->end(__('Submit')); ?>
    
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Notice Boards'), array('action' => 'index')); ?></li>
	</ul>
</div>