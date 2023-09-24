/*Extracting the data from required Raw-Datasets*/
proc sort data=rawdata.random out=random ;
 by studyid ptno ;
run;
proc sort data=ocdata.invinfo out=invinfo ;
 by studyid ptno ;
run;
