
<?php echo $this->Html->css('nis.generic');?>

    <div class="heading">
    <h1>
        <?php
        $wordChunks = explode(" ", $placementnoticeBoard['PlacementNoticeBoard']['title']);
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
	
	<p><?php  echo $placementnoticeBoard['PlacementNoticeBoard']['description'] ?></p>
	


