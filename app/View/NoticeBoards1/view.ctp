<?php echo $this->Html->css('nis.generic');?>

<div class="noticeBoards view">
	<h1><?php echo $noticeBoard['NoticeBoard']['title']; ?></h1>
	<p><?php echo $noticeBoard['NoticeBoard']['description'] ?></p>
	<p><?php echo $this->Time->niceShort($noticeBoard['NoticeBoard']['created']); ?></p>
</div>

<!--<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Notice Board'), array('action' => 'edit', $noticeBoard['NoticeBoard']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Notice Board'), array('action' => 'delete', $noticeBoard['NoticeBoard']['id']), null, __('Are you sure you want to delete # %s?', $noticeBoard['NoticeBoard']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Notice Boards'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Notice Board'), array('action' => 'add')); ?> </li>
	</ul>
</div>-->