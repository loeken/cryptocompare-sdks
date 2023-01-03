#ifndef spot_instrument_market_data_response_err_TEST
#define spot_instrument_market_data_response_err_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define spot_instrument_market_data_response_err_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/spot_instrument_market_data_response_err.h"
spot_instrument_market_data_response_err_t* instantiate_spot_instrument_market_data_response_err(int include_optional);

#include "test_spot_instrument_market_data_response_err_other_info.c"


spot_instrument_market_data_response_err_t* instantiate_spot_instrument_market_data_response_err(int include_optional) {
  spot_instrument_market_data_response_err_t* spot_instrument_market_data_response_err = NULL;
  if (include_optional) {
    spot_instrument_market_data_response_err = spot_instrument_market_data_response_err_create(
      "Not found: instruments parameter. One or multiple instruments on coinbase not integrated yet or not supported. Instruments are case sensitive, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets/instruments endpoint for a list of all the supported TRADE_SPOT market and instrument combinations. Invalid instruments: INSTRUMENT-DOES-NOT-EXIST",
       // false, not to have infinite recursion
      instantiate_spot_instrument_market_data_response_err_other_info(0),
      1
    );
  } else {
    spot_instrument_market_data_response_err = spot_instrument_market_data_response_err_create(
      "Not found: instruments parameter. One or multiple instruments on coinbase not integrated yet or not supported. Instruments are case sensitive, make sure you check the https://data-api.cryptocompare.com/spot/v1/markets/instruments endpoint for a list of all the supported TRADE_SPOT market and instrument combinations. Invalid instruments: INSTRUMENT-DOES-NOT-EXIST",
      NULL,
      1
    );
  }

  return spot_instrument_market_data_response_err;
}


#ifdef spot_instrument_market_data_response_err_MAIN

void test_spot_instrument_market_data_response_err(int include_optional) {
    spot_instrument_market_data_response_err_t* spot_instrument_market_data_response_err_1 = instantiate_spot_instrument_market_data_response_err(include_optional);

	cJSON* jsonspot_instrument_market_data_response_err_1 = spot_instrument_market_data_response_err_convertToJSON(spot_instrument_market_data_response_err_1);
	printf("spot_instrument_market_data_response_err :\n%s\n", cJSON_Print(jsonspot_instrument_market_data_response_err_1));
	spot_instrument_market_data_response_err_t* spot_instrument_market_data_response_err_2 = spot_instrument_market_data_response_err_parseFromJSON(jsonspot_instrument_market_data_response_err_1);
	cJSON* jsonspot_instrument_market_data_response_err_2 = spot_instrument_market_data_response_err_convertToJSON(spot_instrument_market_data_response_err_2);
	printf("repeating spot_instrument_market_data_response_err:\n%s\n", cJSON_Print(jsonspot_instrument_market_data_response_err_2));
}

int main() {
  test_spot_instrument_market_data_response_err(1);
  test_spot_instrument_market_data_response_err(0);

  printf("Hello world \n");
  return 0;
}

#endif // spot_instrument_market_data_response_err_MAIN
#endif // spot_instrument_market_data_response_err_TEST
