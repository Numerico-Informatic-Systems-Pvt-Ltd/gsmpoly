<div class="blogcomments view">
<h2><?php  __('Blogcomment');?></h2>
	<dl>
		<dt><?php __('Id'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blogcomment']['id']; ?>
			&nbsp;
		</dd>
		<dt><?php __('User'); ?></dt>
		<dd>
			<?php echo $blogcomment['User']['id']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Blog'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blog']['title']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Name'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blogcomment']['name']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Email'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blogcomment']['email']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Url'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blogcomment']['url']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Comment'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blogcomment']['comment']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Active'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blogcomment']['active']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Created'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blogcomment']['created']; ?>
			&nbsp;
		</dd>
		<dt><?php __('Modified'); ?></dt>
		<dd>
			<?php echo $blogcomment['Blogcomment']['modified']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Blogcomment', true), array('action' => 'edit', $blogcomment['Blogcomment']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Blogcomment', true), array('action' => 'delete', $blogcomment['Blogcomment']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $blogcomment['Blogcomment']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogcomments', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blogcomment', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogs', true), array('controller' => 'blogs', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blog', true), array('controller' => 'blogs', 'action' => 'add')); ?> </li>
	</ul>
</div>
