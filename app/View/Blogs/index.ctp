<div class="blogs index">
	<h2><?php __('Blogs');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
<!--			<th><?php echo $this->Paginator->sort('user_id');?></th>-->
			<th><?php echo $this->Paginator->sort('title');?></th>
			<th><?php echo $this->Paginator->sort('slug');?></th>
			<th><?php echo $this->Paginator->sort('body');?></th>			
			<th><?php echo $this->Paginator->sort('tags');?></th>	
                        <th><?php echo $this->Paginator->sort('image'); ?></th>
<!--			<th><?php echo $this->Paginator->sort('posted');?></th>-->
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
        //debug($blogs);
	foreach ($blogs as $blog):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $blog['Blog']['id']; ?>&nbsp;</td>
<!--		<td>
			<?php echo $this->Html->link($blog['User']['id'], array('controller' => 'users', 'action' => 'view', $blog['User']['id'])); ?>
		</td>-->
		<td><?php echo $blog['Blog']['title']; ?>&nbsp;</td>
		<td><?php echo $blog['Blog']['slug']; ?>&nbsp;</td>
		<td><?php echo $blog['Blog']['body']; ?>&nbsp;</td>
		<td><?php echo $blog['Blog']['hits']; ?>&nbsp;</td>
                <td><?php	
			$image_path = $this->params['controller'].'/small/'.$blog['Blog']['image'];
			echo $this->Html->image($image_path);
			 ?>&nbsp;	
		</td>
<!--		<td><?php echo $blog['Blog']['posted']; ?>&nbsp;</td>-->
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $blog['Blog']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $blog['Blog']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $blog['Blog']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $blog['Blog']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Blog', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogcomments', true), array('controller' => 'blogcomments', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blogcomment', true), array('controller' => 'blogcomments', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogscategories', true), array('controller' => 'blogscategories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blogscategory', true), array('controller' => 'blogscategories', 'action' => 'add')); ?> </li>
	</ul>
</div>