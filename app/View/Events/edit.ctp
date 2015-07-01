<?php   $this->layout = "admin_layout" ?>
<?php echo $this->Html->css('nis.generic');?>

<div class="events form">
<?php echo $this->Form->create('Event',array('type'=>'file')); ?>
	<fieldset>
		<legend><?php echo __('Edit Event'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('description',array('class'=>'mceNoEditor'));
		echo $this->Form->input('venue',array('class'=>'mceNoEditor'));
		echo $this->Form->input('started');
		echo $this->Form->input('ended');

		/* handing image */
		echo $this->Form->label('Image:' );
		echo $this->Form->file('Image.name1'); 
		echo $this->Form->input('image',array('type'=>'hidden'));               
		if(!empty($this->request->data['Event']['image']))
                {
                    $image_path = '/img/events/small/'.$this->request->data['Event']['image'];
                    echo $this->Html->image($image_path); 
                }	
		


//		echo $this->Form->input('document');
		echo $this->Form->input('active');
		echo $this->Form->input('posted');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $this->Form->value('Event.id')), null, __('Are you sure you want to delete # %s?', $this->Form->value('Event.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Events'), array('action' => 'index')); ?></li>
		<!--<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>-->
	</ul>
</div>
