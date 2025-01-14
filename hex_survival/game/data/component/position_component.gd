extends Component
class_name PositionComponent

var position: Vector2 = Vector2.ZERO

func _init(position: Vector2 = Vector2.ZERO):
	self.position = position

func get_component_name() -> String:
	return "PositionComponent"

func to_string() -> String:
	return "PositionComponent(Position: %s)" % position
