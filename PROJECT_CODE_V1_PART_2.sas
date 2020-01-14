/********************
STUDENT ID: 18, 
PPT DAY 1
********************/
PROC TABULATE DATA=WCF1_EXT1;
    CLASS STATUS;
    VAR STATUS;
RUN;
DATA WCF1_EXT1;
    SET WCF1_SORTED;
    IF DEACTDT=. THEN DO;
            STATUS='ACTIVATED';
            STATUS_NUMERIC = 1;
        END;
    ELSE DO;
            STATUS='DEACTIVATED';
            STATUS_NUMERIC = 0;
        END;
RUN;
