<div class="placementNoticeBoards index">
	<h2><?php __('Placement Notice Boards');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('description');?></th>
			<th><?php echo $this->Paginator->sort('url');?></th>
			<th><?php echo $this->Paginator->sort('active');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th><?php echo $this->Paginator->sort('slug');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($placementNoticeBoards as $placementNoticeBoard):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $placementNoticeBoard['PlacementNoticeBoard']['id']; ?>&nbsp;</td>
		<td><?php echo $placementNoticeBoard['PlacementNoticeBoard']['title']; ?>&nbsp;</td>
		<td><?php echo substr($placementNoticeBoard['PlacementNoticeBoard']['description'],0,200); ?>&nbsp;</td>
		<td><?php echo $placementNoticeBoard['PlacementNoticeBoard']['url']; ?>&nbsp;</td>
		<td><?php echo $placementNoticeBoard['PlacementNoticeBoard']['active']; ?>&nbsp;</td>
		<td><?php echo $placementNoticeBoard['PlacementNoticeBoard']['created']; ?>&nbsp;</td>
		<td><?php echo $placementNoticeBoard['PlacementNoticeBoard']['modified']; ?>&nbsp;</td>
		<td><?php echo $placementNoticeBoard['PlacementNoticeBoard']['slug']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $placementNoticeBoard['PlacementNoticeBoard']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $placementNoticeBoard['PlacementNoticeBoard']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $placementNoticeBoard['PlacementNoticeBoard']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $placementNoticeBoard['PlacementNoticeBoard']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Placement Notice Board', true), array('action' => 'add')); ?></li>
	</ul>
</div>
