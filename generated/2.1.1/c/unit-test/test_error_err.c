#ifndef error_err_TEST
#define error_err_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define error_err_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/error_err.h"
error_err_t* instantiate_error_err(int include_optional);

#include "test_error_err_other_info.c"


error_err_t* instantiate_error_err(int include_optional) {
  error_err_t* error_err = NULL;
  if (include_optional) {
    error_err = error_err_create(
      "Not found: market parameter. Value test_market_does_not_exist not integrated yet. We list all markets in lowercase and transform the parameter sent, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets endpoint for a list of all the supported TRADE_SPOT markets",
       // false, not to have infinite recursion
      instantiate_error_err_other_info(0),
      1
    );
  } else {
    error_err = error_err_create(
      "Not found: market parameter. Value test_market_does_not_exist not integrated yet. We list all markets in lowercase and transform the parameter sent, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets endpoint for a list of all the supported TRADE_SPOT markets",
      NULL,
      1
    );
  }

  return error_err;
}


#ifdef error_err_MAIN

void test_error_err(int include_optional) {
    error_err_t* error_err_1 = instantiate_error_err(include_optional);

	cJSON* jsonerror_err_1 = error_err_convertToJSON(error_err_1);
	printf("error_err :\n%s\n", cJSON_Print(jsonerror_err_1));
	error_err_t* error_err_2 = error_err_parseFromJSON(jsonerror_err_1);
	cJSON* jsonerror_err_2 = error_err_convertToJSON(error_err_2);
	printf("repeating error_err:\n%s\n", cJSON_Print(jsonerror_err_2));
}

int main() {
  test_error_err(1);
  test_error_err(0);

  printf("Hello world \n");
  return 0;
}

#endif // error_err_MAIN
#endif // error_err_TEST
