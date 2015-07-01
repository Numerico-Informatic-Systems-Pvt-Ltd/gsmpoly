<?php   $this->layout = "admin_layout" ?>
<?php echo $this->Html->css('nis.generic');?>
<div class="noticeBoards index">
	<h2><?php echo __('Notice Boards'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('title'); ?></th>
			<th><?php echo $this->Paginator->sort('description'); ?></th>
			<th><?php echo $this->Paginator->sort('created'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>
	<?php foreach ($noticeBoards as $noticeBoard): ?>
	<tr>
		<td><?php echo h($noticeBoard['NoticeBoard']['title']); ?>&nbsp;</td>
		<td><?php echo substr($noticeBoard['NoticeBoard']['description'],0,255); ?>&nbsp;</td>
		<td><?php echo $this->Time->niceShort($noticeBoard['NoticeBoard']['created']); ?>&nbsp;</td>
        
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $noticeBoard['NoticeBoard']['slug'])); ?>
			<?php echo $this->Html->link(__('Edit'), array('action' => 'edit', $noticeBoard['NoticeBoard']['id'])); ?>
			<?php echo $this->Form->postLink(__('Delete'), array('action' => 'delete', $noticeBoard['NoticeBoard']['id']), null, __('Are you sure you want to delete # %s?', $noticeBoard['NoticeBoard']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Add new Notice'), array('action' => 'add')); ?></li>
	</ul>
</div>
