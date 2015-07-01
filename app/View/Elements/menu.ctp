<?php
$menus = $this->requestAction('menus/get_tree');
$i = 1;
?>
<nav class="menu">
    <div class="nav-toggle dropdown"><a>Navigation</a></div>
    <ul>
        <li class="dropdown m0"><a href="/">HOME</a>
                    
                </li>
        <?php
        foreach ($menus as $menu):
            if ($menu['Menu']['position'] == 'navigation') {
                ?>
                <li class="dropdown <?php echo 'm' . $i; ?>"><a><?= $menu['Menu']['name']; ?></a>
                    <ul class="arrow_box">
                        <?php foreach ($menu['Content'] as $content): ?>
                            <?php
                            if ($content['visible'] == true) {
                                if($content['sub_menu_title'] == 'PLACEMENT NOTICE'){ ?>
                                    <li>                                    
                                    <?php
                                    echo $this->Html->link(
                                            $content['sub_menu_title'], array('plugin' => false,
                                        'controller' => 'PlacementNoticeBoards',
                                        'action' => 'list_all_notice'));
                                    ?>
                                </li>  
                               <?php } else {
                                ?>
                                <li>                                    
                                    <?php
                                    echo $this->Html->link(
                                            $content['sub_menu_title'], array('plugin' => false,
                                        'controller' => 'contents',
                                        'action' => 'view',
                                        $content['slug']));
                                    ?>
                                </li>                              
                               <?php } } endforeach; ?>
                    </ul>
                </li>
            <?php } ?>
            <?php
            $i++;
        endforeach;
        ?>
<li class="m7"><a href="/albums/album_view">PHOTO GALLERY</a></li>
                <li class="m8"><a href="/contents/view/contact-us">CONTACT</a>
    </ul>
    
    <div class="clearfix"></div>
</nav>
<!--Menu Part Start-->
<!--        <nav class="menu">
            <div class="nav-toggle dropdown"><a>Navigation</a></div>
            <ul>
                <li class="dropdown"><a>Home</a>
                    <ul class="arrow_box">
                        <li><a href="#">Latest jQuery Plugins</a></li>
                        <li><a href="#">Most Popular Plugins</a></li>
                        <li><a href="#">Recommended Plugins</a></li>
                    </ul>
                </li>
                <li class="dropdown m1"><a>About Us</a>
                    <ul class="arrow_box">
                        <li><a href="#">Latest jQuery Plugins</a></li>
                        <li><a href="#">Most Popular Plugins</a></li>
                        <li><a href="#">Recommended Plugins</a></li>
                    </ul>
                </li>
                <li class="dropdown m2"><a>Department With Facilities</a>
                    <ul class="arrow_box">
                        <li><a href="#">Latest jQuery Plugins</a></li>
                        <li><a href="#">Most Popular Plugins</a></li>
                        <li><a href="#">Recommended Plugins</a></li>
                    </ul>
                </li>
                <li class="dropdown m3"><a>Academic</a>
                    <ul class="arrow_box">
                        <li><a href="#">Blog</a></li>
                        <li><a href="#">About</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </li>
                <li class="dropdown m4"><a>Admission</a>
                    <ul class="arrow_box">
                        <li><a href="#">Latest jQuery Plugins</a></li>
                        <li><a href="#">Most Popular Plugins</a></li>
                        <li><a href="#">Recommended Plugins</a></li>
                    </ul>
                </li>
                <li class="dropdown m5"><a>Facilities at a glance</a>
                    <ul class="arrow_box">
                        <li><a href="#">Twitter</a></li>
                        <li><a href="#">Google+</a></li>
                        <li><a href="#">Facebook</a></li>
                    </ul>
                </li>
                <li class="dropdown m6"><a>Placement</a>
                    <ul class="arrow_box">
                        <li><a href="#">Latest jQuery Plugins</a></li>
                        <li><a href="#">Most Popular Plugins</a></li>
                        <li><a href="#">Recommended Plugins</a></li>
                    </ul>
                </li>
                <li class="dropdown m7"><a>Photo Gallery</a>
                    <ul class="arrow_box">
                        <li><a href="#">Latest jQuery Plugins</a></li>
                        <li><a href="#">Most Popular Plugins</a></li>
                        <li><a href="#">Recommended Plugins</a></li>
                    </ul>
                </li>
                <li class="dropdown m8"><a>Contact</a>
                    <ul class="arrow_box">
                        <li><a href="#">Latest jQuery Plugins</a></li>
                        <li><a href="#">Most Popular Plugins</a></li>
                        <li><a href="#">Recommended Plugins</a></li>
                    </ul>
                </li>
            </ul>
            <div class="clearfix"></div>
        </nav>-->
<!--Menu Part End-->
