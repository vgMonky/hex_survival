extends Reference
class_name Entity

var id: int  # Unique identifier for the entity
var type: String  # Type of the entity (e.g., "character")
var components: Dictionary = {}  # Components associated with the entity

# Constructor: Initialize ID and type
func _init(id: int, typ: String):
	self.id = id
	self.type = typ

# Add a component to the entity
func add_component(component: Component):
	components[component.get_component_name()] = component

# Get a specific component by name
func get_component(name: String) -> Component:
	return components.get(name, null)

# Convert the entity to a string (for debugging/printing)
func to_string() -> String:
	var component_strings = []
	for component in components.values():
		component_strings.append(component.to_string())
	return "Entity(ID: %d, Type: %s, Components: [%s])" % [id, type, ", ".join(component_strings)]
