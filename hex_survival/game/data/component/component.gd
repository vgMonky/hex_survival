class_name Component

var component_name: String

# Get the component name
func get_component_name() -> String:
	if component_name:
		return component_name
	else:
		return "___ ERROR: no component name ___"

# Dynamically iterate over instance variables and create a string representation
func to_string() -> String:
	var result = "{"
	# Use reflection to iterate over instance variables
	for var_name in self.get_property_list():
		if var_name["usage"] & PROPERTY_USAGE_SCRIPT_VARIABLE:
			var var_value = self.get(var_name["name"])
			result += "%s=%s, " % [var_name["name"], var_value]
	# Remove the trailing comma and space manually
	if result.right(2) == ", ":
		result = result.substr(0, result.length() - 2)
	result += "}"  # Close the curly brace
	return result
