#ifndef spot_instrument_metadata_TEST
#define spot_instrument_metadata_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define spot_instrument_metadata_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/spot_instrument_metadata.h"
spot_instrument_metadata_t* instantiate_spot_instrument_metadata(int include_optional);



spot_instrument_metadata_t* instantiate_spot_instrument_metadata(int include_optional) {
  spot_instrument_metadata_t* spot_instrument_metadata = NULL;
  if (include_optional) {
    spot_instrument_metadata = spot_instrument_metadata_create(
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      "0",
      "0",
      "0",
      "0",
      "0",
      {},
      [],
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "ACTIVE",
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      false,
      "0",
      "0",
      "0",
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      4,
      "0",
      56,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    );
  } else {
    spot_instrument_metadata = spot_instrument_metadata_create(
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      "0",
      "0",
      "0",
      "0",
      "0",
      {},
      [],
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "0",
      "ACTIVE",
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      0,
      56,
      56,
      56,
      false,
      "0",
      "0",
      "0",
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      56,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      0,
      4,
      "0",
      56,
      0,
      0,
      0,
      0,
      0,
      0,
      0
    );
  }

  return spot_instrument_metadata;
}


#ifdef spot_instrument_metadata_MAIN

void test_spot_instrument_metadata(int include_optional) {
    spot_instrument_metadata_t* spot_instrument_metadata_1 = instantiate_spot_instrument_metadata(include_optional);

	cJSON* jsonspot_instrument_metadata_1 = spot_instrument_metadata_convertToJSON(spot_instrument_metadata_1);
	printf("spot_instrument_metadata :\n%s\n", cJSON_Print(jsonspot_instrument_metadata_1));
	spot_instrument_metadata_t* spot_instrument_metadata_2 = spot_instrument_metadata_parseFromJSON(jsonspot_instrument_metadata_1);
	cJSON* jsonspot_instrument_metadata_2 = spot_instrument_metadata_convertToJSON(spot_instrument_metadata_2);
	printf("repeating spot_instrument_metadata:\n%s\n", cJSON_Print(jsonspot_instrument_metadata_2));
}

int main() {
  test_spot_instrument_metadata(1);
  test_spot_instrument_metadata(0);

  printf("Hello world \n");
  return 0;
}

#endif // spot_instrument_metadata_MAIN
#endif // spot_instrument_metadata_TEST
