
<div class="blogs view">
<h2><?php  __('Blog');?></h2>
	<h2><?php  echo __('Id'); ?></h2>
	<dl>
		<dt><?php echo __('User Id'); ?></dt>
		<dd>
			<?php echo $blog['Blog']['id']; ?>
			&nbsp;
		</dd>
                <dt><?php echo __('Title'); ?></dt>
		<dd>
			<?php echo $blog['Blog']['title']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Tags'); ?></dt>
		<dd>
			<?php echo $blog['Blog']['tags']; ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Comment'); ?></dt>
		<dd>
			<?php echo $blog['Blog']['body']; ?>
			&nbsp;
		</dd>

		
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Blog', true), array('action' => 'edit', $blog['Blog']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Blog', true), array('action' => 'delete', $blog['Blog']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $blog['Blog']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogs', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blog', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogcomments', true), array('controller' => 'blogcomments', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blogcomment', true), array('controller' => 'blogcomments', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogscategories', true), array('controller' => 'blogscategories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blogscategory', true), array('controller' => 'blogscategories', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Related Blogcomments');?></h3>
	<?php if (!empty($blog['Blogcomment'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('User Id'); ?></th>
		<th><?php __('Blog Id'); ?></th>
		<th><?php __('Name'); ?></th>
		<th><?php __('Email'); ?></th>
		<th><?php __('Url'); ?></th>
		<th><?php __('Comment'); ?></th>
		<th><?php __('Active'); ?></th>
		<th><?php __('Created'); ?></th>
		<th><?php __('Modified'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($blog['Blogcomment'] as $blogcomment):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $blogcomment['id'];?></td>
			<td><?php echo $blogcomment['user_id'];?></td>
			<td><?php echo $blogcomment['blog_id'];?></td>
			<td><?php echo $blogcomment['name'];?></td>
			<td><?php echo $blogcomment['email'];?></td>
			<td><?php echo $blogcomment['url'];?></td>
			<td><?php echo $blogcomment['comment'];?></td>
			<td><?php echo $blogcomment['active'];?></td>
			<td><?php echo $blogcomment['created'];?></td>
			<td><?php echo $blogcomment['modified'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'blogcomments', 'action' => 'view', $blogcomment['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'blogcomments', 'action' => 'edit', $blogcomment['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'blogcomments', 'action' => 'delete', $blogcomment['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $blogcomment['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Blogcomment', true), array('controller' => 'blogcomments', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>
<div class="related">
	<h3><?php __('Related Blogscategories');?></h3>
	<?php if (!empty($blog['Blogscategory'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Blog Id'); ?></th>
		<th><?php __('Category Id'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($blog['Blogscategory'] as $blogscategory):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $blogscategory['id'];?></td>
			<td><?php echo $blogscategory['blog_id'];?></td>
			<td><?php echo $blogscategory['category_id'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'blogscategories', 'action' => 'view', $blogscategory['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'blogscategories', 'action' => 'edit', $blogscategory['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'blogscategories', 'action' => 'delete', $blogscategory['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $blogscategory['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Blogscategory', true), array('controller' => 'blogscategories', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>
