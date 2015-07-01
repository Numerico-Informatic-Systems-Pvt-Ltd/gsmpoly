<?php


$line = array_merge(array_keys($posts[0]['Placement']), array_keys($posts[0]['Academicqualification'][0]), array_keys($posts[0]['Technicalqualification'][0]));

$this->CSV->addRow($line);

foreach ($posts as $post) {
    $line = array_merge($post['Placement']); 
    $acount = count($post['Academicqualification'][0]);
    foreach($post['Academicqualification'][0] as $key => $value){
    
        $line['a'.$key] = $value;
    }
    $tcount = count($post['Technicalqualification'][0]);
    foreach($post['Technicalqualification'][0] as $key => $value){
    
        $line['t'.$key] = $value;
    }
    
    $this->CSV->addRow($line);
   
}
     $filename='Placement';
    echo  $this->CSV->render($filename);
?>