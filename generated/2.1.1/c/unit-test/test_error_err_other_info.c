#ifndef error_err_other_info_TEST
#define error_err_other_info_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define error_err_other_info_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/error_err_other_info.h"
error_err_other_info_t* instantiate_error_err_other_info(int include_optional);



error_err_other_info_t* instantiate_error_err_other_info(int include_optional) {
  error_err_other_info_t* error_err_other_info = NULL;
  if (include_optional) {
    error_err_other_info = error_err_other_info_create(
      "market",
      ["test_market_does_not_exist"]
    );
  } else {
    error_err_other_info = error_err_other_info_create(
      "market",
      ["test_market_does_not_exist"]
    );
  }

  return error_err_other_info;
}


#ifdef error_err_other_info_MAIN

void test_error_err_other_info(int include_optional) {
    error_err_other_info_t* error_err_other_info_1 = instantiate_error_err_other_info(include_optional);

	cJSON* jsonerror_err_other_info_1 = error_err_other_info_convertToJSON(error_err_other_info_1);
	printf("error_err_other_info :\n%s\n", cJSON_Print(jsonerror_err_other_info_1));
	error_err_other_info_t* error_err_other_info_2 = error_err_other_info_parseFromJSON(jsonerror_err_other_info_1);
	cJSON* jsonerror_err_other_info_2 = error_err_other_info_convertToJSON(error_err_other_info_2);
	printf("repeating error_err_other_info:\n%s\n", cJSON_Print(jsonerror_err_other_info_2));
}

int main() {
  test_error_err_other_info(1);
  test_error_err_other_info(0);

  printf("Hello world \n");
  return 0;
}

#endif // error_err_other_info_MAIN
#endif // error_err_other_info_TEST
