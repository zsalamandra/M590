#line 1 "../Src/freertos.c"














































 

 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"



































































 






 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"
 






 

 
 
 





 





#line 34 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"




  typedef signed int ptrdiff_t;



  



    typedef unsigned int size_t;    
#line 57 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



   



      typedef unsigned short wchar_t;  
#line 82 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



    




   




  typedef long double max_align_t;









#line 114 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stddef.h"



 

#line 77 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"













 
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 92 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"





 
#line 1 "../Inc/FreeRTOSConfig.h"



































































 














 

    	      
 
  

 
#line 92 "../Inc/FreeRTOSConfig.h"
#line 1 "../Inc/main.h"














































 
 


   

 
 

 

 

#line 81 "../Inc/main.h"

 



 
 

 

 




void _Error_Handler(char *, int);








  



  


 
#line 93 "../Inc/FreeRTOSConfig.h"
    extern uint32_t SystemCoreClock;


#line 111 "../Inc/FreeRTOSConfig.h"

 




 
#line 126 "../Inc/FreeRTOSConfig.h"

 
#line 134 "../Inc/FreeRTOSConfig.h"


 





 



 


 



 
    

 


 




 
 

    	      
 
  

#line 99 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/projdefs.h"



































































 







 
typedef void (*TaskFunction_t)( void * );



 












 




 











 
#line 152 "../Middlewares/Third_Party/FreeRTOS/Source/include/projdefs.h"


 







#line 102 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"



































































 



 













 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"



































































 












 











































































































































































#line 260 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"

#line 268 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"







#line 282 "../Middlewares/Third_Party/FreeRTOS/Source/include/deprecated_definitions.h"








































#line 88 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"




 
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"



































































 

















 

 
#line 96 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"

typedef uint32_t StackType_t;
typedef long BaseType_t;
typedef unsigned long UBaseType_t;





	typedef uint32_t TickType_t;


	
 


 

 




 


 

 
#line 135 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"
 





 

 
extern void vPortEnterCritical( void );
extern void vPortExitCritical( void );

#line 153 "../Middlewares/Third_Party/FreeRTOS/Source/portable/RVDS/ARM_CM3/portmacro.h"

 

 

	extern void vPortSuppressTicksAndSleep( TickType_t xExpectedIdleTime );


 

 






	 




	 



	 




 



 


 


	void vPortValidateInterruptPriority( void );



 








 

static __forceinline void vPortSetBASEPRI( uint32_t ulBASEPRI )
{
	__asm
	{
		
 
		msr basepri, ulBASEPRI
	}
}
 

static __forceinline void vPortRaiseBASEPRI( void )
{
uint32_t ulNewBASEPRI = ( 5 << (8 - 4) );

	__asm
	{
		
 
		msr basepri, ulNewBASEPRI
		dsb
		isb
	}
}
 

static __forceinline void vPortClearBASEPRIFromISR( void )
{
	__asm
	{
		

 
		msr basepri, #0
	}
}
 

static __forceinline uint32_t ulPortRaiseBASEPRI( void )
{
uint32_t ulReturn, ulNewBASEPRI = ( 5 << (8 - 4) );

	__asm
	{
		
 
		mrs ulReturn, basepri
		msr basepri, ulNewBASEPRI
		dsb
		isb
	}

	return ulReturn;
}
 

static __forceinline BaseType_t xPortIsInsideInterrupt( void )
{
uint32_t ulCurrentInterrupt;
BaseType_t xReturn;

	 
	__asm
	{
		mrs ulCurrentInterrupt, ipsr
	}

	if( ulCurrentInterrupt == 0 )
	{
		xReturn = ( ( BaseType_t ) 0 );
	}
	else
	{
		xReturn = ( ( BaseType_t ) 1 );
	}

	return xReturn;
}








#line 95 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"






































#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/mpu_wrappers.h"



































































 





 
#line 192 "../Middlewares/Third_Party/FreeRTOS/Source/include/mpu_wrappers.h"










#line 134 "../Middlewares/Third_Party/FreeRTOS/Source/include/portable.h"






 



	StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;


 
typedef struct HeapRegion
{
	uint8_t *pucStartAddress;
	size_t xSizeInBytes;
} HeapRegion_t;











 
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;




 
void *pvPortMalloc( size_t xSize ) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;




 
BaseType_t xPortStartScheduler( void ) ;





 
void vPortEndScheduler( void ) ;







 











#line 105 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

 




 







 



























































































































































#line 281 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

 
#line 298 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"



































 

	
 




	
 




	
 




	
 




	 




	 




	
 




	



 




	


 




	


 




	


 







 





























































































































































































































































#line 678 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"











































































































 














#line 809 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
	
 







 




#line 843 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"

	
 













 













 
struct xSTATIC_LIST_ITEM
{
	TickType_t xDummy1;
	void *pvDummy2[ 4 ];
};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;

 
struct xSTATIC_MINI_LIST_ITEM
{
	TickType_t xDummy1;
	void *pvDummy2[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;

 
typedef struct xSTATIC_LIST
{
	UBaseType_t uxDummy1;
	void *pvDummy2;
	StaticMiniListItem_t xDummy3;
} StaticList_t;













 
typedef struct xSTATIC_TCB
{
	void				*pxDummy1;



	StaticListItem_t	xDummy3[ 2 ];
	UBaseType_t			uxDummy5;
	void				*pxDummy6;
	uint8_t				ucDummy7[ ( 16 ) ];
#line 930 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
		UBaseType_t		uxDummy12[ 2 ];
#line 945 "../Middlewares/Third_Party/FreeRTOS/Source/include/FreeRTOS.h"
		uint32_t 		ulDummy18;
		uint8_t 		ucDummy19;





} StaticTask_t;














 
typedef struct xSTATIC_QUEUE
{
	void *pvDummy1[ 3 ];

	union
	{
		void *pvDummy2;
		UBaseType_t uxDummy2;
	} u;

	StaticList_t xDummy3[ 2 ];
	UBaseType_t uxDummy4[ 3 ];
	uint8_t ucDummy5[ 2 ];














} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;














 
typedef struct xSTATIC_EVENT_GROUP
{
	TickType_t xDummy1;
	StaticList_t xDummy2;









} StaticEventGroup_t;














 
typedef struct xSTATIC_TIMER
{
	void				*pvDummy1;
	StaticListItem_t	xDummy2;
	TickType_t			xDummy3;
	UBaseType_t			uxDummy4;
	void 				*pvDummy5[ 2 ];








} StaticTimer_t;







#line 51 "../Src/freertos.c"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"



































































 









#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"



































































 



























 



































 












 

	 
#line 176 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"




 
struct xLIST_ITEM
{
				 
	 TickType_t xItemValue;			 
	struct xLIST_ITEM *  pxNext;		 
	struct xLIST_ITEM *  pxPrevious;	 
	void * pvOwner;										 
	void *  pvContainer;				 
				 
};
typedef struct xLIST_ITEM ListItem_t;					 

struct xMINI_LIST_ITEM
{
				 
	 TickType_t xItemValue;
	struct xLIST_ITEM *  pxNext;
	struct xLIST_ITEM *  pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;



 
typedef struct xLIST
{
					 
	 UBaseType_t uxNumberOfItems;
	ListItem_t *  pxIndex;			 
	MiniListItem_t xListEnd;							 
					 
} List_t;







 








 








 









 








 







 







 







 








 




 





















 
#line 330 "../Middlewares/Third_Party/FreeRTOS/Source/include/list.h"

















 










 







 






 











 
void vListInitialise( List_t * const pxList ) ;









 
void vListInitialiseItem( ListItem_t * const pxItem ) ;











 
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;



















 
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;













 
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;







#line 79 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"







 















 
typedef void * TaskHandle_t;




 
typedef BaseType_t (*TaskHookFunction_t)( void * );

 
typedef enum
{
	eRunning = 0,	 
	eReady,			 
	eBlocked,		 
	eSuspended,		 
	eDeleted,		 
	eInvalid			 
} eTaskState;

 
typedef enum
{
	eNoAction = 0,				 
	eSetBits,					 
	eIncrement,					 
	eSetValueWithOverwrite,		 
	eSetValueWithoutOverwrite	 
} eNotifyAction;



 
typedef struct xTIME_OUT
{
	BaseType_t xOverflowCount;
	TickType_t xTimeOnEntering;
} TimeOut_t;



 
typedef struct xMEMORY_REGION
{
	void *pvBaseAddress;
	uint32_t ulLengthInBytes;
	uint32_t ulParameters;
} MemoryRegion_t;



 
typedef struct xTASK_PARAMETERS
{
	TaskFunction_t pvTaskCode;
	const char * const pcName;	 
	uint16_t usStackDepth;
	void *pvParameters;
	UBaseType_t uxPriority;
	StackType_t *puxStackBuffer;
	MemoryRegion_t xRegions[ 1 ];
} TaskParameters_t;


 
typedef struct xTASK_STATUS
{
	TaskHandle_t xHandle;			 
	const char *pcTaskName;			   
	UBaseType_t xTaskNumber;		 
	eTaskState eCurrentState;		 
	UBaseType_t uxCurrentPriority;	 
	UBaseType_t uxBasePriority;		 
	uint32_t ulRunTimeCounter;		 
	StackType_t *pxStackBase;		 
	uint16_t usStackHighWaterMark;	 
} TaskStatus_t;

 
typedef enum
{
	eAbortSleep = 0,		 
	eStandardSleep,			 
	eNoTasksWaitingTimeout	 
} eSleepModeStatus;





 









 













 














 









 









 




 







 





























































































 

	BaseType_t xTaskCreate(	TaskFunction_t pxTaskCode,
							const char * const pcName,
							const uint16_t usStackDepth,
							void * const pvParameters,
							UBaseType_t uxPriority,
							TaskHandle_t * const pxCreatedTask ) ;  












































































































 
#line 484 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"



































































 

















































 
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;







































 
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;



 














































 
void vTaskDelay( const TickType_t xTicksToDelay ) ;

























































 
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;























 
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;













































 
UBaseType_t uxTaskPriorityGet( TaskHandle_t xTask ) ;






 
UBaseType_t uxTaskPriorityGetFromISR( TaskHandle_t xTask ) ;
















 
eTaskState eTaskGetState( TaskHandle_t xTask ) ;






















































 
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;








































 
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;

















































 
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;















































 
void vTaskResume( TaskHandle_t xTaskToResume ) ;



























 
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;



 



























 
void vTaskStartScheduler( void ) ;






















































 
void vTaskEndScheduler( void ) ;

















































 
void vTaskSuspendAll( void ) ;




















































 
BaseType_t xTaskResumeAll( void ) ;



 









 
TickType_t xTaskGetTickCount( void ) ;














 
TickType_t xTaskGetTickCountFromISR( void ) ;












 
UBaseType_t uxTaskGetNumberOfTasks( void ) ;











 
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;  














 
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;  



















 
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;






 
#line 1397 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"

#line 1409 "../Middlewares/Third_Party/FreeRTOS/Source/include/task.h"











 
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;







 
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;

































































































 
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;













































 
void vTaskList( char * pcWriteBuffer ) ;  




















































 
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;  















































































 
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;

























































































 
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;











































































 
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;












































 






















































 
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;



































































 
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;














 
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );



 















 
BaseType_t xTaskIncrementTick( void ) ;































 
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;











 
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
























 
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
BaseType_t xTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;








 
void vTaskSwitchContext( void ) ;




 
TickType_t uxTaskResetEventItemValue( void ) ;



 
TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;



 
void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;




 
BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;




 
void vTaskMissedYield( void ) ;




 
BaseType_t xTaskGetSchedulerState( void ) ;




 
void vTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;




 
BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;



 
UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;




 
void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;








 
void vTaskStepTick( const TickType_t xTicksToJump ) ;














 
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;




 
void *pvTaskIncrementMutexHeldCount( void ) ;








#line 52 "../Src/freertos.c"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"





















































 

 










































 
	
#line 102 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#line 103 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"



































































 










 
#line 81 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"
 







 





 
#line 104 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"













 
typedef void * TimerHandle_t;



 
typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );




 
typedef void (*PendedFunction_t)( void *, uint32_t );









































































































































 

