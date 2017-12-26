#include "error.h"
#include "SSD1306.h"

/** максимальное количество хранимых ошибок	*/
#define MAX_ERROR_COUNTS		10

/** массив для хранения кодов ошибок				*/
enum etErrors errCodes[MAX_ERROR_COUNTS];



int8_t ERR_AddError( enum etErrors err_code ){
	
	static uint16_t errCurrentNum;
	
	if (errCurrentNum < MAX_ERROR_COUNTS){
		errCodes[errCurrentNum++] = err_code;
		return errCurrentNum;
	}
	
	return -1;
	
}

