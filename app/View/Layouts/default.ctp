<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

?>
<!DOCTYPE html>
<html>
    <head>
        <?php echo $this->Html->charset(); ?>
        <title>
            <?php $this->set('title_for_layout','Gobindapur Sephali Memorial Polytechnic || An ISO Certified, AICTE Approved Polytechnic College - Gobindapur, Bardhaman '); ?>
            <?php echo $this->fetch('title'); ?>
        </title>
        <?php
        echo $this->Html->meta('icon');
        echo $this->Html->css('cake.generic');
        echo $this->Html->css('bootstrap');
        echo $this->Html->css('bootstrap-theme');
        echo $this->Html->script('jquery.min');
        echo $this->Html->script('bootstrap');
        echo $this->Html->script('custom-gsmpolymanu');
        echo $this->Html->script('jquery.easy-ticker.js');
        echo $this->fetch('meta');
        echo $this->fetch('css');
        echo $this->fetch('script');
        ?>

    </head>
    <body>
            <?php echo $this->element('tinymce'); ?>
        <div class="container-fluid">
            <div class="container">
                <div class="row">
                    <!--Header Part Start-->
                    <?php echo $this->element('header'); ?>
                    <!--Header Part End-->
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 banner_menu">
            <div class="row">
                <?php echo $this->element('slider'); ?>
            </div>
            <div class="row">
                <?php echo $this->element('menu'); ?>
            </div>
                    
            <div class="clearfix"></div>
                </div></div>
        </div>       


        <div class="container-fluid">
            <div class="container">
                <div class="row top">
                  <?php   if($this->Session->read('UserAuth.User.id') != 1){ ?>
                    
                    <div class="col-lg-8">
                     
                  <?php }else {          ?>     
                    <div class="col-lg-12">
<?php 
                        if($this->params['controller']!='contents'){
                        echo $this->element('admin_menu'); } ?>

                <?php     }          ?>                             
                        <div class="about">
                           <?php echo $this->fetch('content'); ?>
                        </div>
                    </div>

                    <?php //echo $this->fetch('content'); ?>
                  <?php   if($this->Session->read('UserAuth.User.id') != 1){ ?>
                    <div class="col-lg-4">
                        
                        <?php echo $this->element('noticeboard'); ?>
                        <?php echo $this->element('event'); ?>

                    </div>
                  <?php } ?>
                    <div class="clearfix"></div>

                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <?php echo $this->element('footer'); ?>
            <div class="clearfix"></div>
        <?php echo $this->element('sql_dump'); ?>
    </body>
</html>