	TimerHandle_t xTimerCreate(	const char * const pcTimerName,
								const TickType_t xTimerPeriodInTicks,
								const UBaseType_t uxAutoReload,
								void * const pvTimerID,
								TimerCallbackFunction_t pxCallbackFunction ) ;  



























































































































 
#line 406 "../Middlewares/Third_Party/FreeRTOS/Source/include/timers.h"




















 
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;



















 
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;



































 
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;






 
TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;


















































 









































 















































































 





































 



























































































































 





















































































 






























































 








































































 





















































































 


























































































 
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;

 






























 
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;









 
const char * pcTimerGetName( TimerHandle_t xTimer ) ;  









 
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;













 
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;




 
BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;








#line 104 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"



































































 


















 
typedef void * QueueHandle_t;





 
typedef void * QueueSetHandle_t;





 
typedef void * QueueSetMemberHandle_t;

 




 
#line 116 "../Middlewares/Third_Party/FreeRTOS/Source/include/queue.h"




































































 





















































































 



















































































 

















































































 



















































































 


















































































 























































































 
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;






























































































 
































 
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;



























































































 


































































































 
BaseType_t xQueueGenericReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait, const BaseType_t xJustPeek ) ;













 
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;















 
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;












 
void vQueueDelete( QueueHandle_t xQueue ) ;




































































 






































































 






















































































 









































































 














































































 
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;























































































 
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;




 
BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;









 
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );





 
QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
void* xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;




 
BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t pxMutex ) ;




 























 

	void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcName ) ;  











 

	void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;












 

	const char *pcQueueGetName( QueueHandle_t xQueue ) ;  






 

	QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;






 



















































 
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;






















 
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;

















 
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;


































 
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;



 
QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;

 
void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;








#line 105 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"



































































 








#line 78 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"

typedef QueueHandle_t SemaphoreHandle_t;






















































 
#line 145 "../Middlewares/Third_Party/FreeRTOS/Source/include/semphr.h"

























































 


























































 




































































 




























































































 
































































 



















































































 




























































































 

































 
























































 




























































 



































































 








































































 















































































 




















































































 















 














 











 





#line 106 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"



































































 








 
#line 79 "../Middlewares/Third_Party/FreeRTOS/Source/include/event_groups.h"






























 












 
typedef void * EventGroupHandle_t;








 
typedef TickType_t EventBits_t;




















































 

	EventGroupHandle_t xEventGroupCreate( void ) ;


















































 































































































 
EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait ) ;























































 
EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;





















































 













































































 
EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet ) ;








































































 

































































































































 
EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait ) ;

















 
















 
EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup ) ;












 
void vEventGroupDelete( EventGroupHandle_t xEventGroup ) ;

 
void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet ) ;
void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear ) ;













#line 107 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"












































































 














#line 206 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"











typedef enum  {
  osPriorityIdle          = -3,          
  osPriorityLow           = -2,          
  osPriorityBelowNormal   = -1,          
  osPriorityNormal        =  0,          
  osPriorityAboveNormal   = +1,          
  osPriorityHigh          = +2,          
  osPriorityRealtime      = +3,          
  osPriorityError         =  0x84        
} osPriority;







typedef enum  {
  osOK                    =     0,       
  osEventSignal           =  0x08,       
  osEventMessage          =  0x10,       
  osEventMail             =  0x20,       
  osEventTimeout          =  0x40,       
  osErrorParameter        =  0x80,       
  osErrorResource         =  0x81,       
  osErrorTimeoutResource  =  0xC1,       
  osErrorISR              =  0x82,       
  osErrorISRRecursive     =  0x83,       
  osErrorPriority         =  0x84,       
  osErrorNoMemory         =  0x85,       
  osErrorValue            =  0x86,       
  osErrorOS               =  0xFF,       
  os_status_reserved      =  0x7FFFFFFF  
} osStatus;

#line 263 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"



typedef enum  {
  osTimerOnce             =     0,       
  osTimerPeriodic         =     1        
} os_timer_type;



typedef void (*os_pthread) (void const *argument);



typedef void (*os_ptimer) (void const *argument);





typedef TaskHandle_t osThreadId;



typedef TimerHandle_t osTimerId;



typedef SemaphoreHandle_t osMutexId;



typedef SemaphoreHandle_t osSemaphoreId;



typedef struct os_pool_cb *osPoolId;



typedef QueueHandle_t osMessageQId;



typedef struct os_mailQ_cb *osMailQId;


#line 319 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"






typedef struct os_thread_def  {
  char                   *name;        
  os_pthread             pthread;      
  osPriority             tpriority;    
  uint32_t               instances;    
  uint32_t               stacksize;    




} osThreadDef_t;



typedef struct os_timer_def  {
  os_ptimer                 ptimer;    



} osTimerDef_t;



typedef struct os_mutex_def  {
  uint32_t                   dummy;    



} osMutexDef_t;



typedef struct os_semaphore_def  {
  uint32_t                   dummy;    



} osSemaphoreDef_t;



typedef struct os_pool_def  {
  uint32_t                 pool_sz;    
  uint32_t                 item_sz;    
  void                       *pool;    
} osPoolDef_t;



typedef struct os_messageQ_def  {
  uint32_t                queue_sz;    
  uint32_t                item_sz;    




  
} osMessageQDef_t;



typedef struct os_mailQ_def  {
  uint32_t                queue_sz;    
  uint32_t                 item_sz;    
  struct os_mailQ_cb **cb;
} osMailQDef_t;




typedef struct  {
  osStatus                 status;     
  union  {
    uint32_t                    v;     
    void                       *p;     
    int32_t               signals;     
  } value;                             
  union  {
    osMailQId             mail_id;     
    osMessageQId       message_id;     
  } def;                               
} osEvent;







osStatus osKernelInitialize (void);




osStatus osKernelStart (void);




int32_t osKernelRunning(void);






uint32_t osKernelSysTick (void);


























#line 467 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"



















osThreadId osThreadCreate (const osThreadDef_t *thread_def, void *argument);




osThreadId osThreadGetId (void);





osStatus osThreadTerminate (osThreadId thread_id);




osStatus osThreadYield (void);






osStatus osThreadSetPriority (osThreadId thread_id, osPriority priority);





osPriority osThreadGetPriority (osThreadId thread_id);







osStatus osDelay (uint32_t millisec);

#line 534 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"













#line 561 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"














osTimerId osTimerCreate (const osTimerDef_t *timer_def, os_timer_type type, void *argument);






osStatus osTimerStart (osTimerId timer_id, uint32_t millisec);





osStatus osTimerStop (osTimerId timer_id);





osStatus osTimerDelete (osTimerId timer_id);









int32_t osSignalSet (osThreadId thread_id, int32_t signals);






int32_t osSignalClear (osThreadId thread_id, int32_t signals);






osEvent osSignalWait (int32_t signals, uint32_t millisec);













#line 641 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
















osMutexId osMutexCreate (const osMutexDef_t *mutex_def);






osStatus osMutexWait (osMutexId mutex_id, uint32_t millisec);





osStatus osMutexRelease (osMutexId mutex_id);





osStatus osMutexDelete (osMutexId mutex_id);















#line 704 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"













osSemaphoreId osSemaphoreCreate (const osSemaphoreDef_t *semaphore_def, int32_t count);






int32_t osSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec);





osStatus osSemaphoreRelease (osSemaphoreId semaphore_id);





osStatus osSemaphoreDelete (osSemaphoreId semaphore_id);














#line 759 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"












osPoolId osPoolCreate (const osPoolDef_t *pool_def);





void *osPoolAlloc (osPoolId pool_id);





void *osPoolCAlloc (osPoolId pool_id);






osStatus osPoolFree (osPoolId pool_id, void *block);














#line 821 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
















osMessageQId osMessageCreate (const osMessageQDef_t *queue_def, osThreadId thread_id);







osStatus osMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec);






osEvent osMessageGet (osMessageQId queue_id, uint32_t millisec);














#line 877 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"













osMailQId osMailCreate (const osMailQDef_t *queue_def, osThreadId thread_id);






void *osMailAlloc (osMailQId queue_id, uint32_t millisec);






void *osMailCAlloc (osMailQId queue_id, uint32_t millisec);






osStatus osMailPut (osMailQId queue_id, void *mail);






