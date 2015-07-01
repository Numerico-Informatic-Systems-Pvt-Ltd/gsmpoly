<div class="noticeBoards view">
<h2><?php  __('Notice Board');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt><?php __('Id'); ?></dt>
		<dd>
			<?php echo $noticeBoard['NoticeBoard']['id']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Title'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $noticeBoard['NoticeBoard']['title']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Description'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $noticeBoard['NoticeBoard']['description']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Url'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $noticeBoard['NoticeBoard']['url']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Active'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $noticeBoard['NoticeBoard']['active']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $noticeBoard['NoticeBoard']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $noticeBoard['NoticeBoard']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Slug'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $noticeBoard['NoticeBoard']['slug']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Notice Board', true), array('action' => 'edit', $noticeBoard['NoticeBoard']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Notice Board', true), array('action' => 'delete', $noticeBoard['NoticeBoard']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $noticeBoard['NoticeBoard']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Notice Boards', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Notice Board', true), array('action' => 'add')); ?> </li>
	</ul>
</div>
