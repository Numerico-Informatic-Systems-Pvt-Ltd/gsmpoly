<div class="heading">
    <h1>Albums</h1>
</div>
<?php 
 foreach ($albums as $album) :
?>
<div class="col-lg-4">
    <a href="/albums/all_pictures/<?php echo $album['Album']['id'];?>">
        <div class="gallery">
            <div>
                <?php
                $image_path = $this->params['controller'].'/small/'.$album['Album']['image'];
			echo $this->Html->image($image_path,array('class'=>'img-responsive'));

            ?>
            </div>
            <h4><?php echo $album['Album']['name'];?> </h4>
            <p><?php echo $album['Album']['venue'];?></p> 
        </div>
    </a>
</div>
<?php endforeach;?>

<div class="clearfix"></div>