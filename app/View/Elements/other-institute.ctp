<?php $otherinstitute = $this->requestAction('otherinstitutes/list_all_institute');
//debug($otherinstitute);
?>
<h2>Other <span>Institute</span></h2>
<div class="clearfix"></div>
<?php 

$i=1;
foreach ($otherinstitute as $otherins) {?>
<div class="col-lg-3">
    <div class="o<?php echo $i;?>">
        <p>
            
<!--            <a href="#">gobindapur Sephali Memorial Ptti</a>-->
        <?php echo $this->Html->link($otherins['Otherinstitute']['name'],
                                 
                                 $otherins['Otherinstitute']['link']
                               ); ?>
        
        </p>
    </div>
</div>
<?php $i++;}?>
<!--<div class="col-lg-3">
    <div class="o2">
        <p><a href="#">Dinabandhu B.E.d college</a></p>
    </div>
</div>
<div class="col-lg-3">
    <div class="o3">
        <p><a href="#">Sephali Memorial pubilc school</a></p>
    </div>
</div>
<div class="col-lg-3">
    <div class="o4">
        <p><a href="#">Sephali memorial private iti</a></p>
    </div>
</div>-->
<div class="clearfix"></div>