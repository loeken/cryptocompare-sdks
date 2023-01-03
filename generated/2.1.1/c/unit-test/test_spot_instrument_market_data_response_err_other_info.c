#ifndef spot_instrument_market_data_response_err_other_info_TEST
#define spot_instrument_market_data_response_err_other_info_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define spot_instrument_market_data_response_err_other_info_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/spot_instrument_market_data_response_err_other_info.h"
spot_instrument_market_data_response_err_other_info_t* instantiate_spot_instrument_market_data_response_err_other_info(int include_optional);



spot_instrument_market_data_response_err_other_info_t* instantiate_spot_instrument_market_data_response_err_other_info(int include_optional) {
  spot_instrument_market_data_response_err_other_info_t* spot_instrument_market_data_response_err_other_info = NULL;
  if (include_optional) {
    spot_instrument_market_data_response_err_other_info = spot_instrument_market_data_response_err_other_info_create(
      "instruments",
      ["INSTRUMENT-DOES-NOT-EXIST"]
    );
  } else {
    spot_instrument_market_data_response_err_other_info = spot_instrument_market_data_response_err_other_info_create(
      "instruments",
      ["INSTRUMENT-DOES-NOT-EXIST"]
    );
  }

  return spot_instrument_market_data_response_err_other_info;
}


#ifdef spot_instrument_market_data_response_err_other_info_MAIN

void test_spot_instrument_market_data_response_err_other_info(int include_optional) {
    spot_instrument_market_data_response_err_other_info_t* spot_instrument_market_data_response_err_other_info_1 = instantiate_spot_instrument_market_data_response_err_other_info(include_optional);

	cJSON* jsonspot_instrument_market_data_response_err_other_info_1 = spot_instrument_market_data_response_err_other_info_convertToJSON(spot_instrument_market_data_response_err_other_info_1);
	printf("spot_instrument_market_data_response_err_other_info :\n%s\n", cJSON_Print(jsonspot_instrument_market_data_response_err_other_info_1));
	spot_instrument_market_data_response_err_other_info_t* spot_instrument_market_data_response_err_other_info_2 = spot_instrument_market_data_response_err_other_info_parseFromJSON(jsonspot_instrument_market_data_response_err_other_info_1);
	cJSON* jsonspot_instrument_market_data_response_err_other_info_2 = spot_instrument_market_data_response_err_other_info_convertToJSON(spot_instrument_market_data_response_err_other_info_2);
	printf("repeating spot_instrument_market_data_response_err_other_info:\n%s\n", cJSON_Print(jsonspot_instrument_market_data_response_err_other_info_2));
}

int main() {
  test_spot_instrument_market_data_response_err_other_info(1);
  test_spot_instrument_market_data_response_err_other_info(0);

  printf("Hello world \n");
  return 0;
}

#endif // spot_instrument_market_data_response_err_other_info_MAIN
#endif // spot_instrument_market_data_response_err_other_info_TEST
