<div class="placementNoticeBoards view">
<h2><?php  __('Placement Notice Board');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementNoticeBoard['PlacementNoticeBoard']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Title'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementNoticeBoard['PlacementNoticeBoard']['title']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Description'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementNoticeBoard['PlacementNoticeBoard']['description']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Url'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementNoticeBoard['PlacementNoticeBoard']['url']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Active'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementNoticeBoard['PlacementNoticeBoard']['active']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementNoticeBoard['PlacementNoticeBoard']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementNoticeBoard['PlacementNoticeBoard']['modified']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Slug'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementNoticeBoard['PlacementNoticeBoard']['slug']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Placement Notice Board', true), array('action' => 'edit', $placementNoticeBoard['PlacementNoticeBoard']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Placement Notice Board', true), array('action' => 'delete', $placementNoticeBoard['PlacementNoticeBoard']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $placementNoticeBoard['PlacementNoticeBoard']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Placement Notice Boards', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Placement Notice Board', true), array('action' => 'add')); ?> </li>
	</ul>
</div>
