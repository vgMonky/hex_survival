extends Event
class_name MapEvent

func _init(state_manager: StateManager):
	SM = state_manager

func create_map(x: int, y: int):
	print("MapEvent: Creating map with size: (%d, %d)" % [x, y])
	var new_map = []

	# Generate a list of coordinates
	for i in range(x):
		for j in range(y):
			new_map.append(Vector2(i, j))

	# Update the map in GameState
	SM.current_game_state.map = new_map
	print("Map created: ", new_map)
