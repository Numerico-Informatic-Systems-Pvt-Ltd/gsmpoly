<div class="placementCompanies form">
<?php echo $this->Form->create('Placementcompany',array('type' => 'file'));?>
	<fieldset>
		<legend><?php __('Add Placementcompany'); ?></legend>
	<?php
		echo $this->Form->input('weblink');
		//echo $this->Form->input('image');
                echo $this->Form->label('Image:' );
		echo $this->Form->file('Image.name1'); 
		echo $this->Form->input('image',array('type'=>'hidden'));
		echo $this->Form->input('description');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Placementcompanies', true), array('action' => 'index'));?></li>
	</ul>
</div>