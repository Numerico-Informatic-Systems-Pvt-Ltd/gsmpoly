
	<h1 class="headnotice"><?php echo $noticeBoard['NoticeBoard']['title']; ?></h1>
	<br />
	<p class="ayurveda"><?php echo $noticeBoard['NoticeBoard']['description'] ?></p>
	<p class="folo2">Posted on: &nbsp;<?php echo $this->Time->niceShort($noticeBoard['NoticeBoard']['created']); ?></p>


<!--<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('See Previous Notices'), array('action' => 'index')); ?> </li>
	</ul>
</div>-->