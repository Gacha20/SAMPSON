// generated by "sampctl package generate"

#include "pawno/include/a_json.inc"



main() {
	new dummy_data[128], foo[8], JSONNode:response;
	format(dummy_data, sizeof(dummy_data), "{ \"foo\": \"bar\", \"testing\": true, \"count\": 123 }");
	
	response = json_parse_string(dummy_data);

	json_get_string(response, foo, sizeof(foo), "foo");

	printf("%s %d %i", foo, json_get_bool(response, "testing"), json_get_int(response, "count"));
}