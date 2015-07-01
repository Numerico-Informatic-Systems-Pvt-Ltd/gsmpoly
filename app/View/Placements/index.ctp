<div class="placements index">
	<h2><?php __('Placements');?></h2>
        <?php 
echo $this->Html->link('Export',array('controller'=>'placements','action'=>'export'), array('target'=>'_blank'));

?>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('form_for');?></th>
			<th><?php echo $this->Paginator->sort('branch');?></th>
			<th><?php echo $this->Paginator->sort('category');?></th>
			<th><?php echo $this->Paginator->sort('stu_name');?></th>
<!--			<th><?php echo $this->Paginator->sort('father_name');?></th>
			<th><?php echo $this->Paginator->sort('resi_address');?></th>
			<th><?php echo $this->Paginator->sort('present_address');?></th>-->
			<th><?php echo $this->Paginator->sort('stu_contact_no');?></th>
			<th><?php echo $this->Paginator->sort('email');?></th>
<!--			<th><?php echo $this->Paginator->sort('guar_contact_no');?></th>-->
			<th><?php echo $this->Paginator->sort('date_of_birth');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($placements as $placement):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $placement['Placement']['id']; ?>&nbsp;</td>
		<td><?php echo $placement['Placement']['form_for']; ?>&nbsp;</td>
		<td><?php echo $placement['Placement']['branch']; ?>&nbsp;</td>
		<td><?php echo $placement['Placement']['category']; ?>&nbsp;</td>
		<td><?php echo $placement['Placement']['stu_name']; ?>&nbsp;</td>
<!--		<td><?php echo $placement['Placement']['father_name']; ?>&nbsp;</td>
		<td><?php echo $placement['Placement']['resi_address']; ?>&nbsp;</td>
		<td><?php echo $placement['Placement']['present_address']; ?>&nbsp;</td>-->
		<td><?php echo $placement['Placement']['stu_contact_no']; ?>&nbsp;</td>
		<td><?php echo $placement['Placement']['email']; ?>&nbsp;</td>
<!--		<td><?php echo $placement['Placement']['guar_contact_no']; ?>&nbsp;</td>-->
		<td><?php echo $placement['Placement']['date_of_birth']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $placement['Placement']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $placement['Placement']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $placement['Placement']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $placement['Placement']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page %page% of %pages%, showing %current% records out of %count% total, starting on record %start%, ending on %end%', true)
	));
	?>	</p>

	<div class="paging">
		<?php echo $this->Paginator->prev('<< ' . __('previous', true), array(), null, array('class'=>'disabled'));?>
	 | 	<?php echo $this->Paginator->numbers();?>
 |
		<?php echo $this->Paginator->next(__('next', true) . ' >>', array(), null, array('class' => 'disabled'));?>
	</div>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Placement', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New AcademicDetails', true), array('controller' => 'academicqualifications', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New TechnicalDetails', true), array('controller' => 'technicalqualifications', 'action' => 'add')); ?> </li>
	</ul>
</div>