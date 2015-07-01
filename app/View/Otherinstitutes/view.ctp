<div class="otherinstitutes view">
<h2><?php  __('Otherinstitute');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $otherinstitute['Otherinstitute']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $otherinstitute['Otherinstitute']['name']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Content'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $otherinstitute['Otherinstitute']['content']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Link'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $otherinstitute['Otherinstitute']['link']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $otherinstitute['Otherinstitute']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $otherinstitute['Otherinstitute']['modified']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Otherinstitute', true), array('action' => 'edit', $otherinstitute['Otherinstitute']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Otherinstitute', true), array('action' => 'delete', $otherinstitute['Otherinstitute']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $otherinstitute['Otherinstitute']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Otherinstitutes', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Otherinstitute', true), array('action' => 'add')); ?> </li>
	</ul>
</div>
