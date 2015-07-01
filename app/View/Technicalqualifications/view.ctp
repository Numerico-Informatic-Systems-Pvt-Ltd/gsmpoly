<div class="technicalqualifications view">
<h2><?php  __('Technicalqualification');?></h2>
	<dl>
		<dt><?php echo __('Id'); ?></dt>
		<dd>
			<?php echo $technicalqualification['Technicalqualification']['id']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Placement'); ?></dt>
		<dd>
			<?php echo $this->Html->link($technicalqualification['Placement']['id'], array('controller' => 'placements', 'action' => 'view', $technicalqualification['Placement']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Exam Passed'); ?></dt>
		<dd>
			<?php echo $technicalqualification['Technicalqualification']['exam_passed']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Year Of Passing'); ?></dt>
		<dd>
			<?php echo $technicalqualification['Technicalqualification']['year_of_passing']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Board'); ?></dt>
		<dd>
			<?php echo $technicalqualification['Technicalqualification']['board']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Average Marks'); ?></dt>
		<dd>
			<?php echo $technicalqualification['Technicalqualification']['average_marks']; ?>
			&nbsp;
		</dd>
		<dt><?php  echo __('Remarks'); ?></dt>
		<dd>
			<?php echo $technicalqualification['Technicalqualification']['remarks']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit TechnicalDetails', true), array('action' => 'edit', $technicalqualification['Technicalqualification']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete TechnicalDetails', true), array('action' => 'delete', $technicalqualification['Technicalqualification']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $technicalqualification['Technicalqualification']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List TechnicalDetails', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New TechnicalDetails', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Placements', true), array('controller' => 'placements', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Placement', true), array('controller' => 'placements', 'action' => 'add')); ?> </li>
	</ul>
</div>
