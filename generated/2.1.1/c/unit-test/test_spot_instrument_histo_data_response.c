#ifndef spot_instrument_histo_data_response_TEST
#define spot_instrument_histo_data_response_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define spot_instrument_histo_data_response_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/spot_instrument_histo_data_response.h"
spot_instrument_histo_data_response_t* instantiate_spot_instrument_histo_data_response(int include_optional);



spot_instrument_histo_data_response_t* instantiate_spot_instrument_histo_data_response(int include_optional) {
  spot_instrument_histo_data_response_t* spot_instrument_histo_data_response = NULL;
  if (include_optional) {
    spot_instrument_histo_data_response = spot_instrument_histo_data_response_create(
      list_createList(),
      0
    );
  } else {
    spot_instrument_histo_data_response = spot_instrument_histo_data_response_create(
      list_createList(),
      0
    );
  }

  return spot_instrument_histo_data_response;
}


#ifdef spot_instrument_histo_data_response_MAIN

void test_spot_instrument_histo_data_response(int include_optional) {
    spot_instrument_histo_data_response_t* spot_instrument_histo_data_response_1 = instantiate_spot_instrument_histo_data_response(include_optional);

	cJSON* jsonspot_instrument_histo_data_response_1 = spot_instrument_histo_data_response_convertToJSON(spot_instrument_histo_data_response_1);
	printf("spot_instrument_histo_data_response :\n%s\n", cJSON_Print(jsonspot_instrument_histo_data_response_1));
	spot_instrument_histo_data_response_t* spot_instrument_histo_data_response_2 = spot_instrument_histo_data_response_parseFromJSON(jsonspot_instrument_histo_data_response_1);
	cJSON* jsonspot_instrument_histo_data_response_2 = spot_instrument_histo_data_response_convertToJSON(spot_instrument_histo_data_response_2);
	printf("repeating spot_instrument_histo_data_response:\n%s\n", cJSON_Print(jsonspot_instrument_histo_data_response_2));
}

int main() {
  test_spot_instrument_histo_data_response(1);
  test_spot_instrument_histo_data_response(0);

  printf("Hello world \n");
  return 0;
}

#endif // spot_instrument_histo_data_response_MAIN
#endif // spot_instrument_histo_data_response_TEST
