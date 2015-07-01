<?php
//$blog_details = $this->requestAction('blogs/blog_details'); 
//debug($blog);
?>
<div class="heading">
    <h1> Blogs <span>Details</span></h1>
</div>
<div class="blog_list">
    <div class="col-lg-3">

        <?php	
			$image_path = $this->params['controller'].'/small/'.$blog[0]['Blog']['image'];
			echo $this->Html->image($image_path,array('class' => 'img-responsive'));
       ?>
    </div>
    <div class="col-lg-9 blog_list_content">
        <h3><?php echo $blog[0]['Blog']['title']; ?></h3>
        <div class="post">Posted by:</div>
        <div class="admin"><a href="#"><?php echo $blog[0]['User']['username']; ?></a></div>
        <div class="comment"><a href="#">
                <?php
                if ($blog[0]['Blog']['blog_comment_count'] > 1)
                    echo $blog[0]['Blog']['blog_comment_count'] . ' Comments';
                else
                    echo 'No Comments';
                ?>     
            </a></div>
        <p> <?php echo $blog[0]['Blog']['body']; ?></p>
        <div class="clearfix"></div>
    </div>
    <div class="clearfix"></div>
</div>
<?php ?>
<div class="col-lg-12">
    <h3>Comments</h3>
    <?php foreach ($blog[0]['Blogcomment'] as $comment) : ?>
    <?php if($comment['active']) {?>
        <div class="blog_comments">
            <div class="col-lg-2">                
                <?php
               
                echo $this->Html->image('/images/user.png', array(
                    'alt' => 'BlogComment', 'class' => 'img-responsive'));
                ?>

            </div>
            <div class="col-lg-10 blog_comments_content">
                <h3><?php echo $comment['name']; ?></h3>
                <p><?php echo $comment['comment']; ?></p>
                <div class="clearfix"></div>
                <div class="date"><?php echo date('j M Y', strtotime($comment['created'])); ?></div>
                <div class="clearfix"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    <?php }?>
    <?php endforeach; ?>
</div>
<div class="blogs form1">
    <?php echo $this->Form->create('Blogcomment', array('class' => 'form-horizontal')); ?>
    <fieldset>
        <h3>Leave a Reply</h3>
<!--        <legend><?php __('Add Blogcomment'); ?></legend>-->
        <?php
        //debug($this->Session->read('UserAuth.User.id'));
        echo $this->Form->input('user_id', array('type' => 'hidden'));
        echo $this->Form->input('blog_id', array('type' => 'hidden', 'value' => $blog[0]['Blog']['id']));
        echo $this->Form->input('name');
        echo $this->Form->input('email');
        echo $this->Form->input('url');
        echo $this->Form->input('comment', array('class' => 'mceNoEditor'));
        echo $this->Form->input('active', array('type' => 'hidden', 'value' => 0));
        echo $this->Form->input('created', array('type' => 'hidden', 'value' => date("Y-m-d H:i:s")));
        echo $this->Form->input('modified', array('type' => 'hidden', 'value' => date("Y-m-d H:i:s")));
        ?>
    </fieldset>
    <?php echo $this->Form->end(__('Submit', true)); ?>
</div>
<div class="clearfix"></div>
