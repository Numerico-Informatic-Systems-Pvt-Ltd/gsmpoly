<?php
$noticeboards = $this->requestAction('noticeboards/list_all_notice');
$placementnoticeboards = $this->requestAction('placementnoticeboards/list_all_notice');
//debug($noticeboards);
?>  
<div class="notice">
    <div class="notice_head">
    <?php echo $this->Html->link("Notice Board",array('plugin'=>false,'controller'=>'NoticeBoards',
							'action'=>'list_all_notice')); ?>
    
    
    </div>
    <div class="demo1 demof">
        <ul>
           <?php foreach($noticeboards as $notice) {?>
            <li>
                <div class="year"><?php echo date('Y', strtotime($notice['NoticeBoard']['created'])); ?></div>
                <div class="notice_area">
                   <h4> <?php echo $this->Html->link($notice['NoticeBoard']['title'],array('plugin'=>false,'controller'=>'NoticeBoards',
							'action'=>'view',$notice['NoticeBoard']['slug']));?></h4>
                    <h4><?php //echo $notice['NoticeBoard']['title'];?> </h4>
                    <p><?php echo substr($notice['NoticeBoard']['description'], 0, 150).'...';?></p><br />                   
                   
                    <p class="post">Posted on <?php echo date('M j Y', strtotime($notice['NoticeBoard']['created'])); ?></p>
                    <div class="clearfix"></div>
                </div>

                <div class="clearfix"></div>
            </li>
           <?php }?>
            <?php foreach($placementnoticeboards as $pnotice) {?>
            <li>
                <div class="year"><?php echo date('Y', strtotime($pnotice['PlacementNoticeBoard']['created'])); ?></div>
                <div class="notice_area">
                   <h4> <?php echo $this->Html->link($pnotice['PlacementNoticeBoard']['title'],array('plugin'=>false,'controller'=>'PlacementNoticeBoards',
							'action'=>'view',$pnotice['PlacementNoticeBoard']['slug']));?></h4>
                    <h4><?php //echo $notice['NoticeBoard']['title'];?> </h4>
                    <p><?php echo substr($pnotice['PlacementNoticeBoard']['description'], 0, 150).'...';?></p><br />                   
                   
                    <p class="post">Posted on <?php echo date('M j Y', strtotime($pnotice['PlacementNoticeBoard']['created'])); ?></p>
                    <div class="clearfix"></div>
                </div>

                <div class="clearfix"></div>
            </li>
           <?php }?>
        </ul>            
    </div>
</div>
