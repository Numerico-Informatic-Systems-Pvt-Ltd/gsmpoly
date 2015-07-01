<div class="admin_menu">
    <ul>
        <li>
            <a href="/dashboard" class="active">Admin Dashboard</a>
        </li>
        <li>
            <?php echo $this->Html->link('Album', array('plugin' => false, 'controller' => 'albums', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Academicqualification', array('plugin' => false, 'controller' => 'academicqualifications', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('BlogsComment', array('plugin' => false, 'controller' => 'blogcomments', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Contents', array('plugin' => false, 'controller' => 'contents', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Events', array('plugin' => false, 'controller' => 'events', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Menus', array('plugin' => false, 'controller' => 'menus', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('NoticeBoards', array('plugin' => false, 'controller' => 'noticeBoards', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Institutes', array('plugin' => false, 'controller' => 'otherinstitutes', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Pictures', array('plugin' => false, 'controller' => 'pictures', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Companies', array('plugin' => false, 'controller' => 'placementcompanies', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Placements', array('plugin' => false, 'controller' => 'placements', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('Sliders', array('plugin' => false, 'controller' => 'sliders', 'action' => 'index')); ?>
        </li>
         <li>
            <?php echo $this->Html->link('PlacementNotice', array('plugin' => false, 'controller' => 'PlacementNoticeBoards', 'action' => 'index')); ?>
        </li>
        <li>
            <?php echo $this->Html->link('TechnicalQualifications', array('plugin' => false, 'controller' => 'technicalqualifications', 'action' => 'index')); ?>
        </li>
        <li>
            <a href="/logout">Logout</a>
        </li>

        <div class="clearfix"></div>
    </ul>
</div>

<style type="text/css">

    .admin_menu{margin: 10px 0px; padding: 0px; border: 0px solid red; background: #9acfea; margin-top: 35px; }
    .admin_menu ul{margin: 0px auto; padding: 0px; width: 80%;}

    .admin_menu ul li{float: left; list-style-type: none; margin: 0px; padding: 10px 0px;}
    .admin_menu ul li a{font-size: 14px; color: #666; margin: 5px 15px; padding: 0px; float: left; text-decoration: none;}
    .admin_menu ul li a:hover{text-decoration: none; color: #787878;}

</style>