<?php echo $this->Html->css('nis.generic');?>

<h1 class="headnotice"><?php echo $event['Event']['title']; ?></h1>
	<br />
	<p class="ayurveda"><?php echo $event['Event']['description'] ?></p>
	<p class="folo2">Posted on: &nbsp;<?php echo $this->Time->niceShort($event['Event']['posted']); ?></p>
