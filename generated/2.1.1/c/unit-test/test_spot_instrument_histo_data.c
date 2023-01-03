#ifndef spot_instrument_histo_data_TEST
#define spot_instrument_histo_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define spot_instrument_histo_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/spot_instrument_histo_data.h"
spot_instrument_histo_data_t* instantiate_spot_instrument_histo_data(int include_optional);



spot_instrument_histo_data_t* instantiate_spot_instrument_histo_data(int include_optional) {
  spot_instrument_histo_data_t* spot_instrument_histo_data = NULL;
  if (include_optional) {
    spot_instrument_histo_data = spot_instrument_histo_data_create(
      "0",
      56,
      56,
      56,
      56,
      56,
      56,
      "0",
      56,
      56,
      56,
      56,
      56,
      "0",
      "0",
      56,
      "0",
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      "0",
      "0",
      56,
      56,
      56,
      56
    );
  } else {
    spot_instrument_histo_data = spot_instrument_histo_data_create(
      "0",
      56,
      56,
      56,
      56,
      56,
      56,
      "0",
      56,
      56,
      56,
      56,
      56,
      "0",
      "0",
      56,
      "0",
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      "0",
      "0",
      56,
      56,
      56,
      56
    );
  }

  return spot_instrument_histo_data;
}


#ifdef spot_instrument_histo_data_MAIN

void test_spot_instrument_histo_data(int include_optional) {
    spot_instrument_histo_data_t* spot_instrument_histo_data_1 = instantiate_spot_instrument_histo_data(include_optional);

	cJSON* jsonspot_instrument_histo_data_1 = spot_instrument_histo_data_convertToJSON(spot_instrument_histo_data_1);
	printf("spot_instrument_histo_data :\n%s\n", cJSON_Print(jsonspot_instrument_histo_data_1));
	spot_instrument_histo_data_t* spot_instrument_histo_data_2 = spot_instrument_histo_data_parseFromJSON(jsonspot_instrument_histo_data_1);
	cJSON* jsonspot_instrument_histo_data_2 = spot_instrument_histo_data_convertToJSON(spot_instrument_histo_data_2);
	printf("repeating spot_instrument_histo_data:\n%s\n", cJSON_Print(jsonspot_instrument_histo_data_2));
}

int main() {
  test_spot_instrument_histo_data(1);
  test_spot_instrument_histo_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // spot_instrument_histo_data_MAIN
#endif // spot_instrument_histo_data_TEST
