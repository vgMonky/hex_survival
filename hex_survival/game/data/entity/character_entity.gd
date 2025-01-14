extends Entity
class_name CharacterEntity

var id: int
var name: String = ""
var position: Vector2 = Vector2.ZERO  # Current position on the map

func _init(id: int, name: String, position: Vector2 = Vector2.ZERO):
	self.id = id
	self.name = name
	self.position = position

func to_string() -> String:
	return "Character(ID: %d, Name: %s, Position: %s)" % [id, name, position]
