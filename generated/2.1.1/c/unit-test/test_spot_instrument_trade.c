#ifndef spot_instrument_trade_TEST
#define spot_instrument_trade_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define spot_instrument_trade_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/spot_instrument_trade.h"
spot_instrument_trade_t* instantiate_spot_instrument_trade(int include_optional);



spot_instrument_trade_t* instantiate_spot_instrument_trade(int include_optional) {
  spot_instrument_trade_t* spot_instrument_trade = NULL;
  if (include_optional) {
    spot_instrument_trade = spot_instrument_trade_create(
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      56,
      56,
      "0",
      56,
      56,
      56,
      "0",
      "0",
      56,
      56,
      "0"
    );
  } else {
    spot_instrument_trade = spot_instrument_trade_create(
      "0",
      56,
      "0",
      "0",
      "0",
      "0",
      56,
      56,
      "0",
      56,
      56,
      56,
      "0",
      "0",
      56,
      56,
      "0"
    );
  }

  return spot_instrument_trade;
}


#ifdef spot_instrument_trade_MAIN

void test_spot_instrument_trade(int include_optional) {
    spot_instrument_trade_t* spot_instrument_trade_1 = instantiate_spot_instrument_trade(include_optional);

	cJSON* jsonspot_instrument_trade_1 = spot_instrument_trade_convertToJSON(spot_instrument_trade_1);
	printf("spot_instrument_trade :\n%s\n", cJSON_Print(jsonspot_instrument_trade_1));
	spot_instrument_trade_t* spot_instrument_trade_2 = spot_instrument_trade_parseFromJSON(jsonspot_instrument_trade_1);
	cJSON* jsonspot_instrument_trade_2 = spot_instrument_trade_convertToJSON(spot_instrument_trade_2);
	printf("repeating spot_instrument_trade:\n%s\n", cJSON_Print(jsonspot_instrument_trade_2));
}

int main() {
  test_spot_instrument_trade(1);
  test_spot_instrument_trade(0);

  printf("Hello world \n");
  return 0;
}

#endif // spot_instrument_trade_MAIN
#endif // spot_instrument_trade_TEST