osEvent osMailGet (osMailQId queue_id, uint32_t millisec);






osStatus osMailFree (osMailQId queue_id, void *mail);



 




 
void osSystickHandler(void);

#line 945 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"

#line 956 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"





 
osStatus osThreadSuspend (osThreadId thread_id);





 
osStatus osThreadResume (osThreadId thread_id);




 
osStatus osThreadSuspendAll (void);




 
osStatus osThreadResumeAll (void);








 
osStatus osDelayUntil (uint32_t *PreviousWakeTime, uint32_t millisec);





 
osStatus osAbortDelay(osThreadId thread_id);







 
osStatus osThreadList (uint8_t *buffer);






 
osEvent osMessagePeek (osMessageQId queue_id, uint32_t millisec);





 
uint32_t osMessageWaiting(osMessageQId queue_id);





 
uint32_t osMessageAvailableSpace(osMessageQId queue_id);





 
osStatus osMessageDelete (osMessageQId queue_id);





 
osMutexId osRecursiveMutexCreate (const osMutexDef_t *mutex_def);





 
osStatus osRecursiveMutexRelease (osMutexId mutex_id);






 
osStatus osRecursiveMutexWait (osMutexId mutex_id, uint32_t millisec);





 
uint32_t osSemaphoreGetCount(osSemaphoreId semaphore_id);





#line 53 "../Src/freertos.c"

      
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"




































  

 







 
#line 1 "../Inc/stm32f1xx_hal_conf.h"
































  

 







#line 44 "../Inc/stm32f1xx_hal_conf.h"
 
 

 


 
  

 
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
 

#line 93 "../Inc/stm32f1xx_hal_conf.h"

 




 












 






 









 









 

 


      





 



 
 

 

 

 
#line 168 "../Inc/stm32f1xx_hal_conf.h"

    





 

  

  

 





 



 
#line 202 "../Inc/stm32f1xx_hal_conf.h"




  
 





 


 

#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



































 

 







 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"




































 

 







 
#line 1 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"













































 



 



 
    






  


 



 






 

#line 96 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"



 
  
#line 109 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"



 
#line 121 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"



 



 

#line 1 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











































 




 



 
    









 


 







 



 




 

  
typedef enum
{
 
  NonMaskableInt_IRQn         = -14,     
  HardFault_IRQn              = -13,     
  MemoryManagement_IRQn       = -12,     
  BusFault_IRQn               = -11,     
  UsageFault_IRQn             = -10,     
  SVCall_IRQn                 = -5,      
  DebugMonitor_IRQn           = -4,      
  PendSV_IRQn                 = -2,      
  SysTick_IRQn                = -1,      

 
  WWDG_IRQn                   = 0,       
  PVD_IRQn                    = 1,       
  TAMPER_IRQn                 = 2,       
  RTC_IRQn                    = 3,       
  FLASH_IRQn                  = 4,       
  RCC_IRQn                    = 5,       
  EXTI0_IRQn                  = 6,       
  EXTI1_IRQn                  = 7,       
  EXTI2_IRQn                  = 8,       
  EXTI3_IRQn                  = 9,       
  EXTI4_IRQn                  = 10,      
  DMA1_Channel1_IRQn          = 11,      
  DMA1_Channel2_IRQn          = 12,      
  DMA1_Channel3_IRQn          = 13,      
  DMA1_Channel4_IRQn          = 14,      
  DMA1_Channel5_IRQn          = 15,      
  DMA1_Channel6_IRQn          = 16,      
  DMA1_Channel7_IRQn          = 17,      
  ADC1_2_IRQn                 = 18,      
  USB_HP_CAN1_TX_IRQn         = 19,      
  USB_LP_CAN1_RX0_IRQn        = 20,      
  CAN1_RX1_IRQn               = 21,      
  CAN1_SCE_IRQn               = 22,      
  EXTI9_5_IRQn                = 23,      
  TIM1_BRK_IRQn               = 24,      
  TIM1_UP_IRQn                = 25,      
  TIM1_TRG_COM_IRQn           = 26,      
  TIM1_CC_IRQn                = 27,      
  TIM2_IRQn                   = 28,      
  TIM3_IRQn                   = 29,      
  TIM4_IRQn                   = 30,      
  I2C1_EV_IRQn                = 31,      
  I2C1_ER_IRQn                = 32,      
  I2C2_EV_IRQn                = 33,      
  I2C2_ER_IRQn                = 34,      
  SPI1_IRQn                   = 35,      
  SPI2_IRQn                   = 36,      
  USART1_IRQn                 = 37,      
  USART2_IRQn                 = 38,      
  USART3_IRQn                 = 39,      
  EXTI15_10_IRQn              = 40,      
  RTC_Alarm_IRQn              = 41,      
  USBWakeUp_IRQn              = 42,      
} IRQn_Type;



 

#line 1 "../Drivers/CMSIS/Include/core_cm3.h"
 




 

























 











#line 45 "../Drivers/CMSIS/Include/core_cm3.h"

















 




 



 

 













#line 120 "../Drivers/CMSIS/Include/core_cm3.h"



 







#line 162 "../Drivers/CMSIS/Include/core_cm3.h"

#line 1 "../Drivers/CMSIS/Include/core_cmInstr.h"
 




 

























 












 



 

 
#line 1 "../Drivers/CMSIS/Include/cmsis_armcc.h"
 




 

























 










 



 

 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}








 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1);
}




#line 297 "../Drivers/CMSIS/Include/cmsis_armcc.h"



 


 



 




 






 







 






 








 










 










 











 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}







 

__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 455 "../Drivers/CMSIS/Include/cmsis_armcc.h"







 










 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 




   


 



 

#line 731 "../Drivers/CMSIS/Include/cmsis_armcc.h"
 


#line 54 "../Drivers/CMSIS/Include/core_cmInstr.h"

 
#line 84 "../Drivers/CMSIS/Include/core_cmInstr.h"

   

#line 164 "../Drivers/CMSIS/Include/core_cm3.h"
#line 1 "../Drivers/CMSIS/Include/core_cmFunc.h"
 




 

























 












 



 

 
#line 54 "../Drivers/CMSIS/Include/core_cmFunc.h"

 
#line 84 "../Drivers/CMSIS/Include/core_cmFunc.h"

 

#line 165 "../Drivers/CMSIS/Include/core_cm3.h"
















 
#line 203 "../Drivers/CMSIS/Include/core_cm3.h"

 






 
#line 219 "../Drivers/CMSIS/Include/core_cm3.h"

 




 












 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:27;               
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 


















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:15;               
    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 



























 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t _reserved1:30;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RSERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 




#line 500 "../Drivers/CMSIS/Include/core_cm3.h"

 





















 









 


















 










































 









 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    

  volatile uint32_t ACTLR;                   



} SCnSCB_Type;

 



 










 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[29U];
  volatile  uint32_t IWR;                     
  volatile const  uint32_t IRR;                     
  volatile uint32_t IMCR;                    
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 



 



 



 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 



 





















 



 



 


















 






   


#line 1223 "../Drivers/CMSIS/Include/core_cm3.h"







 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
#line 1372 "../Drivers/CMSIS/Include/core_cm3.h"

#line 1381 "../Drivers/CMSIS/Include/core_cm3.h"






 










 


 



 





 









 
static __inline void NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)                      );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}






 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}






 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}








 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}






 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}






 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)(int32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL));
}








 
static __inline uint32_t NVIC_GetActive(IRQn_Type IRQn)
{
  return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)(int32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)(int32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
}








 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) < 0)
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               = (uint8_t)((priority << (8U - 4U)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) < 0)
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)(int32_t)IRQn) & 0xFUL)-4UL] >> (8U - 4U)));
  }
  else
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)(int32_t)IRQn)]               >> (8U - 4U)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(4U)) ? (uint32_t)(4U) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(4U)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(4U));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}





 
static __inline void NVIC_SystemReset(void)
{
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  do { __schedule_barrier(); __dsb(0xF); __schedule_barrier(); } while (0U);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  NVIC_SetPriority (SysTick_IRQn, (1UL << 4U) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                     










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != 0x5AA55AA5U)
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = 0x5AA55AA5U;        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == 0x5AA55AA5U)
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










#line 151 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
#line 1 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/system_stm32f1xx.h"



































 



 



   
  


 









 



 




 

extern uint32_t SystemCoreClock;           
extern const uint8_t  AHBPrescTable[16U];   
extern const uint8_t  APBPrescTable[8U];    



 



 



 



 



 



 
  
extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);


 









 
  


   
 
#line 152 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
#line 153 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



    



 

typedef struct
{
  volatile uint32_t SR;
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SMPR1;
  volatile uint32_t SMPR2;
  volatile uint32_t JOFR1;
  volatile uint32_t JOFR2;
  volatile uint32_t JOFR3;
  volatile uint32_t JOFR4;
  volatile uint32_t HTR;
  volatile uint32_t LTR;
  volatile uint32_t SQR1;
  volatile uint32_t SQR2;
  volatile uint32_t SQR3;
  volatile uint32_t JSQR;
  volatile uint32_t JDR1;
  volatile uint32_t JDR2;
  volatile uint32_t JDR3;
  volatile uint32_t JDR4;
  volatile uint32_t DR;
} ADC_TypeDef;

typedef struct
{
  volatile uint32_t SR;                
  volatile uint32_t CR1;               
  volatile uint32_t CR2;               
  uint32_t  RESERVED[16];
  volatile uint32_t DR;                
} ADC_Common_TypeDef;



 

typedef struct
{
  uint32_t  RESERVED0;
  volatile uint32_t DR1;
  volatile uint32_t DR2;
  volatile uint32_t DR3;
  volatile uint32_t DR4;
  volatile uint32_t DR5;
  volatile uint32_t DR6;
  volatile uint32_t DR7;
  volatile uint32_t DR8;
  volatile uint32_t DR9;
  volatile uint32_t DR10;
  volatile uint32_t RTCCR;
  volatile uint32_t CR;
  volatile uint32_t CSR;
} BKP_TypeDef;
  


 

typedef struct
{
  volatile uint32_t TIR;
  volatile uint32_t TDTR;
  volatile uint32_t TDLR;
  volatile uint32_t TDHR;
} CAN_TxMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t RIR;
  volatile uint32_t RDTR;
  volatile uint32_t RDLR;
  volatile uint32_t RDHR;
} CAN_FIFOMailBox_TypeDef;



 
  
