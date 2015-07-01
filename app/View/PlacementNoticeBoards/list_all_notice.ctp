<div class="heading">
    <h1>Placement <span>Notice Board</span></h1>
</div>
<?php
$placementnoticeboards = $this->requestAction('placementnoticeboards/recent');
$i=1;
foreach($placementnoticeboards as $notice)
{ ?>
    <h4> <?php echo $i.')&nbsp;'; echo $this->Html->link($notice['PlacementNoticeBoard']['title'],array('plugin'=>false,'controller'=>'PlacementNoticeBoards',
							'action'=>'view',$notice['PlacementNoticeBoard']['slug']));?></h4>
    
<p align="justify"> <?php echo $notice['PlacementNoticeBoard']['description'];?></p> 

        
        
        
        <?php $i ++;} ?>
