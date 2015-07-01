<?php 
$this->set('title_for_layout', 'Placement Form-Gobindapur Sephali Memorial Polytechnic || An ISO Certified, AICTE Approved Polytechnic College - Gobindapur, Bardhaman');
 if($this->Session->read('UserAuth.User.id') == 1){
 $this->layout = "admin_layout" ;
}
?>
<div class="heading">
<h1>Placement <span>Form</span></h1>
</div>
<?php echo $this->Form->create('Placement');?>
	<fieldset>
		
	<?php
		echo $this->Form->input('form_for');
		echo $this->Form->input('branch');
		echo $this->Form->input('category');
		echo $this->Form->input('stu_name');
		echo $this->Form->input('father_name');
		echo $this->Form->input('resi_address');
		echo $this->Form->input('present_address');
		echo $this->Form->input('stu_contact_no');
		echo $this->Form->input('email');
		echo $this->Form->input('guar_contact_no');
		echo $this->Form->input('date_of_birth');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>

<!--<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Placements', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'add')); ?> </li>
	</ul>
</div>-->