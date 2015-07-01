<div class="placements view">
<h2><?php  __('Placement');?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['id']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Form For'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['form_for']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Branch'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['branch']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Category'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['category']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Stu Name'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['stu_name']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Father Name'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['father_name']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Resi Address'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['resi_address']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Present Address'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['present_address']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Stu Contact No'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['stu_contact_no']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Email'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['email']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Guar Contact No'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['guar_contact_no']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Date Of Birth'); ?></dt>
		<dd>
			<?php echo $placement['Placement']['date_of_birth']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Placement', true), array('action' => 'edit', $placement['Placement']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Placement', true), array('action' => 'delete', $placement['Placement']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $placement['Placement']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Placements', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Placement', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php echo __('Related Academicqualifications');?></h3>
	<?php if (!empty($placement['Academicqualification'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Placement Id'); ?></th>
		<th><?php __('Exam Passed'); ?></th>
		<th><?php __('Year Of Passing'); ?></th>
		<th><?php __('Board'); ?></th>
		<th><?php __('Average Marks'); ?></th>
		<th><?php __('Subject Taken'); ?></th>
		<th><?php __('Remarks'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($placement['Academicqualification'] as $academicqualification):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $academicqualification['id'];?></td>
			<td><?php echo $academicqualification['placement_id'];?></td>
			<td><?php echo $academicqualification['exam_passed'];?></td>
			<td><?php echo $academicqualification['year_of_passing'];?></td>
			<td><?php echo $academicqualification['board'];?></td>
			<td><?php echo $academicqualification['average_marks'];?></td>
			<td><?php echo $academicqualification['subject_taken'];?></td>
			<td><?php echo $academicqualification['remarks'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'academicqualifications', 'action' => 'view', $academicqualification['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'academicqualifications', 'action' => 'edit', $academicqualification['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'academicqualifications', 'action' => 'delete', $academicqualification['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $academicqualification['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>
<div class="related">
	<h3><?php echo __('Related Technicalqualifications');?></h3>
	<?php if (!empty($placement['Technicalqualification'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Placement Id'); ?></th>
		<th><?php __('Exam Passed'); ?></th>
		<th><?php __('Year Of Passing'); ?></th>
		<th><?php __('Board'); ?></th>
		<th><?php __('Average Marks'); ?></th>
		<th><?php __('Remarks'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($placement['Technicalqualification'] as $technicalqualification):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $technicalqualification['id'];?></td>
			<td><?php echo $technicalqualification['placement_id'];?></td>
			<td><?php echo $technicalqualification['exam_passed'];?></td>
			<td><?php echo $technicalqualification['year_of_passing'];?></td>
			<td><?php echo $technicalqualification['board'];?></td>
			<td><?php echo $technicalqualification['average_marks'];?></td>
			<td><?php echo $technicalqualification['remarks'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'technicalqualifications', 'action' => 'view', $technicalqualification['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'technicalqualifications', 'action' => 'edit', $technicalqualification['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'technicalqualifications', 'action' => 'delete', $technicalqualification['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $technicalqualification['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>
