extends Component
class_name PositionComponent

var position: Vector2 = Vector2.ZERO

func _init(position: Vector2 = Vector2.ZERO):
	self.component_name = "PositionComponent"
	self.position = position
