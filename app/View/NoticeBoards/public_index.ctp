<div class="noticeBoards index">
	<h2><?php echo __('Notice Boards'); ?></h2>
	<table>
	<tr class="link-button">
			<td class="box"><?php echo 'Title'; ?></td>
			<td class="box"><?php echo 'Description'; ?></td>
			<td class="box"><?php echo 'Created on' ?></td>
			<td class="box"><?php echo __('Actions'); ?></td>
	</tr>
	<?php foreach ($noticeBoards as $noticeBoard): ?>
	<tr class="up3">
		<td class="box"><?php echo ($noticeBoard['NoticeBoard']['title']); ?></td>
		<td class="box"><?php echo substr($noticeBoard['NoticeBoard']['description'],0,250); ?></td>
		<td class="box"><?php echo $this->Time->niceShort($noticeBoard['NoticeBoard']['created']); ?></td>
		<td class="actions">
			<?php echo $this->Html->link(__('View'), array('action' => 'view', $noticeBoard['NoticeBoard']['slug'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p><h3>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</h3></p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>
</div>
