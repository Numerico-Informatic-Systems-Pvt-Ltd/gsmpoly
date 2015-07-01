<?php   $this->layout = "admin_layout" ?>
<div class="pictures form">
<?php echo $this->Form->create('Picture',array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Picture'); ?></legend>
	<?php
		echo $this->Form->input('album_id');
		echo $this->Form->input('name');
		echo $this->Form->label('Picture:' );
		echo $this->Form->file('Image.name1'); 
		echo $this->Form->input('picture',array('type'=>'hidden'));
		echo $this->Form->input('description');


	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Pictures'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Albums'), array('controller' => 'albums', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Album'), array('controller' => 'albums', 'action' => 'add')); ?> </li>
	</ul>
</div>
