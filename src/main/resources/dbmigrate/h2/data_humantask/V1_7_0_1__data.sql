

UPDATE TASK_DEF_BASE SET PROCESS_DEFINITION_ID=NULL,PROCESS_DEFINITION_KEY='vacation',PROCESS_DEFINITION_VERSION=1 WHERE ID=1;
UPDATE TASK_DEF_BASE SET PROCESS_DEFINITION_ID=NULL,PROCESS_DEFINITION_KEY='vacation',PROCESS_DEFINITION_VERSION=1 WHERE ID=2;
UPDATE TASK_DEF_BASE SET PROCESS_DEFINITION_ID=NULL,PROCESS_DEFINITION_KEY='vacation',PROCESS_DEFINITION_VERSION=1 WHERE ID=3;
UPDATE TASK_DEF_BASE SET PROCESS_DEFINITION_ID=NULL,PROCESS_DEFINITION_KEY='publish',PROCESS_DEFINITION_VERSION=1 WHERE ID=4;
UPDATE TASK_DEF_BASE SET PROCESS_DEFINITION_ID=NULL,PROCESS_DEFINITION_KEY='publish',PROCESS_DEFINITION_VERSION=1 WHERE ID=5;

INSERT INTO TASK_DEF_BASE(ID,CODE,PROCESS_DEFINITION_KEY,PROCESS_DEFINITION_VERSION) VALUES(101,'usertask1','permission',1);
INSERT INTO TASK_DEF_BASE(ID,CODE,PROCESS_DEFINITION_KEY,PROCESS_DEFINITION_VERSION) VALUES(102,'usertask2','permission',1);
INSERT INTO TASK_DEF_BASE(ID,CODE,PROCESS_DEFINITION_KEY,PROCESS_DEFINITION_VERSION) VALUES(103,'usertask3','permission',1);

INSERT INTO TASK_DEF_NOTIFICATION(ID,EVENT_NAME,TYPE,RECEIVER,TEMPLATE_CODE,BASE_ID) VALUES(101,'create','mail,msg','任务接收人','arrival-assignee',102);
INSERT INTO TASK_DEF_NOTIFICATION(ID,EVENT_NAME,TYPE,RECEIVER,TEMPLATE_CODE,BASE_ID) VALUES(102,'create','mail,msg','任务接收人','arrival-assignee',103);
INSERT INTO TASK_DEF_NOTIFICATION(ID,EVENT_NAME,TYPE,RECEIVER,TEMPLATE_CODE,BASE_ID) VALUES(103,'complete','mail,msg','流程发起人','complete',103);

INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(101,'saveDraft',102);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(102,'completeTask',102);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(103,'rollbackPrevious',102);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(104,'rollbackInitiator',102);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(105,'transfer',102);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(106,'delegateTask',102);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(107,'communicate',102);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(108,'saveDraft',103);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(109,'completeTask',103);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(110,'rollbackPrevious',103);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(111,'rollbackInitiator',103);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(112,'transfer',103);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(113,'delegateTask',103);
INSERT INTO TASK_DEF_OPERATION(ID,VALUE,BASE_ID) VALUES(114,'communicate',103);
