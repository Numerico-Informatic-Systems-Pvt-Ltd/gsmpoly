<div class="blogcomments form">
<?php echo $this->Form->create('Blogcomment');?>
	<fieldset>
		<legend><?php __('Add Blogcomment'); ?></legend>
	<?php
		echo $this->Form->input('user_id');
		echo $this->Form->input('blog_id');
		echo $this->Form->input('name');
		echo $this->Form->input('email');
		echo $this->Form->input('url');
		echo $this->Form->input('comment');
		echo $this->Form->input('active');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Blogcomments', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogs', true), array('controller' => 'blogs', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blog', true), array('controller' => 'blogs', 'action' => 'add')); ?> </li>
	</ul>
</div>