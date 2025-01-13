extends Reference
class_name GameState

var map: Dictionary = {}  # Coordinates as keys, HexTile instances as values

func _init():
	pass

func print_map():
	print("\n... printing map")
	for coord in map.keys():
		print("Coordinate: ", coord, ", HexTile: ", map[coord])
