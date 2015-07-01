<div class="otherinstitutes index">
	<h2><?php __('Otherinstitutes');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th><?php echo $this->Paginator->sort('content');?></th>
			<th><?php echo $this->Paginator->sort('link');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($otherinstitutes as $otherinstitute):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $otherinstitute['Otherinstitute']['id']; ?>&nbsp;</td>
		<td><?php echo $otherinstitute['Otherinstitute']['name']; ?>&nbsp;</td>
		<td><?php echo $otherinstitute['Otherinstitute']['content']; ?>&nbsp;</td>
		<td><?php echo $otherinstitute['Otherinstitute']['link']; ?>&nbsp;</td>
		<td><?php echo $otherinstitute['Otherinstitute']['created']; ?>&nbsp;</td>
		<td><?php echo $otherinstitute['Otherinstitute']['modified']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $otherinstitute['Otherinstitute']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $otherinstitute['Otherinstitute']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $otherinstitute['Otherinstitute']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $otherinstitute['Otherinstitute']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Otherinstitute', true), array('action' => 'add')); ?></li>
	</ul>
</div>