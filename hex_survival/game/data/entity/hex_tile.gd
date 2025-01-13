extends Entity
class_name HexTile

var terrain_type: String = "grass"  # Example property
var is_walkable: bool = true       # Example property

func _init(terrain_type: String = "grass", is_walkable: bool = true):
	self.terrain_type = terrain_type
	self.is_walkable = is_walkable

func to_string():
	return "HexTile(Terrain: %s, Walkable: %s)" % [terrain_type, is_walkable]
