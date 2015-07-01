<?php echo $this->Html->css('nis.generic');?>

<div class="events form">

<?php echo $this->Html->script('tiny_mce/tiny_mce'); ?>

<script type="text/javascript">
tinyMCE.init({
	theme : "advanced",
    mode : "exact",
	elements : "EventDescription,EventVenue",
	extended_valid_elements : "iframe[src|width|height|name|align]",
    convert_urls : false,
});
</script>

<?php echo $this->Form->create('Event',array('type'=>'file')); ?>
	<fieldset>
		<legend><?php echo __('Add Event'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('description',array('class'=>'mceNoEditor'));
                echo $this->Form->input('slug');
		echo $this->Form->input('venue',array('class'=>'mceNoEditor'));
		echo $this->Form->input('started',array('class'));
		echo $this->Form->input('ended');
		/* handing image */
		echo $this->Form->label('Image:' );
		echo $this->Form->file('Image.name1'); 
		echo $this->Form->input('image',array('type'=>'hidden'));
		echo $this->Form->input('document');	
		echo $this->Form->input('active',array('checked'=>true));
		echo $this->Form->input('posted');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit')); ?>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Events'), array('action' => 'index')); ?></li>
		<!--<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>-->
	</ul>
</div>
