
	<div class="heading">
    <h1><?php



 

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
        




?></h1>
</div>
	<br />
	<p class="ayurveda"><?php echo $noticeBoard['NoticeBoard']['description'] ?></p>
	<p class="folo2">Posted on: &nbsp;<?php echo $this->Time->niceShort($noticeBoard['NoticeBoard']['created']); ?></p>



