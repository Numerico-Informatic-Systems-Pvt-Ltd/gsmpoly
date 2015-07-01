<div class="pictures view">
<h2><?php  echo __('Picture'); ?></h2>
	<dl>
		<dt><?php echo __('Album'); ?></dt>
		<dd>
			<?php echo $this->Html->link($picture['Album']['name'], array('controller' => 'albums', 'action' => 'view', $picture['Album']['id'])); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Name'); ?></dt>
		<dd>
			<?php echo h($picture['Picture']['name']); ?>
			&nbsp;
		</dd>
		<dt><?php echo __('Picture'); ?></dt>
		<dd>
			<?php 	$image_path = $this->params['controller'].'/small/'.$picture['Picture']['picture'];
					echo $this->Html->image($image_path);
			 ?>
			&nbsp;
		</dd>
   		<dt><?php echo __('Description'); ?></dt>
		<dd>
			<?php echo h($picture['Picture']['description']); ?>
			&nbsp;
		</dd>

	</dl>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Picture'), array('action' => 'edit', $picture['Picture']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Picture'), array('action' => 'delete', $picture['Picture']['id']), null, __('Are you sure you want to delete # %s?', $picture['Picture']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Pictures'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Picture'), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Albums'), array('controller' => 'albums', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Album'), array('controller' => 'albums', 'action' => 'add')); ?> </li>
	</ul>
</div>
