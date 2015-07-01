<?php  $this->layout = "default" ?>
<div class="academicqualifications view">
<h2><?php  __('Academicqualification');?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo $academicqualification['Academicqualification']['id']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Placement'); ?></dt>
		<dd>
			<?php echo $this->Html->link($academicqualification['Placement']['id'], array('controller' => 'placements', 'action' => 'view', $academicqualification['Placement']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Exam Passed'); ?></dt>
		<dd>
			<?php echo $academicqualification['Academicqualification']['exam_passed']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Year Of Passing'); ?></dt>
		<dd>
			<?php echo $academicqualification['Academicqualification']['year_of_passing']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Board'); ?></dt>
		<dd>
			<?php echo $academicqualification['Academicqualification']['board']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Average Marks'); ?></dt>
		<dd>
			<?php echo $academicqualification['Academicqualification']['average_marks']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Subject Taken'); ?></dt>
		<dd>
			<?php echo $academicqualification['Academicqualification']['subject_taken']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Remarks'); ?></dt>
		<dd>
			<?php echo $academicqualification['Academicqualification']['remarks']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit AcademicDetails', true), array('action' => 'edit', $academicqualification['Academicqualification']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete AcademicDetails', true), array('action' => 'delete', $academicqualification['Academicqualification']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $academicqualification['Academicqualification']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List AcademicDetails', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New AcademicDetails', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Placements', true), array('controller' => 'placements', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Placement', true), array('controller' => 'placements', 'action' => 'add')); ?> </li>
	</ul>
</div>
