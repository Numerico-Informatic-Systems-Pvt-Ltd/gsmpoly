
<?php echo $this->Html->css('nis.generic');?>
<div class="noticeBoards view">
    <div class="heading">
    <h1>
        <?php
        $wordChunks = explode(" ", $noticeBoard['NoticeBoard']['title']);
        for ($i = 0; $i < count($wordChunks); $i++) {
            if ($i == 0) {
                $string = $wordChunks[$i] . " <span>";
            } else {
                $string .= " ".$wordChunks[$i];
            }
        }
        $string .= '</span>';
        echo $string;
        ?>

    </h1>
</div>
	
	<p><?php  echo $noticeBoard['NoticeBoard']['description'] ?></p>
	
</div>

<div class="actions">
	<h3><?php echo __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Notice Board'), array('action' => 'edit', $noticeBoard['NoticeBoard']['id'])); ?> </li>
		<li><?php echo $this->Form->postLink(__('Delete Notice Board'), array('action' => 'delete', $noticeBoard['NoticeBoard']['id']), null, __('Are you sure you want to delete # %s?', $noticeBoard['NoticeBoard']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Notice Boards'), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Notice Board'), array('action' => 'add')); ?> </li>
	</ul>
</div>