typedef struct
{
  volatile uint32_t FR1;
  volatile uint32_t FR2;
} CAN_FilterRegister_TypeDef;



 
  
typedef struct
{
  volatile uint32_t MCR;
  volatile uint32_t MSR;
  volatile uint32_t TSR;
  volatile uint32_t RF0R;
  volatile uint32_t RF1R;
  volatile uint32_t IER;
  volatile uint32_t ESR;
  volatile uint32_t BTR;
  uint32_t  RESERVED0[88];
  CAN_TxMailBox_TypeDef sTxMailBox[3];
  CAN_FIFOMailBox_TypeDef sFIFOMailBox[2];
  uint32_t  RESERVED1[12];
  volatile uint32_t FMR;
  volatile uint32_t FM1R;
  uint32_t  RESERVED2;
  volatile uint32_t FS1R;
  uint32_t  RESERVED3;
  volatile uint32_t FFA1R;
  uint32_t  RESERVED4;
  volatile uint32_t FA1R;
  uint32_t  RESERVED5[8];
  CAN_FilterRegister_TypeDef sFilterRegister[14];
} CAN_TypeDef;



 

typedef struct
{
  volatile uint32_t DR;            
  volatile uint8_t  IDR;           
  uint8_t       RESERVED0;     
  uint16_t      RESERVED1;       
  volatile uint32_t CR;             
} CRC_TypeDef;




 

typedef struct
{
  volatile uint32_t IDCODE;
  volatile uint32_t CR;
}DBGMCU_TypeDef;



 

typedef struct
{
  volatile uint32_t CCR;
  volatile uint32_t CNDTR;
  volatile uint32_t CPAR;
  volatile uint32_t CMAR;
} DMA_Channel_TypeDef;

typedef struct
{
  volatile uint32_t ISR;
  volatile uint32_t IFCR;
} DMA_TypeDef;





 

typedef struct
{
  volatile uint32_t IMR;
  volatile uint32_t EMR;
  volatile uint32_t RTSR;
  volatile uint32_t FTSR;
  volatile uint32_t SWIER;
  volatile uint32_t PR;
} EXTI_TypeDef;



 

typedef struct
{
  volatile uint32_t ACR;
  volatile uint32_t KEYR;
  volatile uint32_t OPTKEYR;
  volatile uint32_t SR;
  volatile uint32_t CR;
  volatile uint32_t AR;
  volatile uint32_t RESERVED;
  volatile uint32_t OBR;
  volatile uint32_t WRPR;
} FLASH_TypeDef;



 
  
typedef struct
{
  volatile uint16_t RDP;
  volatile uint16_t USER;
  volatile uint16_t Data0;
  volatile uint16_t Data1;
  volatile uint16_t WRP0;
  volatile uint16_t WRP1;
  volatile uint16_t WRP2;
  volatile uint16_t WRP3;
} OB_TypeDef;



 

typedef struct
{
  volatile uint32_t CRL;
  volatile uint32_t CRH;
  volatile uint32_t IDR;
  volatile uint32_t ODR;
  volatile uint32_t BSRR;
  volatile uint32_t BRR;
  volatile uint32_t LCKR;
} GPIO_TypeDef;



 

typedef struct
{
  volatile uint32_t EVCR;
  volatile uint32_t MAPR;
  volatile uint32_t EXTICR[4];
  uint32_t RESERVED0;
  volatile uint32_t MAPR2;  
} AFIO_TypeDef;


 

typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t OAR1;
  volatile uint32_t OAR2;
  volatile uint32_t DR;
  volatile uint32_t SR1;
  volatile uint32_t SR2;
  volatile uint32_t CCR;
  volatile uint32_t TRISE;
} I2C_TypeDef;



 

typedef struct
{
  volatile uint32_t KR;            
  volatile uint32_t PR;            
  volatile uint32_t RLR;           
  volatile uint32_t SR;            
} IWDG_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CSR;
} PWR_TypeDef;



 

typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFGR;
  volatile uint32_t CIR;
  volatile uint32_t APB2RSTR;
  volatile uint32_t APB1RSTR;
  volatile uint32_t AHBENR;
  volatile uint32_t APB2ENR;
  volatile uint32_t APB1ENR;
  volatile uint32_t BDCR;
  volatile uint32_t CSR;


} RCC_TypeDef;



 

typedef struct
{
  volatile uint32_t CRH;
  volatile uint32_t CRL;
  volatile uint32_t PRLH;
  volatile uint32_t PRLL;
  volatile uint32_t DIVH;
  volatile uint32_t DIVL;
  volatile uint32_t CNTH;
  volatile uint32_t CNTL;
  volatile uint32_t ALRH;
  volatile uint32_t ALRL;
} RTC_TypeDef;



 

typedef struct
{
  volatile uint32_t POWER;
  volatile uint32_t CLKCR;
  volatile uint32_t ARG;
  volatile uint32_t CMD;
  volatile const uint32_t RESPCMD;
  volatile const uint32_t RESP1;
  volatile const uint32_t RESP2;
  volatile const uint32_t RESP3;
  volatile const uint32_t RESP4;
  volatile uint32_t DTIMER;
  volatile uint32_t DLEN;
  volatile uint32_t DCTRL;
  volatile const uint32_t DCOUNT;
  volatile const uint32_t STA;
  volatile uint32_t ICR;
  volatile uint32_t MASK;
  uint32_t  RESERVED0[2];
  volatile const uint32_t FIFOCNT;
  uint32_t  RESERVED1[13];
  volatile uint32_t FIFO;
} SDIO_TypeDef;



 

typedef struct
{
  volatile uint32_t CR1;
  volatile uint32_t CR2;
  volatile uint32_t SR;
  volatile uint32_t DR;
  volatile uint32_t CRCPR;
  volatile uint32_t RXCRCR;
  volatile uint32_t TXCRCR;
  volatile uint32_t I2SCFGR;
} SPI_TypeDef;



 
typedef struct
{
  volatile uint32_t CR1;              
  volatile uint32_t CR2;              
  volatile uint32_t SMCR;             
  volatile uint32_t DIER;             
  volatile uint32_t SR;               
  volatile uint32_t EGR;              
  volatile uint32_t CCMR1;            
  volatile uint32_t CCMR2;            
  volatile uint32_t CCER;             
  volatile uint32_t CNT;              
  volatile uint32_t PSC;              
  volatile uint32_t ARR;              
  volatile uint32_t RCR;              
  volatile uint32_t CCR1;             
  volatile uint32_t CCR2;             
  volatile uint32_t CCR3;             
  volatile uint32_t CCR4;             
  volatile uint32_t BDTR;             
  volatile uint32_t DCR;              
  volatile uint32_t DMAR;             
  volatile uint32_t OR;               
}TIM_TypeDef;




 
 
typedef struct
{
  volatile uint32_t SR;          
  volatile uint32_t DR;          
  volatile uint32_t BRR;         
  volatile uint32_t CR1;         
  volatile uint32_t CR2;         
  volatile uint32_t CR3;         
  volatile uint32_t GTPR;        
} USART_TypeDef;



 
  
typedef struct
{
  volatile uint16_t EP0R;                   
  volatile uint16_t RESERVED0;                  
  volatile uint16_t EP1R;                  
  volatile uint16_t RESERVED1;                    
  volatile uint16_t EP2R;                  
  volatile uint16_t RESERVED2;                    
  volatile uint16_t EP3R;                   
  volatile uint16_t RESERVED3;                    
  volatile uint16_t EP4R;                  
  volatile uint16_t RESERVED4;                    
  volatile uint16_t EP5R;                  
  volatile uint16_t RESERVED5;                    
  volatile uint16_t EP6R;                  
  volatile uint16_t RESERVED6;                    
  volatile uint16_t EP7R;                  
  volatile uint16_t RESERVED7[17];              
  volatile uint16_t CNTR;                  
  volatile uint16_t RESERVED8;                    
  volatile uint16_t ISTR;                  
  volatile uint16_t RESERVED9;                    
  volatile uint16_t FNR;                   
  volatile uint16_t RESERVEDA;                    
  volatile uint16_t DADDR;                 
  volatile uint16_t RESERVEDB;                    
  volatile uint16_t BTABLE;                
  volatile uint16_t RESERVEDC;                    
} USB_TypeDef;




 

typedef struct
{
  volatile uint32_t CR;    
  volatile uint32_t CFR;   
  volatile uint32_t SR;    
} WWDG_TypeDef;



 
  


 











 




#line 659 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



#line 672 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"










 






 
  


   

#line 737 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"




 



 
  
  

 
    
 
 
 

 
 
 
 
 

 




 




 




 
 
 
 
 

 
#line 798 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 805 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 815 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 825 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"






 
#line 844 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 




 




 




 




 




 




 




 




 




 






 
#line 916 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 924 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 941 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 
#line 979 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
 










 










 
#line 1012 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 1022 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1030 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 1044 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 



















 
#line 1079 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"




#line 1129 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1137 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







  
#line 1154 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1207 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
#line 1228 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 1242 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"









 
#line 1267 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 1278 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 1291 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"










 
#line 1314 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"




 
#line 1337 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 1351 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"









 
#line 1376 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 1387 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 1400 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"










 
#line 1420 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 





#line 1439 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 1468 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
 
 
 
 
 

 








































































































 








































































































 
#line 1736 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1786 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1836 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 1885 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1935 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 1988 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 

 
#line 1999 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2047 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 2054 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2069 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
#line 2087 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 2102 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 2117 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 2135 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 
#line 2150 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











 
#line 2169 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
#line 2181 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 2192 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
#line 2207 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2228 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2249 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 2270 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2291 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2305 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2326 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2347 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 2368 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2389 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2403 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2424 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2445 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 2466 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2487 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2501 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2522 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2543 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 2564 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2585 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



 
 
 
 
 

 
#line 2654 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2676 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
 
 
#line 2735 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2756 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2815 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2836 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2895 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2916 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2975 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 2996 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3055 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3076 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 
#line 3168 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3254 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3280 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"























 




 




 




 
 
 
 
 



 


 
#line 3345 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



 
#line 3359 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3384 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3391 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3399 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3406 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



 
#line 3430 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3437 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 3448 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3461 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3469 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3476 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3483 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3490 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3497 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3504 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3511 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3518 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3526 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3533 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3540 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3547 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3554 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3561 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3568 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3575 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3582 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3589 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 




 




 




 
#line 3629 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3638 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3647 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3656 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3664 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3674 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3683 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3692 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3701 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3710 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3719 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3729 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3738 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3747 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3756 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3765 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3774 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3784 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3793 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3802 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3811 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 




 




 




 




 
#line 3845 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
 
 
 
 
 
