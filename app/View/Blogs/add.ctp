<?php echo $this->Html->css('nis.generic');?>
<div class="blogs form">
<?php echo $this->Form->create('Blog',array('class'=>'form-horizontal','type'=>'file'));?>
   
	<fieldset>
		<legend><?php __('Add Blog'); ?></legend>
	<?php
		//echo $this->Form->input('user_id');                
       
		echo $this->Form->input('title');                
		echo $this->Form->input('slug');
		echo $this->Form->input('body');
                echo $this->Form->label('Image:' );
		echo $this->Form->file('Image.name1'); 
		echo $this->Form->input('image',array('type'=>'hidden'));
		echo $this->Form->input('hits');
		echo $this->Form->input('tags');
		echo $this->Form->input('blog_comment_count');
		echo $this->Form->input('active');
		echo $this->Form->input('posted');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Blogs', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Users', true), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User', true), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogcomments', true), array('controller' => 'blogcomments', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blogcomment', true), array('controller' => 'blogcomments', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Blogscategories', true), array('controller' => 'blogscategories', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Blogscategory', true), array('controller' => 'blogscategories', 'action' => 'add')); ?> </li>
	</ul>
</div>