<div class="blogcomments index">
	<h2><?php __('Blogcomments');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('user_id');?></th>
			<th><?php echo $this->Paginator->sort('blog_id');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th><?php echo $this->Paginator->sort('email');?></th>
			<th><?php echo $this->Paginator->sort('url');?></th>
			<th><?php echo $this->Paginator->sort('comment');?></th>
			<th><?php echo $this->Paginator->sort('active');?></th>
			<th><?php echo $this->Paginator->sort('created');?></th>
			<th><?php echo $this->Paginator->sort('modified');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($blogcomments as $blogcomment):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $blogcomment['Blogcomment']['id']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($blogcomment['User']['id'], array('controller' => 'users', 'action' => 'view', $blogcomment['User']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($blogcomment['Blog']['title'], array('controller' => 'blogs', 'action' => 'view', $blogcomment['Blog']['id'])); ?>
		</td>
		<td><?php echo $blogcomment['Blogcomment']['name']; ?>&nbsp;</td>
		<td><?php echo $blogcomment['Blogcomment']['email']; ?>&nbsp;</td>
		<td><?php echo $blogcomment['Blogcomment']['url']; ?>&nbsp;</td>
		<td><?php echo $blogcomment['Blogcomment']['comment']; ?>&nbsp;</td>
		<td><?php echo $blogcomment['Blogcomment']['active']; ?>&nbsp;</td>
		<td><?php echo $blogcomment['Blogcomment']['created']; ?>&nbsp;</td>
		<td><?php echo $blogcomment['Blogcomment']['modified']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $blogcomment['Blogcomment']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $blogcomment['Blogcomment']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $blogcomment['Blogcomment']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $blogcomment['Blogcomment']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Blogcomment', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogs', true), array('controller' => 'blogs', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blog', true), array('controller' => 'blogs', 'action' => 'add')); ?> </li>
	</ul>
</div>
