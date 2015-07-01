<?php
$slider = $this->requestAction('sliders/list_all_slider');
?>

<!--<div class="banner">-->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
         <?php $i=0; foreach ($slider as $key => $image) { ?>

            <?php
            if ($key == 0) {
                ?>
                <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i;?>" class="active"></li>
                    <?php
                } else {
                    ?>
                   <li data-target="#carousel-example-generic" data-slide-to="<?php echo $i; ?>" ></li>
                        <?php
         } 
         $i++;
                }
                    ?>
        
        
        
<!--        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>-->
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

        <?php foreach ($slider as $key => $image) { ?>

            <?php
            if ($key == 0) {
                ?>
                <div class="item active">
                    <?php
                } else {
                    ?>
                    <div class="item">
                        <?php
                    }
                    ?>

                    <?php $imagepath = '/img/sliders/big/'.$image['Slider']['image'] ;
                            
                            echo $this->Html->image($imagepath, array(
                'alt' => 'Banner', 'class' => 'slider'));
                            ?>
                </div>

            <?php } ?>

            <!--                <div class="item">
            <?php echo $this->Html->image('/images/banner.jpg', array(
                'alt' => 'Banner', 'class' => 'slider'));
            ?>
                               
                            </div>
                            <div class="item">
            <?php echo $this->Html->image('/images/banner.jpg', array(
                'alt' => 'Banner', 'class' => 'slider'));
            ?>
                                
                            </div>-->
        </div>

    </div>
    <!--</div>-->
    <div class="clearfix"></div>