#line 3868 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















 
#line 3895 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3902 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3927 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 3935 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 3942 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





#line 3954 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 3967 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4014 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4052 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4078 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 






#line 4092 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4099 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











#line 4116 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4123 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 







#line 4143 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 4157 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 






#line 4171 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4178 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











#line 4195 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4202 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 







#line 4222 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 4236 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4280 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 




 




 




 




 




 
#line 4333 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 4358 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4368 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4377 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
 
 
 
 

 
#line 4399 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4419 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 




 




 




 




 




 
 
 
 
 

 




 
#line 4478 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 4491 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 
#line 4509 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4518 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
#line 4534 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4543 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







 







 





 
 
 
 
 

 






 
#line 4590 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 4603 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 










#line 4641 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 




 




 




 




 




 
#line 4695 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4703 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 4716 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 4795 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4836 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 4910 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 
 
 
 
 

 
#line 4936 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

  
#line 4968 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 

                                                                            
#line 4980 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


                                                                                
#line 4990 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
                                                                                
#line 4998 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 5019 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
                                                                           
















#line 5042 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



                                                                          






#line 5063 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"










                                                                           






#line 5086 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 5107 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 5130 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 5151 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 5174 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 5195 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 5218 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 5239 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 5262 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 5283 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 5306 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 










#line 5327 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

















#line 5350 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
#line 5392 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5424 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5441 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 5467 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





     




 
 




 




 




 




 




 




 




 




 

 




 




 




 




 




 




 




 




 

 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 


 

 




 




 




 




 




 




 




 




 

 




#line 5667 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5685 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5703 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5721 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5739 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5757 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5775 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 




#line 5793 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 

 


#line 5809 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5821 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5833 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5845 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5857 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5869 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5881 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5893 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5905 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5917 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5929 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5941 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5953 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5965 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5977 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 


#line 5989 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



 
 
 
 
 

 
 
#line 6030 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6059 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6109 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 6122 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 6135 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6149 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6163 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6207 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6218 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 6225 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 6232 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6261 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
#line 6279 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6290 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6304 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6318 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6335 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6346 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6360 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6374 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6391 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

   
#line 6402 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6416 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6430 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6444 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6455 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6469 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6483 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6497 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6508 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6522 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6536 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
#line 6545 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6592 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6639 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6686 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6733 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6831 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 6929 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7027 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7125 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7223 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7321 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7419 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7517 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7615 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7713 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7811 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 7909 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8007 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8105 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8203 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8301 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8399 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8497 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8595 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8693 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8791 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8889 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 8987 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9085 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9183 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9281 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9379 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9477 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 

 
#line 9494 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 9501 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 9532 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9552 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9578 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 




 




 




 





 
 
 
 
 

 
#line 9654 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9665 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 9681 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 



#line 9716 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
#line 9728 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 9777 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9803 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9814 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
 
 
 
 

 
#line 9857 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 9870 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9914 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9937 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"











 
#line 9982 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 9995 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 
 
 
 
 

 




#line 10030 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10044 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"







#line 10078 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
 
 
 
 
 
#line 10091 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 10101 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




#line 10116 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 







 
#line 10138 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10170 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 
#line 10183 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

#line 10202 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 




 

 
#line 10217 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10225 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10233 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10241 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10249 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10257 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10265 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"

 
#line 10273 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"





 



  



 

 









     


 


 

 
#line 10314 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"
  
 






 


 


 



 


 


 



 
 































































































#line 10463 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"



























    





    















 


                                            




 




 




 




                                     




 




 




 




 




 


 


 











  
 
 
 
 
  
 
 

 
#line 10604 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"


 
#line 10623 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f103xb.h"




 



 





  

  
  
  
   
#line 150 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"
#line 161 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"



 



   
typedef enum 
{
  RESET = 0, 
  SET = !RESET
} FlagStatus, ITStatus;

typedef enum 
{
  DISABLE = 0, 
  ENABLE = !DISABLE
} FunctionalState;


typedef enum 
{
  ERROR = 0, 
  SUCCESS = !ERROR
} ErrorStatus;



 




 



















 

#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"




































  

 
#line 336 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

 
#line 219 "../Drivers/CMSIS/Device/ST/STM32F1xx/Include/stm32f1xx.h"










 



 
  



 
#line 49 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 53 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"

 



   
typedef enum 
{
  HAL_OK       = 0x00U,
  HAL_ERROR    = 0x01U,
  HAL_BUSY     = 0x02U,
  HAL_TIMEOUT  = 0x03U
} HAL_StatusTypeDef;



 
typedef enum 
{
  HAL_UNLOCKED = 0x00U,
  HAL_LOCKED   = 0x01U  
} HAL_LockTypeDef;

 



























 


#line 122 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"







#line 137 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"


 
#line 159 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"




  









 


#line 192 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"



  



 


#line 209 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_def.h"







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 

 



 



 
typedef struct
{
  uint32_t PLLState;      
 

  uint32_t PLLSource;     
           

  uint32_t PLLMUL;        
 
} RCC_PLLInitTypeDef;
   


 
typedef struct
{
  uint32_t ClockType;             
 

  uint32_t SYSCLKSource;          
 

  uint32_t AHBCLKDivider;         
 

  uint32_t APB1CLKDivider;        
 

  uint32_t APB2CLKDivider;        
 
} RCC_ClkInitTypeDef;



 

 


 



 






 



 







 



 





 



 






 



 







 



 





 



 






 



 







 



 






 



 






 



 
#line 231 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 
  


 








 



 






 




 





 



 




 



 
#line 289 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"


  
  








 
 




 
#line 315 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

 




 



 

 



 







 
#line 347 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 355 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 363 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 371 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"








 







 

#line 397 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 







 
#line 416 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 424 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 432 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 440 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 448 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 456 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 464 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"












 







 

#line 500 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 







 
#line 519 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 527 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 535 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 543 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 551 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 559 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 567 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 575 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 583 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 590 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"







 
  






 

#line 625 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 




 
#line 640 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"




#line 650 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"






 




 
#line 669 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"





#line 681 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"







 



 










 









   





 



 





 






 




 



 






















 
#line 791 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 

















 
#line 839 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 






 




 































 








 




 



 








 









 




 



  

#line 956 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"











 








 

  

 






















 

                                                   






 




 




 





 



 




 




 
















 

















 


















 



















 





 
























 






 



 

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



































  

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



  



 

#line 74 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"






 



 






#line 105 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 127 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"










#line 191 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"






#line 204 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"










 

  



 

#line 242 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 
typedef struct
{
  uint32_t OscillatorType;       
 






  uint32_t HSEState;              
 
                          
  uint32_t HSEPredivValue;       
 

  uint32_t LSEState;              
 
                                          
  uint32_t HSIState;              
 

  uint32_t HSICalibrationValue;   
 
                               
  uint32_t LSIState;              
 

  RCC_PLLInitTypeDef PLL;                




} RCC_OscInitTypeDef;

#line 297 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 
typedef struct
{
  uint32_t PeriphClockSelection;      
 

  uint32_t RTCClockSelection;         
 

  uint32_t AdcClockSelection;         
 

#line 326 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




  uint32_t UsbClockSelection;         
 


} RCC_PeriphCLKInitTypeDef;



 

 



 



 
#line 361 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



 







 

#line 405 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"






 





 




#line 451 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 464 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



#line 491 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 

#line 552 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 

#line 579 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



 
#line 598 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"


 

#line 626 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 

 


 







 

#line 657 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 670 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 683 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 696 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 744 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 784 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 806 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




#line 821 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 829 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 837 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 845 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"







#line 861 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




#line 931 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 970 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1036 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1048 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1078 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 1169 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 1192 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




#line 1225 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1237 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




#line 1262 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1283 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1304 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1334 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 







 

#line 1395 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 

#line 1421 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




 








#line 1442 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"













#line 1473 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1485 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1503 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"







#line 1519 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 




 









#line 1546 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"










#line 1564 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1572 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1580 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"

#line 1590 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



  

#line 1611 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"







 





#line 1632 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"


 






 

#line 1685 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"




   








 







 




#line 1730 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"








 









 




 

#line 1864 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"


 

 


 



 

HAL_StatusTypeDef HAL_RCCEx_PeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit);
void              HAL_RCCEx_GetPeriphCLKConfig(RCC_PeriphCLKInitTypeDef  *PeriphClkInit);
uint32_t          HAL_RCCEx_GetPeriphCLKFreq(uint32_t PeriphClk);



 

#line 1906 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc_ex.h"



 



 
  


 
  






 

#line 1162 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

 


 



 

 
void              HAL_RCC_DeInit(void);
HAL_StatusTypeDef HAL_RCC_OscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct);
HAL_StatusTypeDef HAL_RCC_ClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t FLatency);



 



 

 
void              HAL_RCC_MCOConfig(uint32_t RCC_MCOx, uint32_t RCC_MCOSource, uint32_t RCC_MCODiv);
void              HAL_RCC_EnableCSS(void);
void              HAL_RCC_DisableCSS(void);
uint32_t          HAL_RCC_GetSysClockFreq(void);
uint32_t          HAL_RCC_GetHCLKFreq(void);
uint32_t          HAL_RCC_GetPCLK1Freq(void);
uint32_t          HAL_RCC_GetPCLK2Freq(void);
void              HAL_RCC_GetOscConfig(RCC_OscInitTypeDef  *RCC_OscInitStruct);
void              HAL_RCC_GetClockConfig(RCC_ClkInitTypeDef  *RCC_ClkInitStruct, uint32_t *pFLatency);

 
void              HAL_RCC_NMI_IRQHandler(void);

 
void              HAL_RCC_CSSCallback(void);



 



 



 



  
  
 

 
#line 1227 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 
  


 
#line 1241 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 




 






 
 


 


 


 



 
 



 



 
 



 



 



 





 
  
 


 


 


 








 



 


 






 

