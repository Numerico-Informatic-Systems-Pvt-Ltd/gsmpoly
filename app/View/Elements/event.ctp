<?php
$events = $this->requestAction('events/list_all_event');

?>
<div class="event">
    <div class="event_head">
    <?php echo $this->Html->link('Events',array('plugin'=>false,'controller'=>'events',
							'action'=>'list_all_event'));?>
    </div>
    <div class="demo1 demof">
        <ul>
            <?php foreach($events as $event) {?>
            <li>
                <div class="event_year"><?php echo date('Y', strtotime($event['Event']['posted'])); ?></div>
                <div class="clearfix"></div>
                <div class="event_area">
                    <?php
                    $image_path = $event['Event']['image'];
                    echo $this->Html->image('/images/event_img.jpg', array(
                        'alt' => 'Events', 'class' => 'img-responsive'));
                    ?>        
                    <h4> <?php echo $this->Html->link($event['Event']['title'],array('plugin'=>false,'controller'=>'events',
							'action'=>'public_view',$event['Event']['id']));?></h4>
                    <h4><?php //echo $event['Event']['title'];?></h4>
                    <p><?php echo $event['Event']['description'];?></p><br />
                    
                    <div class="clearfix"></div>
                </div>
                <div class="event_date"><?php echo date('M j Y', strtotime($event['Event']['posted'])); ?></div>
                <div class="clearfix"></div>
            </li>
            <?php }?>
        </ul>

    </div>
</div>