<div class="events index">
	<h2><?php __('Events');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('user_id');?></th>
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('slug');?></th>
			<th><?php echo $this->Paginator->sort('description');?></th>
			<th><?php echo $this->Paginator->sort('venue');?></th>
			<th><?php echo $this->Paginator->sort('started');?></th>
			<th><?php echo $this->Paginator->sort('ended');?></th>
			<th><?php echo $this->Paginator->sort('image');?></th>
			<th><?php echo $this->Paginator->sort('document');?></th>
			<th><?php echo $this->Paginator->sort('active');?></th>
			<th><?php echo $this->Paginator->sort('posted');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($events as $event):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $event['Event']['id']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($event['User']['id'], array('controller' => 'users', 'action' => 'view', $event['User']['id'])); ?>
		</td>
		<td><?php echo $event['Event']['title']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['slug']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['description']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['venue']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['started']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['ended']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['image']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['document']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['active']; ?>&nbsp;</td>
		<td><?php echo $event['Event']['posted']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $event['Event']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $event['Event']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $event['Event']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $event['Event']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Event', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Event Pictures', true), array('controller' => 'event_pictures', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Event Picture', true), array('controller' => 'event_pictures', 'action' => 'add')); ?> </li>
	</ul>
</div>