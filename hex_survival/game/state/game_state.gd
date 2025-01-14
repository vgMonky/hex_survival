extends Reference
class_name GameState

var map: Dictionary = {}  # Coordinates as keys, HexTile instances as values
var entities: Dictionary = {}  # ID as keys, Entity instances as values
var last_entity_id: int = 0  # Tracks the last used ID for auto-generation

func _init():
	pass

func generate_new_id() -> int:
	last_entity_id += 1
	return last_entity_id

func print_map():
	print("\n... printing map")
	for coord in map.keys():
		print("Coordinate: ", coord, ", HexTile: ", map[coord].to_string())

func print_entities():
	print("\n... printing entities")
	for id in entities.keys():
		print("ID: ", id, ", Entity: ", entities[id].to_string())
