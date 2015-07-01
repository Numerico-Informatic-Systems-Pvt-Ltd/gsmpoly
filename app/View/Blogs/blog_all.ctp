<div class="heading">
    <h1> Blogs </h1>
</div>
<?php
$blogs = $this->requestAction('blogs/blog_all');
//debug($blogs);
foreach ($blogs as $blog):
    ?>

    <div class="blog_list">
        <div class="col-lg-3">
            <?php
            $image_path = $this->params['controller'].'/small/'.$blog['Blog']['image'];
			echo $this->Html->image($image_path,array('class' => 'img-responsive'));
            
            ?>
        </div>
        <div class="col-lg-9 blog_list_content">
            <h3><?php echo $blog['Blog']['title']; ?></h3>
            <div class="post">Posted by:</div>
            <div class="admin"><a href="#"><?php echo $blog['User']['username']; ?></a></div>
            <div class="comment"><a href="/blogs/blog_details/<?php echo $blog['Blog']['slug']; ?>">
                    <?php
                    if ($blog['Blog']['blog_comment_count'] > 1)
                        echo $blog['Blog']['blog_comment_count'] . ' Comments';
                    else
                        echo 'No Comments';
                    ?>                 


                </a></div>
            <p align="justify"><?php echo substr($blog['Blog']['body'], 0, 200); ?></p>
            <div class="clearfix"></div>
            <div class="date pull-left"><?php echo date('j M Y', strtotime($blog['Blog']['posted'])); ?></div>
            <a href="/blogs/blog_details/<?php echo $blog['Blog']['slug']; ?>" class="more pull-right">Read More...</a>

            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
<?php endforeach; ?>      
<div class="clearfix"></div>
<span class="style-h2">
    <p>
        <?php
        echo $this->Paginator->counter(array(
            'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
        ));
        ?>	</p>
</span>
<div style="margin-bottom: 20px;">
    <div class="paging">
        <?php
        echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
        echo $this->Paginator->numbers(array('separator' => ''));
        echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
        ?>
    </div>
    <!--    <ul class="pagination">
            <li><a href="#"><span aria-hidden="true">&laquo;</span><span class="sr-only">Previous</span></a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#"><span aria-hidden="true">&raquo;</span><span class="sr-only">Next</span></a></li>
            <div class="clearfix"></div>
        </ul>-->
</div>