#line 1350 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"

#line 1375 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_rcc.h"



 



 



 
  






 

#line 220 "../Inc/stm32f1xx_hal_conf.h"


#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"



































  

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"



 



  

 


 



  
typedef struct
{
  uint32_t Pin;       
 

  uint32_t Mode;      
 

  uint32_t Pull;      
 

  uint32_t Speed;     
 
}GPIO_InitTypeDef;



 
typedef enum
{
  GPIO_PIN_RESET = 0U,
  GPIO_PIN_SET
}GPIO_PinState;


 

 



  



 
#line 118 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"




 










  
#line 140 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"


    



 






 




 






 

 


   





 
  


 

 


 






 







 







 







 







 



 

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"



































  

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"



 



  

 

 



  
  



 
  


 
  
#line 90 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 107 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"


  
  


 
  













 
  


 




 
  




 






 






 






 






 






 






 






 






 







 








 








 








 








 








 








 








 








 









 









 









 









 







 








 








 








 












 









 


#line 397 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 415 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 434 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 452 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"





 






 






 






 


#line 497 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 514 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"





 








 








 








 




#line 569 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 588 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 607 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 624 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 641 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 657 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 674 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 691 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 708 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 725 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 742 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 759 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 776 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 793 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 810 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 829 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"

#line 856 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"



  
  


 
  


 
#line 885 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio_ex.h"



 

 
 



 



 
void HAL_GPIOEx_ConfigEventout(uint32_t GPIO_PortSource, uint32_t GPIO_PinSource);
void HAL_GPIOEx_EnableEventout(void);
void HAL_GPIOEx_DisableEventout(void);



  



  



  



  
  






 
#line 232 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"

 


 



 
 
void  HAL_GPIO_Init(GPIO_TypeDef  *GPIOx, GPIO_InitTypeDef *GPIO_Init);
void  HAL_GPIO_DeInit(GPIO_TypeDef  *GPIOx, uint32_t GPIO_Pin);


 



 
 
GPIO_PinState HAL_GPIO_ReadPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_WritePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin, GPIO_PinState PinState);
void HAL_GPIO_TogglePin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
HAL_StatusTypeDef HAL_GPIO_LockPin(GPIO_TypeDef* GPIOx, uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_IRQHandler(uint16_t GPIO_Pin);
void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin);



  



  
 
 
 


 



 

 


 
#line 299 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_gpio.h"


 

 


 



 



  



 







 
#line 224 "../Inc/stm32f1xx_hal_conf.h"

   
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"



































 

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"



 



 

 



 



 
typedef struct
{
  uint32_t Direction;                 

 

  uint32_t PeriphInc;                 
 

  uint32_t MemInc;                    
 

  uint32_t PeriphDataAlignment;       
 

  uint32_t MemDataAlignment;          
 

  uint32_t Mode;                      


 

  uint32_t Priority;                  
 
} DMA_InitTypeDef;



 
typedef enum
{
  HAL_DMA_STATE_RESET             = 0x00U,   
  HAL_DMA_STATE_READY             = 0x01U,   
  HAL_DMA_STATE_BUSY              = 0x02U,   
  HAL_DMA_STATE_TIMEOUT           = 0x03U    
}HAL_DMA_StateTypeDef;



 
typedef enum
{
  HAL_DMA_FULL_TRANSFER           = 0x00U,     
  HAL_DMA_HALF_TRANSFER           = 0x01U      
}HAL_DMA_LevelCompleteTypeDef;



 
typedef enum
{
  HAL_DMA_XFER_CPLT_CB_ID          = 0x00U,     
  HAL_DMA_XFER_HALFCPLT_CB_ID      = 0x01U,     
  HAL_DMA_XFER_ERROR_CB_ID         = 0x02U,      
  HAL_DMA_XFER_ABORT_CB_ID         = 0x03U,      
  HAL_DMA_XFER_ALL_CB_ID           = 0x04U       
    
}HAL_DMA_CallbackIDTypeDef;



 
typedef struct __DMA_HandleTypeDef
{
  DMA_Channel_TypeDef   *Instance;                        
  
  DMA_InitTypeDef       Init;                              
  
  HAL_LockTypeDef       Lock;                               
  
  HAL_DMA_StateTypeDef  State;                            
  
  void                  *Parent;                                                         
  
  void                  (* XferCpltCallback)( struct __DMA_HandleTypeDef * hdma);      
  
  void                  (* XferHalfCpltCallback)( struct __DMA_HandleTypeDef * hdma);  
  
  void                  (* XferErrorCallback)( struct __DMA_HandleTypeDef * hdma);     

  void                  (* XferAbortCallback)( struct __DMA_HandleTypeDef * hdma);       
  
  volatile uint32_t         ErrorCode;                                                     

  DMA_TypeDef            *DmaBaseAddress;                                              
  
  uint32_t               ChannelIndex;                                                   

} DMA_HandleTypeDef;    


 

 



 



 







 



 






 



 




 



 




 



 





 



 





 



 




 



 






 




 





 



 
#line 289 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"


 



 


 


 




 






 






 



 










 











 











 






 




 

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"



































 

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"



 



 

  
 
 


 
 
#line 181 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"


 





 
#line 198 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"





 
#line 212 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"





 
#line 226 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"





 
#line 240 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma_ex.h"












 














 




 


  


 



 



 




        



 
#line 375 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_dma.h"

 


 



 
 
