//#USER#A   JOB 'SOME JOB',CLASS=A,MSGCLASS=H,NOTIFY=&SYSUID
//*                                                        
//SPOOL   EXEC PGM=IEBGENER                                
//SYSPRINT DD  SYSOUT=*                                    
//SYSIN    DD  DUMMY                                       
//SYSUT2   DD  SYSOUT=*                                    
//SYSUT1   DD  DATA,DLM=$$,SYMBOLS=EXECSYS                 
--START--                                                  
                                                           
  VERIFY THAT SYMBOL SUBSTITUTION IS WORKING               
  BY ADDING SOME SYMBOL VALUES TO THIS OUTPUT:             
                                                           
     USER = &SYSUID                                        
     PLEX = &SYSPLEX                                       
     VRSN = &SYSVER                                        
     RES  = &SYSR1                                         
                                                           
--DONE--                                                   
$$                                                         
