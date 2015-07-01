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
              <?php echo $title_for_layout ; ?>
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
                    <?php echo $this->element('front-aboutus'); ?>
                    <div class="col-lg-4">
                        <?php echo $this->element('noticeboard'); ?>
                        
                    </div>
                    <div class="clearfix"></div>

                </div>


                <div class="clearfix"></div>
            </div>
        </div>

        <div class="container-fluid">
            <div class="container">
                <div class="row mid">
                    <div class="col-lg-12">
                        <div class="col-lg-4 body_mid">
                            <?php echo $this->element('placement'); ?>
                        </div>
                        <div class="col-lg-8 body_mid less_rt">
                            <div class="col-lg-6 feature">
                                <?php echo $this->element('feature'); ?>
                            </div>
                            <div class="col-lg-6 less_rt">
                                <?php echo $this->element('event'); ?>
                            </div>
                            <div class="clearfix"></div>

                            <div class="col-lg-12 less_pad">
                                <?php echo $this->element('admission'); ?>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-12 institute">
                        <?php echo $this->element('other-institute'); ?>
                    </div>
                </div>
            </div>
        </div>
        <?php echo $this->element('footer'); ?>
        <?php echo $this->element('sql_dump'); ?>
    </body>
</html>
