<?php 
 if($this->Session->read('UserAuth.User.id') == 1){
 $this->layout = "admin_layout" ;
}
?>
<div class="heading">
<h1>Add  <span>Technical Qualification</span></h1>
</div>

<?php echo $this->Form->create('Technicalqualification');?>
	<fieldset>
		
	<?php
		echo $this->Form->input('placement_id',array('value'=>$this->params['pass'][0],'type'=>'hidden'));
		echo $this->Form->input('exam_passed');
		echo $this->Form->input('year_of_passing');
		echo $this->Form->input('board');
		echo $this->Form->input('average_marks');
		echo $this->Form->input('remarks');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>

<!--<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List TechnicalDetails', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Placements', true), array('controller' => 'placements', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Placement', true), array('controller' => 'placements', 'action' => 'add')); ?> </li>
	</ul>
</div>-->