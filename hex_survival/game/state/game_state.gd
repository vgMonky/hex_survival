extends Reference
class_name GameState

var map: Dictionary = {}  # Coordinates as keys, HexTile instances as values
var characters: Dictionary = {}  # ID as keys, CharacterEntity instances as values

func _init():
	pass

func print_map():
	print("\n... printing map")
	for coord in map.keys():
		print("Coordinate: ", coord, ", HexTile: ", map[coord].to_string())

func print_characters():
	print("\n... printing characters")
	for id in characters.keys():
		print("ID: ", id, ", Character: ", characters[id].to_string())
