#ifndef generic_response_data_TEST
#define generic_response_data_TEST

// the following is to include only the main from the first c file
#ifndef TEST_MAIN
#define TEST_MAIN
#define generic_response_data_MAIN
#endif // TEST_MAIN

#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include "../external/cJSON.h"

#include "../model/generic_response_data.h"
generic_response_data_t* instantiate_generic_response_data(int include_optional);



generic_response_data_t* instantiate_generic_response_data(int include_optional) {
  generic_response_data_t* generic_response_data = NULL;
  if (include_optional) {
    generic_response_data = generic_response_data_create(
      "Please add a ResponseObject on the endpoint!"
    );
  } else {
    generic_response_data = generic_response_data_create(
      "Please add a ResponseObject on the endpoint!"
    );
  }

  return generic_response_data;
}


#ifdef generic_response_data_MAIN

void test_generic_response_data(int include_optional) {
    generic_response_data_t* generic_response_data_1 = instantiate_generic_response_data(include_optional);

	cJSON* jsongeneric_response_data_1 = generic_response_data_convertToJSON(generic_response_data_1);
	printf("generic_response_data :\n%s\n", cJSON_Print(jsongeneric_response_data_1));
	generic_response_data_t* generic_response_data_2 = generic_response_data_parseFromJSON(jsongeneric_response_data_1);
	cJSON* jsongeneric_response_data_2 = generic_response_data_convertToJSON(generic_response_data_2);
	printf("repeating generic_response_data:\n%s\n", cJSON_Print(jsongeneric_response_data_2));
}

int main() {
  test_generic_response_data(1);
  test_generic_response_data(0);

  printf("Hello world \n");
  return 0;
}

#endif // generic_response_data_MAIN
#endif // generic_response_data_TEST
