<div class="heading">
    <h1>
        <?php
        $wordChunks = explode(" ", $pictures[0]['Album']['name']);
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

<?php foreach ($pictures as $picture): ?>
    <div class="col-lg-4">
        <div class="gallery_details">
            <a href="#" data-toggle="modal" data-target="#myModal_<?php echo $picture['Picture']['id'];?>">
                <?php
                $image_path = '/img/pictures/big/' . $picture['Picture']['picture'];
                echo $this->Html->image($image_path, array('class' => 'img-responsive', 'alt' => 'Gobindapur Gallery'));
                ?>        
            </a>
            <div class="modal fade" id="myModal_<?php echo $picture['Picture']['id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>

                        </div>
                        <div class="modal-body">
                            <?php
                            $image_path = '/img/pictures/big/' . $picture['Picture']['picture'];
                            echo $this->Html->image($image_path, array('class' => 'img-responsive', 'alt' => 'Gobindapur Gallery'));
                            ?>                        
                        </div>
                        <div class="modal-footer">
                            <!--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>
