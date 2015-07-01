<?php $this->layout = "admin_layout" ?><div class="contents form">
<?php echo $this->Form->create('Content'); ?>
	<fieldset>
		<legend><?php echo __('Add Content'); ?></legend>
	<?php
		echo $this->Form->input('user_id',array('type'=>'hidden'));
		echo $this->Form->input('menu_id');
		echo $this->Form->input('sub_menu_title');
		echo $this->Form->input('layout_id');
		echo $this->Form->input('title');
		echo $this->Form->input('summary');
		echo $this->Form->input('body');
		echo $this->Form->input('slug');
		echo $this->Form->input('draft');
		echo $this->Form->input('visible');
	?>
	</fieldset>
<?php // echo $this->Form->end(__('Submit',array(onclick="form.submit()))); ?>
        <div class="submit">
            <input type="button" onclick="form.submit()"  value="submit"/>
        </div>
</div>
<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Contents'), array('action' => 'index')); ?></li>
		<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Menus'), array('controller' => 'menus', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Menu'), array('controller' => 'menus', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Layouts'), array('controller' => 'layouts', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Layout'), array('controller' => 'layouts', 'action' => 'add')); ?> </li>
	</ul>
</div>
