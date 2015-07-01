<div class="events form">
<?php echo $this->Form->create('Event');?>
	<fieldset>
		<legend><?php __('Add Event',array('type'=>'file')); ?></legend>
	<?php
		echo $this->Form->input('user_id',array('type'=>'hidden'));
		echo $this->Form->input('title');
		echo $this->Form->input('slug');
		echo $this->Form->input('description',array('class'=>'mceNoEditor'));
		echo $this->Form->input('venue',array('class'=>'mceNoEditor'));
		echo $this->Form->input('started');
		echo $this->Form->input('ended');
                echo $this->Form->label('Image:' );
		echo $this->Form->file('Image.name1'); 
		echo $this->Form->input('image',array('type'=>'hidden'));
		echo $this->Form->input('document');
		echo $this->Form->input('active');
		echo $this->Form->input('posted');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Events', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Event Pictures', true), array('controller' => 'event_pictures', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Event Picture', true), array('controller' => 'event_pictures', 'action' => 'add')); ?> </li>
	</ul>
</div>