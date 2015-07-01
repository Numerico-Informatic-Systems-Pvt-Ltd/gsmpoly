<?php
$events = $this->requestAction('events/list_all_event');
$i = 1;
foreach ($events as $event) {
    ?>
    <h4> <?php echo $i . ')&nbsp;';
    echo $this->Html->link($event['Event']['title'], array('plugin' => false, 'controller' => 'Events',
        'action' => 'list_all_event', $event['Event']['slug']));
    ?></h4>
    <p align="justify"> <?php echo $event['Event']['description']; ?></p> 
    <?php $i ++;
} ?>