#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"





















































 

 








































  

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 100 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
#line 1 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"





















































 

 










































 
	
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







#line 102 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.h"
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





#line 101 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"



 


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


#line 263 "../Drivers/CMSIS/Include/cmsis_armcc.h"


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









 









 








 



__attribute__((always_inline)) static __inline uint32_t __RBIT(uint32_t value)
{
  uint32_t result;
  int32_t s = 4   * 8 - 1;  

  result = value;                       
  for (value >>= 1U; value; value >>= 1U)
  {
    result <<= 1U;
    result |= value & 1U;
    s--;
  }
  result <<= s;                         
  return(result);
}








 



#line 649 "../Drivers/CMSIS/Include/cmsis_armcc.h"

   


 



 

#line 731 "../Drivers/CMSIS/Include/cmsis_armcc.h"
 


#line 111 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"



 
#line 142 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"

extern void xPortSysTickHandler(void);

 
static unsigned long makeFreeRtosPriority (osPriority priority)
{
  unsigned long fpriority = ( ( UBaseType_t ) 0U );
  
  if (priority != osPriorityError) {
    fpriority += (priority - osPriorityIdle);
  }
  
  return fpriority;
}


 
static osPriority makeCmsisPriority (unsigned long fpriority)
{
  osPriority priority = osPriorityError;
  
  if ((fpriority - ( ( UBaseType_t ) 0U )) <= (osPriorityRealtime - osPriorityIdle)) {
    priority = (osPriority)((int)osPriorityIdle + (int)(fpriority - ( ( UBaseType_t ) 0U )));
  }
  
  return priority;
}



 
static int inHandlerMode (void)
{
  return __get_IPSR() != 0;
}

 




 
osStatus osKernelInitialize (void);







 
osStatus osKernelStart (void)
{
  vTaskStartScheduler();
  
  return osOK;
}








 
int32_t osKernelRunning(void)
{

  if (xTaskGetSchedulerState() == ( ( BaseType_t ) 1 ))
    return 0;
  else
    return 1;



}







 
uint32_t osKernelSysTick(void)
{
  if (inHandlerMode()) {
    return xTaskGetTickCountFromISR();
  }
  else {
    return xTaskGetTickCount();
  }
}

 






 
osThreadId osThreadCreate (const osThreadDef_t *thread_def, void *argument)
{
  TaskHandle_t handle;
  
#line 268 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  if (xTaskCreate((TaskFunction_t)thread_def->pthread,(const char *)thread_def->name,
                   thread_def->stacksize, argument, makeFreeRtosPriority(thread_def->tpriority),
                   &handle) != ( ( ( BaseType_t ) 1 ) ))  {
    return 0;
  }     

  
  return handle;
}





 
osThreadId osThreadGetId (void)
{

  return xTaskGetCurrentTaskHandle();



}






 
osStatus osThreadTerminate (osThreadId thread_id)
{

  vTaskDelete(thread_id);
  return osOK;



}





 
osStatus osThreadYield (void)
{
  { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  
  return osOK;
}







 
osStatus osThreadSetPriority (osThreadId thread_id, osPriority priority)
{

  vTaskPrioritySet(thread_id, makeFreeRtosPriority(priority));
  return osOK;



}






 
osPriority osThreadGetPriority (osThreadId thread_id)
{

  if (inHandlerMode())
  {
    return makeCmsisPriority(uxTaskPriorityGetFromISR(thread_id));  
  }
  else
  {  
    return makeCmsisPriority(uxTaskPriorityGet(thread_id));
  }



}

 




 
osStatus osDelay (uint32_t millisec)
{

  TickType_t ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
  
  vTaskDelay(ticks ? ticks : 1);           
  
  return osOK;





}

#line 390 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"

 







 
osTimerId osTimerCreate (const osTimerDef_t *timer_def, os_timer_type type, void *argument)
{
#line 436 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
	return 0;

}







 
osStatus osTimerStart (osTimerId timer_id, uint32_t millisec)
{
  osStatus result = osOK;
#line 475 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  result = osErrorOS;

  return result;
}






 
osStatus osTimerStop (osTimerId timer_id)
{
  osStatus result = osOK;
#line 504 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  result = osErrorOS;

  return result;
}






 
osStatus osTimerDelete (osTimerId timer_id)
{
osStatus result = osOK;

#line 531 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  result = osErrorOS;

 
  return result;
}

 






 
int32_t osSignalSet (osThreadId thread_id, int32_t signal)
{

  BaseType_t xHigherPriorityTaskWoken = ( ( BaseType_t ) 0 );
  uint32_t ulPreviousNotificationValue = 0;
  
  if (inHandlerMode())
  {
    if(xTaskGenericNotifyFromISR( thread_id , (uint32_t)signal, eSetBits, &ulPreviousNotificationValue, &xHigherPriorityTaskWoken ) != ( ( ( BaseType_t ) 1 ) ) )
      return 0x80000000;
    
    if( xHigherPriorityTaskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }  
  else if(xTaskGenericNotify( thread_id , (uint32_t)signal, eSetBits, &ulPreviousNotificationValue) != ( ( ( BaseType_t ) 1 ) ) )
    return 0x80000000;
  
  return ulPreviousNotificationValue;
#line 568 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
}







 
int32_t osSignalClear (osThreadId thread_id, int32_t signal);







 
osEvent osSignalWait (int32_t signals, uint32_t millisec)
{
  osEvent ret;


	
  TickType_t ticks;

  ret.value.signals = 0;  
  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }  
  
  if (inHandlerMode())
  {
    ret.status = osErrorISR;   
  }
  else
  {
    if(xTaskNotifyWait( 0,(uint32_t) signals, (uint32_t *)&ret.value.signals, ticks) != ( ( BaseType_t ) 1 ))
    {
      if(ticks == 0)  ret.status = osOK;
      else  ret.status = osEventTimeout;
    }
    else if(ret.value.signals < 0)
    {
      ret.status =  osErrorValue;     
    }
    else  ret.status =  osEventSignal;
  }
#line 629 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  
  return ret;
}

 





 
osMutexId osMutexCreate (const osMutexDef_t *mutex_def)
{


#line 655 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
    return xQueueCreateMutex( ( ( uint8_t ) 1U ) ); 




}







 
osStatus osMutexWait (osMutexId mutex_id, uint32_t millisec)
{
  TickType_t ticks;
  long taskWoken = ( ( BaseType_t ) 0 );  
  
  
  if (mutex_id == 0) {
    return osErrorParameter;
  }
  
  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }
  
  if (inHandlerMode()) {
    if (xQueueReceiveFromISR( ( QueueHandle_t ) ( mutex_id ), 0, ( &taskWoken ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
	if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  } 
  else if (xQueueGenericReceive( ( QueueHandle_t ) ( mutex_id ), 0, ( ticks ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
    return osErrorOS;
  }
  
  return osOK;
}






 
osStatus osMutexRelease (osMutexId mutex_id)
{
  osStatus result = osOK;
  long taskWoken = ( ( BaseType_t ) 0 );
  
  if (inHandlerMode()) {
    if (xQueueGiveFromISR( ( QueueHandle_t ) ( mutex_id ), ( &taskWoken ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }
  else if (xQueueGenericSend( ( QueueHandle_t ) ( mutex_id ), 0, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) 
  {
    result = osErrorOS;
  }
  return result;
}






 
osStatus osMutexDelete (osMutexId mutex_id)
{
  if (inHandlerMode()) {
    return osErrorISR;
  }

  vQueueDelete(mutex_id);

  return osOK;
}

 









 
osSemaphoreId osSemaphoreCreate (const osSemaphoreDef_t *semaphore_def, int32_t count)
{ 
#line 799 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  osSemaphoreId sema;
 
  if (count == 1) {
    { ( sema ) = xQueueGenericCreate( ( UBaseType_t ) 1, ( ( uint8_t ) 0U ), ( ( uint8_t ) 3U ) ); if( ( sema ) != 0 ) { ( void ) xQueueGenericSend( ( QueueHandle_t ) ( ( sema ) ), 0, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ); } };
    return sema;
  }
  else {



    return 0;

  }

}







 
int32_t osSemaphoreWait (osSemaphoreId semaphore_id, uint32_t millisec)
{
  TickType_t ticks;
  long taskWoken = ( ( BaseType_t ) 0 );  
  
  
  if (semaphore_id == 0) {
    return osErrorParameter;
  }
  
  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }
  
  if (inHandlerMode()) {
    if (xQueueReceiveFromISR( ( QueueHandle_t ) ( semaphore_id ), 0, ( &taskWoken ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
	if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }  
  else if (xQueueGenericReceive( ( QueueHandle_t ) ( semaphore_id ), 0, ( ticks ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
    return osErrorOS;
  }
  
  return osOK;
}






 
osStatus osSemaphoreRelease (osSemaphoreId semaphore_id)
{
  osStatus result = osOK;
  long taskWoken = ( ( BaseType_t ) 0 );
  
  
  if (inHandlerMode()) {
    if (xQueueGiveFromISR( ( QueueHandle_t ) ( semaphore_id ), ( &taskWoken ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }
  else {
    if (xQueueGenericSend( ( QueueHandle_t ) ( semaphore_id ), 0, ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      result = osErrorOS;
    }
  }
  
  return result;
}






 
osStatus osSemaphoreDelete (osSemaphoreId semaphore_id)
{
  if (inHandlerMode()) {
    return osErrorISR;
  }

  vQueueDelete( ( QueueHandle_t ) ( semaphore_id ) );

  return osOK; 
}



 








typedef struct os_pool_cb {
  void *pool;
  uint8_t *markers;
  uint32_t pool_sz;
  uint32_t item_sz;
  uint32_t currentIndex;
} os_pool_cb_t;







 
osPoolId osPoolCreate (const osPoolDef_t *pool_def)
{

  osPoolId thePool;
  int itemSize = 4 * ((pool_def->item_sz + 3) / 4);
  uint32_t i;
  
   
 thePool = pvPortMalloc(sizeof(os_pool_cb_t));

  
  if (thePool) {
    thePool->pool_sz = pool_def->pool_sz;
    thePool->item_sz = itemSize;
    thePool->currentIndex = 0;
    
     
    thePool->markers = pvPortMalloc(pool_def->pool_sz);
   
    if (thePool->markers) {
       
     thePool->pool = pvPortMalloc(pool_def->pool_sz * itemSize);
      
      if (thePool->pool) {
        for (i = 0; i < pool_def->pool_sz; i++) {
          thePool->markers[i] = 0;
        }
      }
      else {
        vPortFree(thePool->markers);
        vPortFree(thePool);
        thePool = 0;
      }
    }
    else {
      vPortFree(thePool);
      thePool = 0;
    }
  }

  return thePool;
 



}






 
void *osPoolAlloc (osPoolId pool_id)
{
  int dummy = 0;
  void *p = 0;
  uint32_t i;
  uint32_t index;
  
  if (inHandlerMode()) {
    dummy = ulPortRaiseBASEPRI();
  }
  else {
    vPortEnterCritical();
  }
  
  for (i = 0; i < pool_id->pool_sz; i++) {
    index = pool_id->currentIndex + i;
    if (index >= pool_id->pool_sz) {
      index = 0;
    }
    
    if (pool_id->markers[index] == 0) {
      pool_id->markers[index] = 1;
      p = (void *)((uint32_t)(pool_id->pool) + (index * pool_id->item_sz));
      pool_id->currentIndex = index;
      break;
    }
  }
  
  if (inHandlerMode()) {
    vPortSetBASEPRI(dummy);
  }
  else {
    vPortExitCritical();
  }
  
  return p;
}






 
void *osPoolCAlloc (osPoolId pool_id)
{
  void *p = osPoolAlloc(pool_id);
  
  if (p != 0)
  {
    memset(p, 0, sizeof(pool_id->pool_sz));
  }
  
  return p;
}







 
osStatus osPoolFree (osPoolId pool_id, void *block)
{
  uint32_t index;
  
  if (pool_id == 0) {
    return osErrorParameter;
  }
  
  if (block == 0) {
    return osErrorParameter;
  }
  
  if (block < pool_id->pool) {
    return osErrorParameter;
  }
  
  index = (uint32_t)block - (uint32_t)(pool_id->pool);
  if (index % pool_id->item_sz) {
    return osErrorParameter;
  }
  index = index / pool_id->item_sz;
  if (index >= pool_id->pool_sz) {
    return osErrorParameter;
  }
  
  pool_id->markers[index] = 0;
  
  return osOK;
}




 









 
osMessageQId osMessageCreate (const osMessageQDef_t *queue_def, osThreadId thread_id)
{
  (void) thread_id;
  
#line 1101 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  return xQueueGenericCreate( ( queue_def->queue_sz ), ( queue_def->item_sz ), ( ( ( uint8_t ) 0U ) ) );

}








 
osStatus osMessagePut (osMessageQId queue_id, uint32_t info, uint32_t millisec)
{
  long taskWoken = ( ( BaseType_t ) 0 );
  TickType_t ticks;
  
  ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
  if (ticks == 0) {
    ticks = 1;
  }
  
  if (inHandlerMode()) {
    if (xQueueGenericSendFromISR( ( queue_id ), ( &info ), ( &taskWoken ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }
  else {
    if (xQueueGenericSend( ( queue_id ), ( &info ), ( ticks ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
  }
  
  return osOK;
}







 
osEvent osMessageGet (osMessageQId queue_id, uint32_t millisec)
{
  long taskWoken;
  TickType_t ticks;
  osEvent event;
  
  event.def.message_id = queue_id;
  event.value.v = 0;
  
  if (queue_id == 0) {
    event.status = osErrorParameter;
    return event;
  }
  
  taskWoken = ( ( BaseType_t ) 0 );
  
  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }
  
  if (inHandlerMode()) {
    if (xQueueReceiveFromISR(queue_id, &event.value.v, &taskWoken) == ( ( BaseType_t ) 1 )) {
       
      event.status = osEventMessage;
    }
    else {
      event.status = osOK;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }
  else {
    if (xQueueGenericReceive( ( queue_id ), ( &event . value . v ), ( ticks ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 1 )) {
       
      event.status = osEventMessage;
    }
    else {
      event.status = (ticks == 0) ? osOK : osEventTimeout;
    }
  }
  
  return event;
}



 



typedef struct os_mailQ_cb {
  const osMailQDef_t *queue_def;
  QueueHandle_t handle;
  osPoolId pool;
} os_mailQ_cb_t;







 
osMailQId osMailCreate (const osMailQDef_t *queue_def, osThreadId thread_id)
{

  (void) thread_id;
  
  osPoolDef_t pool_def = {queue_def->queue_sz, queue_def->item_sz, 0};
  
   

  *(queue_def->cb) = pvPortMalloc(sizeof(struct os_mailQ_cb));

  if (*(queue_def->cb) == 0) {
    return 0;
  }
  (*(queue_def->cb))->queue_def = queue_def;
  
   
  (*(queue_def->cb))->handle = xQueueGenericCreate( ( queue_def->queue_sz ), ( sizeof(void *) ), ( ( ( uint8_t ) 0U ) ) );


  if ((*(queue_def->cb))->handle == 0) {
    vPortFree(*(queue_def->cb));
    return 0;
  }
  
   
  (*(queue_def->cb))->pool = osPoolCreate(&pool_def);
  if ((*(queue_def->cb))->pool == 0) {
    
    vPortFree(*(queue_def->cb));
    return 0;
  }
  
  return *(queue_def->cb);



}







 
void *osMailAlloc (osMailQId queue_id, uint32_t millisec)
{
  (void) millisec;
  void *p;
  
  
  if (queue_id == 0) {
    return 0;
  }
  
  p = osPoolAlloc(queue_id->pool);
  
  return p;
}







 
void *osMailCAlloc (osMailQId queue_id, uint32_t millisec)
{
  uint32_t i;
  void *p = osMailAlloc(queue_id, millisec);
  
  if (p) {
    for (i = 0; i < queue_id->queue_def->item_sz; i++) {
      ((uint8_t *)p)[i] = 0;
    }
  }
  
  return p;
}







 
osStatus osMailPut (osMailQId queue_id, void *mail)
{
  long taskWoken;
  
  
  if (queue_id == 0) {
    return osErrorParameter;
  }
  
  taskWoken = ( ( BaseType_t ) 0 );
  
  if (inHandlerMode()) {
    if (xQueueGenericSendFromISR( ( queue_id->handle ), ( &mail ), ( &taskWoken ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) {
      return osErrorOS;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }
  else {
    if (xQueueGenericSend( ( queue_id->handle ), ( &mail ), ( 0 ), ( ( BaseType_t ) 0 ) ) != ( ( BaseType_t ) 1 )) { 
      return osErrorOS;
    }
  }
  
  return osOK;
}







 
osEvent osMailGet (osMailQId queue_id, uint32_t millisec)
{
  long taskWoken;
  TickType_t ticks;
  osEvent event;
  
  event.def.mail_id = queue_id;
  
  if (queue_id == 0) {
    event.status = osErrorParameter;
    return event;
  }
  
  taskWoken = ( ( BaseType_t ) 0 );
  
  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }
  
  if (inHandlerMode()) {
    if (xQueueReceiveFromISR(queue_id->handle, &event.value.p, &taskWoken) == ( ( BaseType_t ) 1 )) {
       
      event.status = osEventMail;
    }
    else {
      event.status = osOK;
    }
    if( taskWoken != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
  }
  else {
    if (xQueueGenericReceive( ( queue_id->handle ), ( &event . value . p ), ( ticks ), ( ( BaseType_t ) 0 ) ) == ( ( BaseType_t ) 1 )) {
       
      event.status = osEventMail;
    }
    else {
      event.status = (ticks == 0) ? osOK : osEventTimeout;
    }
  }
  
  return event;
}







 
osStatus osMailFree (osMailQId queue_id, void *mail)
{
  if (queue_id == 0) {
    return osErrorParameter;
  }
  
  return osPoolFree(queue_id->pool, mail);
}


 




 
void osSystickHandler(void)
{


  if (xTaskGetSchedulerState() != ( ( BaseType_t ) 1 ))
  {

    xPortSysTickHandler();

  }

}

#line 1458 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"

#line 1473 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"




 
osStatus osThreadSuspend (osThreadId thread_id)
{

    vTaskSuspend(thread_id);
  
  return osOK;



}





 
osStatus osThreadResume (osThreadId thread_id)
{

  if(inHandlerMode())
  {
    if (xTaskResumeFromISR(thread_id) == ( ( BaseType_t ) 1 ))
    {
      if( ( ( BaseType_t ) 1 ) != ( ( BaseType_t ) 0 ) ) { ( * ( ( volatile uint32_t * ) 0xe000ed04 ) ) = ( 1UL << 28UL ); __dsb( ( 15 ) ); __isb( ( 15 ) ); };
    }
  }
  else
  {
    vTaskResume(thread_id);
  }
  return osOK;



}




 
osStatus osThreadSuspendAll (void)
{
  vTaskSuspendAll();
  
  return osOK;
}




 
osStatus osThreadResumeAll (void)
{
  if (xTaskResumeAll() == ( ( BaseType_t ) 1 ))
    return osOK;
  else
    return osErrorOS;
  
}








 
osStatus osDelayUntil (uint32_t *PreviousWakeTime, uint32_t millisec)
{
#line 1554 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  (void) millisec;
  (void) PreviousWakeTime;
  
  return osErrorResource;

}





 
osStatus osAbortDelay(osThreadId thread_id)
{
#line 1574 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  (void) thread_id;
  
  return osErrorResource;

}







 
osStatus osThreadList (uint8_t *buffer)
{



  return osOK;
}






 
osEvent osMessagePeek (osMessageQId queue_id, uint32_t millisec)
{
  TickType_t ticks;
  osEvent event;
  
  event.def.message_id = queue_id;
  
  if (queue_id == 0) {
    event.status = osErrorParameter;
    return event;
  }
  
  ticks = 0;
  if (millisec == 0xFFFFFFFF) {
    ticks = ( TickType_t ) 0xffffffffUL;
  }
  else if (millisec != 0) {
    ticks = millisec / ( ( TickType_t ) 1000 / ((TickType_t)1000) );
    if (ticks == 0) {
      ticks = 1;
    }
  }
  
  if (xQueueGenericReceive( ( queue_id ), ( &event . value . v ), ( ticks ), ( ( BaseType_t ) 1 ) ) == ( ( BaseType_t ) 1 )) 
  {
     
    event.status = osEventMessage;
  }
  else 
  {
    event.status = (ticks == 0) ? osOK : osEventTimeout;
  }
  
  return event;
}





 
uint32_t osMessageWaiting(osMessageQId queue_id)
{
  if (inHandlerMode()) {
    return uxQueueMessagesWaitingFromISR(queue_id);
  }
  else
  {
    return uxQueueMessagesWaiting(queue_id);
  }
}





 
uint32_t osMessageAvailableSpace(osMessageQId queue_id)  
{
  return uxQueueSpacesAvailable(queue_id);
}





 
osStatus osMessageDelete (osMessageQId queue_id)
{
  if (inHandlerMode()) {
    return osErrorISR;
  }

  vQueueDelete(queue_id);

  return osOK; 
}





 
osMutexId osRecursiveMutexCreate (const osMutexDef_t *mutex_def)
{
#line 1701 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
  return 0;

}





 
osStatus osRecursiveMutexRelease (osMutexId mutex_id)
{
#line 1721 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
	return osErrorResource;

}






 
osStatus osRecursiveMutexWait (osMutexId mutex_id, uint32_t millisec)
{
#line 1761 "../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c"
	return osErrorResource;

}





 
uint32_t osSemaphoreGetCount(osSemaphoreId semaphore_id)
{
  return uxQueueMessagesWaiting( ( QueueHandle_t ) ( semaphore_id ) );
}
