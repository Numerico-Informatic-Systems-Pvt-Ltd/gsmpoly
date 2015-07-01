<?php
$noticeboards = $this->requestAction('noticeboards/recent');
$i=1;
foreach($noticeboards as $notice)
{ ?>
    <h4> <?php echo $i.')&nbsp;'; echo $this->Html->link($notice['NoticeBoard']['title'],array('plugin'=>false,'controller'=>'NoticeBoards',
							'action'=>'view',$notice['NoticeBoard']['slug']));?></h4>
    
<p align="justify"> <?php echo $notice['NoticeBoard']['description'];?></p> 

        
        
        
        <?php $i ++;} ?>