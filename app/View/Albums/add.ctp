<?php echo $this->Html->css('nis.generic');?>
<div class="albums form">
<?php echo $this->Form->create('Album',array('type' => 'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Album'); ?></legend>
	<?php
		echo $this->Form->input('name');
		echo $this->Form->input('event');
		echo $this->Form->input('venue');
		echo $this->Form->input('schedule');

		/* handing image */
		echo $this->Form->label('Image:' );
		echo $this->Form->file('Image.name1'); 
		echo $this->Form->input('image',array('type'=>'hidden'));
		
		echo $this->Form->input('description');

	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Albums'), array('action' => 'index')); ?></li>
		<!--<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Pictures'), array('controller' => 'pictures', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Picture'), array('controller' => 'pictures', 'action' => 'add')); ?> </li>-->
	</ul>
</div>
