<style>
.noticehe { font-family:arial black,avant garde; }
</style>
<div class="heading">
    <h1>Notice <span>Board</span></h1></div>
<?php
$noticeboards = $this->requestAction('noticeboards/recent');
$i=1;
foreach($noticeboards as $notice)
{ ?>
    <h4> <?php echo $i.')&nbsp;'; echo $this->Html->link($notice['NoticeBoard']['title'],array('plugin'=>false,'controller'=>'NoticeBoards',
							'action'=>'view',$notice['NoticeBoard']['slug']),array('class'=>'noticehe'));?></h4>
    
<p align="justify" style="font-family:arial black,avant garde;"> <?php echo $notice['NoticeBoard']['description'];?></p> 

        
        
        
        <?php $i ++;} ?>