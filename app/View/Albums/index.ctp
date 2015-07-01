<!--<div class="albums index">
--><script src="js/jquery.quicksand.js" type="text/javascript"></script>
        <script src="js/jquery.easing.js" type="text/javascript"></script>
        <script src="js/script.js" type="text/javascript"></script>
       	<script src="js/jquery.prettyPhoto.js" type="text/javascript"></script>
	<div class="top">
	<div class="bottom">
	<h1><?php echo __('Pictures'); ?></h1>
    	<div id="gallery_frame"> 
	            <ul class="portfolio-area">	
                	
	<!--<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('name'); ?></th>
			<th><?php echo $this->Paginator->sort('image'); ?></th>
			<th class="actions"><?php echo __('Actions'); ?></th>
	</tr>-->
	<?php
	foreach ($albums as $album): ?>
    		<?php	
			$image_path = 'img/albums/small/'.$album['Album']['image'];
			$image_path_large = 'img/albums/big/'.$album['Album']['image'];
			//$image_path = $this->params['controller'].'/small/'.$album['Album']['image'];
			//$image_path_large = $this->params['controller'].'/big/'.$album['Album']['image'];
			//echo $this->Html->image($image_path);
			 ?>
    		<li class="portfolio-item2" data-id="id-0" data-type="cat-item-4">	
            <div><span class="image-block"><a class="image-zoom" href="<?php echo $image_path_large; ?>" rel="prettyPhoto[gallery]" 
            title="<?php echo $album['Album']['name']; ?>">
            <a class="image-zoom" href="<?php echo $image_path_large; ?>" rel="prettyPhoto[gallery]" title="<?php echo $album['Album']['name']; ?>">
            <img width="170" height="140" src="<?php echo $image_path_large; ?>" alt="<?php echo $album['Album']['name']; ?>" 
            title="<?php echo $album['Album']['name']; ?>" /></a></span>
			          <div class="home-portfolio-text">
					<h2 class="post-title-portfolio"><a href="" rel="bookmark" title="<?php echo $album['Album']['name']; ?>">
					<?php echo $album['Album']['name']; ?></a></h2>
                    <p class="post-subtitle-portfolio">released: <?php echo $album['Album']['created']; ?></p>
					</div>
                    
			</div>	
            </li>
	<?php endforeach; ?>
     </ul></div>
	<!--</table>-->
    <span class="style-h2">
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
	));
	?>	</p>
</span>
	<!--<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
		echo $this->Paginator->numbers(array('separator' => ''));
		echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
	?>
	</div>-->
 
</div>
</div>
</div>
<!--<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Album'), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Users'), array('controller' => 'users', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New User'), array('controller' => 'users', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Pictures'), array('controller' => 'pictures', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Picture'), array('controller' => 'pictures', 'action' => 'add')); ?> </li>
	</ul>
</div>
-->
 <script type="text/javascript">
var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"/SpryAssets/SpryMenuBarDownHover.gif", imgRight:"/SpryAssets/SpryMenuBarRightHover.gif"});
</script>