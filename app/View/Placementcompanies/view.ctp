<div class="placementcompanies view">
<h2><?php  __('Placementcompany');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementcompany['Placementcompany']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Weblink'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementcompany['Placementcompany']['weblink']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Image'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementcompany['Placementcompany']['image']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Description'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementcompany['Placementcompany']['description']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Created'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementcompany['Placementcompany']['created']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Modified'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $placementcompany['Placementcompany']['modified']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Placementcompany', true), array('action' => 'edit', $placementcompany['Placementcompany']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Placementcompany', true), array('action' => 'delete', $placementcompany['Placementcompany']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $placementcompany['Placementcompany']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Placementcompanies', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Placementcompany', true), array('action' => 'add')); ?> </li>
	</ul>
</div>
