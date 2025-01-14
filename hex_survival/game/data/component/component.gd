extends Reference
class_name Component

func get_component_name() -> String:
	return "BaseComponent"

func to_string() -> String:
	return "Component(Name: %s)" % get_component_name()
