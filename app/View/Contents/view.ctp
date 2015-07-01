<?php
if (!empty($content['Layout']['name']))
    $this->layout = $content['Layout']['name'];
if (!empty($content['Content']['title']))
    $this->set('title_for_layout', $content['Content']['title'] . '-Gobindapur Sephali Memorial Polytechnic || An ISO Certified, AICTE Approved Polytechnic College - Gobindapur, Bardhaman');
else
    $this->set('title_for_layout', $content['Content']['sub_menu_title'] . '-Gobindapur Sephali Memorial Polytechnic || An ISO Certified, AICTE Approved Polytechnic College - Gobindapur, Bardhaman');
?>
<div class="heading">
    <h1>
        <?php
        $wordChunks = explode(" ", $content['Content']['sub_menu_title']);
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


                        <!-- <div><?php echo $content['Content']['summary']; ?></div> -->

<?php echo $content['Content']['body']; ?>










