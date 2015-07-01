
<?php $placement = $this->requestAction('/Placements/placement_for_homepage');
?>
<div class="place_lt">&nbsp;</div>
<div class="place_rt">
    <h2>Placement</h2>
    <div class="demo1 demof1">
        <ul>
            <li>   
                <div class="place_logo">
                    <?php
                    echo $this->Html->image('/images/placement_logo1.png', array(
                        'alt' => 'TATA', 'class' => 'img-responsive'));
                    ?>       
                </div>
            </li>   
            <li>  
                <div class="place_logo">
                    <?php
                    echo $this->Html->image('/images/placement_logo2.png', array(
                        'alt' => 'TATA', 'class' => 'img-responsive'));
                    ?>
                </div>
            </li>   
            <li>  
                <div class="place_logo">
                    <?php
                    echo $this->Html->image('/images/placement_logo3.png', array(
                        'alt' => 'TATA', 'class' => 'img-responsive'));
                    ?>
                </div>
            </li>   
            <li>
                <div class="place_logo">
                    <?php
                    echo $this->Html->image('/images/placement_logo4.png', array(
                        'alt' => 'TATA', 'class' => 'img-responsive'));
                    ?>
                </div>
            </li>   
            <li>
                <div class="place_logo">
                    <?php
                    echo $this->Html->image('/images/placement_logo4.png', array(
                        'alt' => 'TATA', 'class' => 'img-responsive'));
                    ?>
                </div>
            </li>
        </ul>
    </div>
    <div class="bu_placement" value="">
            <?php
            echo $this->Html->link('Click to Register', array('plugin' => false, 'controller' => 'placements',
                'action' => 'add'));
            ?>
    </div>
    <div class="clearfix"></div>
</div>
<div class="clearfix"></div>
