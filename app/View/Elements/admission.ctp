<div class="admission">
    <div class="col-lg-9 admission_lt">
        <?php
        echo $this->Html->image('/images/admission_img.jpg', array(
            'alt' => 'Admission', 'class' => 'img-responsive'));
        $menus = $this->requestAction('menus/get_tree');
        ?>

    </div>
    <div class="col-lg-3 admission_rt">
        <h3>Admission</h3>
        <p style="font-size: 15px;">Click 
            <!--            <a href="#">Here</a> -->
            <?php
            foreach ($menus as $menu) {
                foreach ($menu['Content'] as $content):
                    ?>
                    <?php
                    if ($content['visible'] == true) {
                        if ($content['slug'] == 'admission-procedure')
                            echo $this->Html->link(
                                    'Here', array('plugin' => false,
                                'controller' => 'contents',
                                'action' => 'view',
                                $content['slug']));
                    } endforeach;
            }
            ?>for More Information
            Contacts : <br>+91-8900329343<br>+91-9647608366<br>+91-8640967103 </p>
    </div>
    <div class="clearfix"></div>
</div>
