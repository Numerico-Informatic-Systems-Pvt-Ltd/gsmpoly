<?php
include 'includes/conn.php';
$contents="FORMFOR,BRANCH,CATEGORY,NAME,FATHERSNAME,ADDRESS,PHONENO,EMAILID,FATHERSPHONE,DOB,SECONDRY,SECONDRY_YOP,SBOARD,SAVGMKS,SSUBJECTS,SREMARKS, HSECONDRY,HSECONDRY_YOP,HSBOARD,HSAVERAGEMARKS,HSSUBJECTS,HSREMARKS,TECHEXAMPASSED,TECHYOP,TECHBOARD,TECHAVERAGEMARKS,TECHREMARKS\n";
$query = "SELECT 	 p.id,
	 p.form_for AS FORMFOR,
         p.branch AS BRANCH,
 	 p.category AS CATEGORY,
         p.stu_name AS NAME,
         p.father_name AS FATHERSNAME,
         p.resi_address AS ADDRESS,
         p.stu_contact_no AS PHONENO,
         p.email AS EMAILID,
         p.guar_contact_no AS FATHERSPHONE,
         p.date_of_birth AS DOB, 		 		                
         SECONDRY, 
	 SECONDRY_YOP, 
	 SBOARD,
	 SAVGMKS, 
	 SSUBJECT, 
	 SREMARKS, 
	 HSECONDRY, 
	 HSBOARD,
	HSECONDRY_YOP, 
	 HSAVGMKS,
	 HSSUBJECT, 
	 HSREMARKS,
	 t.exam_passed AS TECHEXAMPASSED,
         t.year_of_passing AS TECHYOP,                 
         t.board AS TECHBOARD,
         t.average_marks AS TECHAVERAGEMARKS,
         t.remarks AS TECHREMARKS                 
FROM    placements AS p 	
JOIN technicalqualifications as t ON p.id = t.placement_id		
JOIN ( SELECT even.placement_id, even.exam_passed AS SECONDRY, even.year_of_passing AS SECONDRY_YOP, even.board AS SBOARD, even.average_marks AS SAVGMKS, even.subject_taken AS SSUBJECT, even.remarks AS SREMARKS, odd.exam_passed AS HSECONDRY,odd.year_of_passing AS HSECONDRY_YOP ,odd.board AS HSBOARD, odd.average_marks AS HSAVGMKS, odd.subject_taken AS HSSUBJECT, odd.remarks AS HSREMARKS
FROM (
SELECT * 
FROM academicqualifications
WHERE id %2 =0
) AS even
JOIN (

SELECT * 
FROM academicqualifications
WHERE id %2 <>0
) AS odd ON even.placement_id = odd.placement_id) as a
	ON p.id = a.placement_id ";

$user_query=mysql_query($query);
$ssubject = str_replace ( "," , "/" , $row['SSUBJECT'] );
$hssubject = str_replace ( "," , "/" , $row['HSSUBJECT'] );
$address = str_replace ( "," , "/" , $row['ADDRESS'] );
while($row = mysql_fetch_array($user_query))
{
$ssubject = str_replace ( "," , " " , $row['SSUBJECT'] );
$hssubject = str_replace ( "," , "/" , $row['HSSUBJECT'] );
$address = str_replace ( "," , " " , $row['ADDRESS'] );
$contents.=$row['FORMFOR'].",";
$contents.=$row['BRANCH'].",";
$contents.=$row['CATEGORY'].",";
$contents.=$row['NAME'].",";
$contents.=$row['FATHERSNAME'].",";
$contents.=$address.",";
$contents.=$row['PHONENO'].",";
$contents.=$row['EMAILID'].",";
$contents.=$row['FATHERSPHONE'].",";
$contents.=$row['DOB'].",";
$contents.=$row['SECONDRY'].",";
$contents.=$row['SECONDRY_YOP'].",";
$contents.=$row['SBOARD'].",";
$contents.=$row['SAVGMKS'].",";
$contents.=$ssubject.",";
$contents.=$row['SREMARKS'].",";


$contents.=$row['HSECONDRY'].",";
$contents.=$row['HSECONDRY_YOP'].",";
$contents.=$row['HSBOARD'].",";
$contents.=$row['HSAVGMKS'].",";
$contents.=$hssubject.",";
$contents.=$row['HSREMARKS'].",";

$contents.=$row['TECHEXAMPASSED'].",";
$contents.=$row['TECHYOP'].",";
$contents.=$row['TECHBOARD'].",";
$contents.=$row['TECHAVERAGEMARKS'].",";
$contents.=$row['TECHREMARKS']."\n";
}
$contents = strip_tags($contents); 
header("Content-type: application/vnd.ms-excel");
header("Content-Disposition: attachment; filename=PlacementsRecords".date('d-m-Y').".xls");
print $contents;
?>