HAL_StatusTypeDef HAL_DMA_Init(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_DeInit (DMA_HandleTypeDef *hdma);


 



 
 
HAL_StatusTypeDef HAL_DMA_Start (DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Start_IT(DMA_HandleTypeDef *hdma, uint32_t SrcAddress, uint32_t DstAddress, uint32_t DataLength);
HAL_StatusTypeDef HAL_DMA_Abort(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_Abort_IT(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_PollForTransfer(DMA_HandleTypeDef *hdma, uint32_t CompleteLevel, uint32_t Timeout);
void HAL_DMA_IRQHandler(DMA_HandleTypeDef *hdma);
HAL_StatusTypeDef HAL_DMA_RegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID, void (* pCallback)( DMA_HandleTypeDef * _hdma));
HAL_StatusTypeDef HAL_DMA_UnRegisterCallback(DMA_HandleTypeDef *hdma, HAL_DMA_CallbackIDTypeDef CallbackID);



 



 
 
HAL_DMA_StateTypeDef HAL_DMA_GetState(DMA_HandleTypeDef *hdma);
uint32_t HAL_DMA_GetError(DMA_HandleTypeDef *hdma);


 



 

 


 































  

 



 



 







 
#line 228 "../Inc/stm32f1xx_hal_conf.h"

   



   








#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



































  

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



 



  
 


 

#line 94 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



 

 



 



 
#line 118 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"


 



 





 

#line 263 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



 


 

 


 
  


 
 
void HAL_NVIC_SetPriorityGrouping(uint32_t PriorityGroup);
void HAL_NVIC_SetPriority(IRQn_Type IRQn, uint32_t PreemptPriority, uint32_t SubPriority);
void HAL_NVIC_EnableIRQ(IRQn_Type IRQn);
void HAL_NVIC_DisableIRQ(IRQn_Type IRQn);
void HAL_NVIC_SystemReset(void);
uint32_t HAL_SYSTICK_Config(uint32_t TicksNumb);


 



 
 
uint32_t HAL_NVIC_GetPriorityGrouping(void);
void HAL_NVIC_GetPriority(IRQn_Type IRQn, uint32_t PriorityGroup, uint32_t* pPreemptPriority, uint32_t* pSubPriority);
uint32_t HAL_NVIC_GetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_SetPendingIRQ(IRQn_Type IRQn);
void HAL_NVIC_ClearPendingIRQ(IRQn_Type IRQn);
uint32_t HAL_NVIC_GetActive(IRQn_Type IRQn);
void HAL_SYSTICK_CLKSourceConfig(uint32_t CLKSource);
void HAL_SYSTICK_IRQHandler(void);
void HAL_SYSTICK_Callback(void);








 



 

 
 
 
 


 















#line 406 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_cortex.h"



 

 



  



 
  





 

 
#line 244 "../Inc/stm32f1xx_hal_conf.h"














#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"



































 

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"
   


 



 
  


 



 



 















   

  


   



 
typedef enum 
{
  FLASH_PROC_NONE              = 0U, 
  FLASH_PROC_PAGEERASE         = 1U,
  FLASH_PROC_MASSERASE         = 2U,
  FLASH_PROC_PROGRAMHALFWORD   = 3U,
  FLASH_PROC_PROGRAMWORD       = 4U,
  FLASH_PROC_PROGRAMDOUBLEWORD = 5U
} FLASH_ProcedureTypeDef;



 
typedef struct
{
  volatile FLASH_ProcedureTypeDef ProcedureOnGoing;  
  
  volatile uint32_t               DataRemaining;     

  volatile uint32_t               Address;           

  volatile uint64_t               Data;              

  HAL_LockTypeDef             Lock;              

  volatile uint32_t               ErrorCode;        
 
} FLASH_ProcessTypeDef;



 

 


   



 








 



  






 




 






 

#line 178 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"


   
  
 




 
 



 






 







 




 





  
  





  







  




 





    



  





 




 
  


  

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



































 

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



 



  



 







   



 





















 





 
#line 106 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"

 






 





 








#line 136 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"

 






 








 
#line 160 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"

 






 
#line 175 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



   

  


   



 
typedef struct
{
  uint32_t TypeErase;   
 
  
  uint32_t Banks;       
     
  
  uint32_t PageAddress; 

 
  
  uint32_t NbPages;     
 
                                                          
} FLASH_EraseInitTypeDef;



 
typedef struct
{
  uint32_t OptionType;  
 

  uint32_t WRPState;    
 

  uint32_t WRPPage;     
 

  uint32_t Banks;        
  
    
  uint8_t RDPLevel;     
 

#line 231 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
  uint8_t USERConfig;   


 


  uint32_t DATAAddress; 
 
  
  uint8_t DATAData;     
 
} FLASH_OBProgramInitTypeDef;



 

 


   



  



  



        




         
        



 



  





 



 
#line 296 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"


 



 



  



 







 



  





 



 
 
#line 346 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
        
       
 
#line 375 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"


 
#line 416 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
         
        


 
 




 
#line 433 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
       
 
#line 441 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"

 
#line 449 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"
      
 
#line 457 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



 



 




 
  


  




 



  




  



  




 

#line 508 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"



 




 



 



  




 
#line 547 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"










 
  



 
#line 574 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"







   



 
  



 

 


 




  

#line 693 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"







  









  












 












 
#line 748 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash_ex.h"





 



 

 


 



 
 
HAL_StatusTypeDef  HAL_FLASHEx_Erase(FLASH_EraseInitTypeDef *pEraseInit, uint32_t *PageError);
HAL_StatusTypeDef  HAL_FLASHEx_Erase_IT(FLASH_EraseInitTypeDef *pEraseInit);



 



 
 
HAL_StatusTypeDef  HAL_FLASHEx_OBErase(void);
HAL_StatusTypeDef  HAL_FLASHEx_OBProgram(FLASH_OBProgramInitTypeDef *pOBInit);
void               HAL_FLASHEx_OBGetConfig(FLASH_OBProgramInitTypeDef *pOBInit);
uint32_t           HAL_FLASHEx_OBGetUserData(uint32_t DATAAdress);


 



 



 



 






 
#line 267 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_flash.h"

 


 
  


 
 
HAL_StatusTypeDef HAL_FLASH_Program(uint32_t TypeProgram, uint32_t Address, uint64_t Data);
HAL_StatusTypeDef HAL_FLASH_Program_IT(uint32_t TypeProgram, uint32_t Address, uint64_t Data);

 
void       HAL_FLASH_IRQHandler(void);
  
void       HAL_FLASH_EndOfOperationCallback(uint32_t ReturnValue);
void       HAL_FLASH_OperationErrorCallback(uint32_t ReturnValue);



 



 
 
HAL_StatusTypeDef HAL_FLASH_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_Lock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Unlock(void);
HAL_StatusTypeDef HAL_FLASH_OB_Lock(void);
void HAL_FLASH_OB_Launch(void);



 



 
 
uint32_t HAL_FLASH_GetError(void);



 



 

 


 
HAL_StatusTypeDef       FLASH_WaitForLastOperation(uint32_t Timeout);






 



 



 







 

#line 260 "../Inc/stm32f1xx_hal_conf.h"






















#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"



































 

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"



 



 

 



  



 
typedef struct
{
  uint32_t PVDLevel;   
 

  uint32_t Mode;      
 
}PWR_PVDTypeDef;




 


 



  





 

 
 



  



 
#line 111 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"
                                                          


 



 
#line 126 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_pwr.h"



 




 





 



 





 



 





 



 





 



 







 



 

 


 















 







 





 





 





 





 






 






 






 






 





 






 







 





 





 



 

 


 






















 



 



 
  


 

 
void HAL_PWR_DeInit(void);
void HAL_PWR_EnableBkUpAccess(void);
void HAL_PWR_DisableBkUpAccess(void);



 



 

 
void HAL_PWR_ConfigPVD(PWR_PVDTypeDef *sConfigPVD);
 
void HAL_PWR_EnablePVD(void);
void HAL_PWR_DisablePVD(void);

 
void HAL_PWR_EnableWakeUpPin(uint32_t WakeUpPinx);
void HAL_PWR_DisableWakeUpPin(uint32_t WakeUpPinx);

 
void HAL_PWR_EnterSTOPMode(uint32_t Regulator, uint8_t STOPEntry);
void HAL_PWR_EnterSLEEPMode(uint32_t Regulator, uint8_t SLEEPEntry);
void HAL_PWR_EnterSTANDBYMode(void);

void HAL_PWR_EnableSleepOnExit(void);
void HAL_PWR_DisableSleepOnExit(void);
void HAL_PWR_EnableSEVOnPend(void);
void HAL_PWR_DisableSEVOnPend(void);



void HAL_PWR_PVD_IRQHandler(void);
void HAL_PWR_PVDCallback(void);


 



 



 



 








 
#line 284 "../Inc/stm32f1xx_hal_conf.h"


























#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"



































 

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"



 



 

 


 


 
typedef struct
{
  uint32_t Prescaler;         
 

  uint32_t CounterMode;       
 

  uint32_t Period;            

 

  uint32_t ClockDivision;     
 

  uint32_t RepetitionCounter;  






 
									 
  uint32_t AutoReloadPreload;  
 
} TIM_Base_InitTypeDef;



 
typedef struct
{
  uint32_t OCMode;        
 

  uint32_t Pulse;         
 

  uint32_t OCPolarity;    
 

  uint32_t OCNPolarity;   

 

  uint32_t OCFastMode;   

 


  uint32_t OCIdleState;   

 

  uint32_t OCNIdleState;  

 
} TIM_OC_InitTypeDef;



 
typedef struct
{
  uint32_t OCMode;        
 

  uint32_t Pulse;         
 

  uint32_t OCPolarity;    
 

  uint32_t OCNPolarity;   

 

  uint32_t OCIdleState;   

 

  uint32_t OCNIdleState;  

 

  uint32_t ICPolarity;    
 

  uint32_t ICSelection;   
 

  uint32_t ICFilter;      
 
} TIM_OnePulse_InitTypeDef;




 
typedef struct
{
  uint32_t  ICPolarity;   
 

  uint32_t ICSelection;  
 

  uint32_t ICPrescaler;  
 

  uint32_t ICFilter;     
 
} TIM_IC_InitTypeDef;



 
typedef struct
{
  uint32_t EncoderMode;   
 

  uint32_t IC1Polarity;   
 

  uint32_t IC1Selection;  
 

  uint32_t IC1Prescaler;  
 

  uint32_t IC1Filter;     
 

  uint32_t IC2Polarity;   
 

  uint32_t IC2Selection;  
 

  uint32_t IC2Prescaler;  
 

  uint32_t IC2Filter;     
 
} TIM_Encoder_InitTypeDef;




 
typedef struct
{
  uint32_t ClockSource;     
 
  uint32_t ClockPolarity;   
 
  uint32_t ClockPrescaler;  
 
  uint32_t ClockFilter;    
 
}TIM_ClockConfigTypeDef;



 
typedef struct
{
  uint32_t ClearInputState;      
 
  uint32_t ClearInputSource;     
 
  uint32_t ClearInputPolarity;   
 
  uint32_t ClearInputPrescaler;  
 
  uint32_t ClearInputFilter;    
 
}TIM_ClearInputConfigTypeDef;



 
typedef struct {
  uint32_t  SlaveMode;      
 
  uint32_t  InputTrigger;      
 
  uint32_t  TriggerPolarity;   
 
  uint32_t  TriggerPrescaler;  
 
  uint32_t  TriggerFilter;     
 

}TIM_SlaveConfigTypeDef;



 
typedef enum
{
  HAL_TIM_STATE_RESET             = 0x00U,     
  HAL_TIM_STATE_READY             = 0x01U,     
  HAL_TIM_STATE_BUSY              = 0x02U,     
  HAL_TIM_STATE_TIMEOUT           = 0x03U,     
  HAL_TIM_STATE_ERROR             = 0x04U      
}HAL_TIM_StateTypeDef;



 
typedef enum
{
  HAL_TIM_ACTIVE_CHANNEL_1        = 0x01U,     
  HAL_TIM_ACTIVE_CHANNEL_2        = 0x02U,     
  HAL_TIM_ACTIVE_CHANNEL_3        = 0x04U,     
  HAL_TIM_ACTIVE_CHANNEL_4        = 0x08U,     
  HAL_TIM_ACTIVE_CHANNEL_CLEARED  = 0x00U      
}HAL_TIM_ActiveChannel;



 
typedef struct
{
  TIM_TypeDef                 *Instance;      
  TIM_Base_InitTypeDef        Init;           
  HAL_TIM_ActiveChannel       Channel;        
  DMA_HandleTypeDef           *hdma[7U];     
 
  HAL_LockTypeDef             Lock;           
  volatile HAL_TIM_StateTypeDef   State;          
}TIM_HandleTypeDef;



 

 


 



 





 



 




 



 






 



 







 



 





 



 




 



 
#line 381 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 




 



 




 



 




 



 




 



 




 



 




 



 




 



 







 



 




 



 







 



 






 



 




 



 





 



 
#line 522 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 





 



 
#line 546 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 
#line 561 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 
#line 580 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 
#line 597 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 







 



 






 



 




 



 




 



 






 



 




 



 




 



 






 



 




 



 




 


 




 



 
#line 719 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 







 



 




 



 
#line 756 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 







 



 






 



 




 



 
#line 814 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 
#line 839 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 
#line 853 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"


 



 






 



 

 


 


 





 

 


 
















                              
#line 913 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"




















































#line 975 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"















































#line 1030 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"










#line 1048 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"























#line 1090 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"

#line 1109 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"








 










 












 










 








 

 


 
void TIM_Base_SetConfig(TIM_TypeDef *TIMx, TIM_Base_InitTypeDef *Structure);
void TIM_TI1_SetConfig(TIM_TypeDef *TIMx, uint32_t TIM_ICPolarity, uint32_t TIM_ICSelection, uint32_t TIM_ICFilter);
void TIM_OC2_SetConfig(TIM_TypeDef *TIMx, TIM_OC_InitTypeDef *OC_Config);
void TIM_DMADelayPulseCplt(DMA_HandleTypeDef *hdma);
void TIM_DMAError(DMA_HandleTypeDef *hdma);
void TIM_DMACaptureCplt(DMA_HandleTypeDef *hdma);
void TIM_CCxChannelCmd(TIM_TypeDef* TIMx, uint32_t Channel, uint32_t ChannelState);


 

 


 




 






 






 






 
#line 1218 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"

 





 
#line 1236 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"






 
















 
















 















 















 




















 




















 







 







 








 







 














 













 








 






 









 










 













 
#line 1470 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"








 




















 




















 













 













 


















 








 

 
#line 1 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim_ex.h"



































  

 







 
#line 48 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim_ex.h"



 



  

  


 




 

typedef struct
{

  uint32_t IC1Polarity;            
 

  uint32_t IC1Prescaler;        
 

  uint32_t IC1Filter;           
   
  uint32_t Commutation_Delay;  
 
} TIM_HallSensor_InitTypeDef;








  
typedef struct
{
  uint32_t OffStateRunMode;       
 
  uint32_t OffStateIDLEMode;      
 
  uint32_t LockLevel;             
                              
  uint32_t DeadTime;              
 
  uint32_t BreakState;            
 
  uint32_t BreakPolarity;         
 
  uint32_t AutomaticOutput;       
            
} TIM_BreakDeadTimeConfigTypeDef;


        
        



  
typedef struct {
  uint32_t  MasterOutputTrigger;   
  
  uint32_t  MasterSlaveMode;       
 
}TIM_MasterConfigTypeDef;



  

 





 
    


 



 



 

        
        

 










 
















 






 


 



 
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Init(TIM_HandleTypeDef *htim, TIM_HallSensor_InitTypeDef* sConfig);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_DeInit(TIM_HandleTypeDef *htim);

void HAL_TIMEx_HallSensor_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIMEx_HallSensor_MspDeInit(TIM_HandleTypeDef *htim);

  
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_IT(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_IT(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_HallSensor_Stop_DMA(TIM_HandleTypeDef *htim);


 







 
 
 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_OCN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_OCN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 



 
 
 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);

 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIMEx_PWMN_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIMEx_PWMN_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 



 
 
 
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel);

 
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIMEx_OnePulseN_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);


 

        
        



 
 



HAL_StatusTypeDef HAL_TIMEx_ConfigCommutationEvent(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutationEvent_IT(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigCommutationEvent_DMA(TIM_HandleTypeDef *htim, uint32_t  InputTrigger, uint32_t  CommutationSource);
HAL_StatusTypeDef HAL_TIMEx_ConfigBreakDeadTime(TIM_HandleTypeDef *htim, TIM_BreakDeadTimeConfigTypeDef *sBreakDeadTimeConfig);

        
        
HAL_StatusTypeDef HAL_TIMEx_MasterConfigSynchronization(TIM_HandleTypeDef *htim, TIM_MasterConfigTypeDef * sMasterConfig);


 



 
 
void HAL_TIMEx_CommutationCallback(TIM_HandleTypeDef *htim);
void HAL_TIMEx_BreakCallback(TIM_HandleTypeDef *htim);


 






 
 
HAL_TIM_StateTypeDef HAL_TIMEx_HallSensor_GetState(TIM_HandleTypeDef *htim);


 

        
        



  
 

 


 
void TIMEx_DMACommutationCplt(DMA_HandleTypeDef *hdma);


  
 



  



 
  







 
#line 1580 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal_tim.h"

 


 



 
 
HAL_StatusTypeDef HAL_TIM_Base_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Base_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Base_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_Stop(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start_IT(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_Base_Stop_IT(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_Base_Start_DMA(TIM_HandleTypeDef *htim, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_Base_Stop_DMA(TIM_HandleTypeDef *htim);


 



 
 
HAL_StatusTypeDef HAL_TIM_OC_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_OC_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_OC_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_OC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_OC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_OC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);



 



 
 
HAL_StatusTypeDef HAL_TIM_PWM_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_PWM_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_PWM_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_PWM_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 



 
 
HAL_StatusTypeDef HAL_TIM_IC_Init(TIM_HandleTypeDef *htim);
HAL_StatusTypeDef HAL_TIM_IC_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_IC_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_IC_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_IC_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_IC_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);


 



 
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Init(TIM_HandleTypeDef *htim, uint32_t OnePulseMode);
HAL_StatusTypeDef HAL_TIM_OnePulse_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OnePulse_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_OnePulse_MspDeInit(TIM_HandleTypeDef *htim);
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Start(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIM_OnePulse_Stop(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
 
HAL_StatusTypeDef HAL_TIM_OnePulse_Start_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);
HAL_StatusTypeDef HAL_TIM_OnePulse_Stop_IT(TIM_HandleTypeDef *htim, uint32_t OutputChannel);


 



 
 
HAL_StatusTypeDef HAL_TIM_Encoder_Init(TIM_HandleTypeDef *htim,  TIM_Encoder_InitTypeDef* sConfig);
HAL_StatusTypeDef HAL_TIM_Encoder_DeInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Encoder_MspInit(TIM_HandleTypeDef *htim);
void HAL_TIM_Encoder_MspDeInit(TIM_HandleTypeDef *htim);
  
HAL_StatusTypeDef HAL_TIM_Encoder_Start(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_Encoder_Start_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop_IT(TIM_HandleTypeDef *htim, uint32_t Channel);
 
HAL_StatusTypeDef HAL_TIM_Encoder_Start_DMA(TIM_HandleTypeDef *htim, uint32_t Channel, uint32_t *pData1, uint32_t *pData2, uint16_t Length);
HAL_StatusTypeDef HAL_TIM_Encoder_Stop_DMA(TIM_HandleTypeDef *htim, uint32_t Channel);



 



 
 
void HAL_TIM_IRQHandler(TIM_HandleTypeDef *htim);


 



 
 
HAL_StatusTypeDef HAL_TIM_OC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OC_InitTypeDef* sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_PWM_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OC_InitTypeDef* sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_IC_ConfigChannel(TIM_HandleTypeDef *htim, TIM_IC_InitTypeDef* sConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_OnePulse_ConfigChannel(TIM_HandleTypeDef *htim, TIM_OnePulse_InitTypeDef* sConfig, uint32_t OutputChannel,  uint32_t InputChannel);
HAL_StatusTypeDef HAL_TIM_ConfigOCrefClear(TIM_HandleTypeDef *htim, TIM_ClearInputConfigTypeDef * sClearInputConfig, uint32_t Channel);
HAL_StatusTypeDef HAL_TIM_ConfigClockSource(TIM_HandleTypeDef *htim, TIM_ClockConfigTypeDef * sClockSourceConfig);
HAL_StatusTypeDef HAL_TIM_ConfigTI1Input(TIM_HandleTypeDef *htim, uint32_t TI1_Selection);
HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchronization(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef * sSlaveConfig);
HAL_StatusTypeDef HAL_TIM_SlaveConfigSynchronization_IT(TIM_HandleTypeDef *htim, TIM_SlaveConfigTypeDef * sSlaveConfig);
HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress, uint32_t BurstRequestSrc,                                               uint32_t  *BurstBuffer, uint32_t  BurstLength);

HAL_StatusTypeDef HAL_TIM_DMABurst_WriteStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc);
HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStart(TIM_HandleTypeDef *htim, uint32_t BurstBaseAddress, uint32_t BurstRequestSrc,                                               uint32_t  *BurstBuffer, uint32_t  BurstLength);

HAL_StatusTypeDef HAL_TIM_DMABurst_ReadStop(TIM_HandleTypeDef *htim, uint32_t BurstRequestSrc);
HAL_StatusTypeDef HAL_TIM_GenerateEvent(TIM_HandleTypeDef *htim, uint32_t EventSource);
uint32_t HAL_TIM_ReadCapturedValue(TIM_HandleTypeDef *htim, uint32_t Channel);



 



 
 
void HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_OC_DelayElapsedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_PWM_PulseFinishedCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_TriggerCallback(TIM_HandleTypeDef *htim);
void HAL_TIM_ErrorCallback(TIM_HandleTypeDef *htim);


 



 
 
HAL_TIM_StateTypeDef HAL_TIM_Base_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_OC_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_PWM_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_IC_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_OnePulse_GetState(TIM_HandleTypeDef *htim);
HAL_TIM_StateTypeDef HAL_TIM_Encoder_GetState(TIM_HandleTypeDef *htim);



 



 



 



 







 
#line 312 "../Inc/stm32f1xx_hal_conf.h"





























   

 
#line 359 "../Inc/stm32f1xx_hal_conf.h"







 
#line 49 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"



 



  

 
 

 


 











 
   
 


 





 






 




#line 106 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 114 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 122 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 130 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 138 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 146 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"



 





 





 






 







 




#line 188 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"
   
 



 




#line 205 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 213 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 221 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 229 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"


#line 238 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 246 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"

#line 254 "../Drivers/STM32F1xx_HAL_Driver/Inc/stm32f1xx_hal.h"



 



 

 


 


 
 
HAL_StatusTypeDef HAL_Init(void);
HAL_StatusTypeDef HAL_DeInit(void);
void HAL_MspInit(void);
void HAL_MspDeInit(void);
HAL_StatusTypeDef HAL_InitTick (uint32_t TickPriority);


 



 
 
void HAL_IncTick(void);
void HAL_Delay(volatile uint32_t Delay);
uint32_t HAL_GetTick(void);
void HAL_SuspendTick(void);
void HAL_ResumeTick(void);
uint32_t HAL_GetHalVersion(void);
uint32_t HAL_GetREVID(void);
uint32_t HAL_GetDEVID(void);
void HAL_DBGMCU_EnableDBGSleepMode(void);
void HAL_DBGMCU_DisableDBGSleepMode(void);
void HAL_DBGMCU_EnableDBGStopMode(void);
void HAL_DBGMCU_DisableDBGStopMode(void);
void HAL_DBGMCU_EnableDBGStandbyMode(void);
void HAL_DBGMCU_DisableDBGStandbyMode(void);
void HAL_GetUID(uint32_t *UID);


 



 
 
 


 


 
 


 


 
 
 


 



  
  






 
#line 56 "../Src/freertos.c"
 

 
osThreadId defaultTaskHandle;

 

 

 
void StartDefaultTask(void const * argument);

void MX_FREERTOS_Init(void);  

 

 

 

 

void MX_FREERTOS_Init(void) {
   
       
   

   
   
   

   
   
   

   
   
   

   
   
  const osThreadDef_t os_thread_def_defaultTask = { "defaultTask", (StartDefaultTask), (osPriorityNormal), (0), (128)};
  defaultTaskHandle = osThreadCreate(&os_thread_def_defaultTask, 0);

   
   
   

   
   
   
}

 
void StartDefaultTask(void const * argument)
{

   
	
	
   
  for(;;)
  {
    osDelay(500);
  }
   
}

 
     
 

 
