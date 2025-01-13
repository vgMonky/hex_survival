extends Node2D

var SM : StateManager

# Called when the node enters the scene tree for the first time.
func _ready():
	SM = StateManager.new()
	
	# Create and trigger MapEvent
	var map_event = MapEvent.new(SM)
	map_event.create_map(2, 2)
	SM.current_game_state.print_map()

	# Initialize the CharacterEvent
	var character_event = CharacterEvent.new(SM)
	
	# Create some characters
	character_event.create_character(1, "Alice", Vector2(2, 3))
	character_event.create_character(2, "Bob", Vector2(4, 5))
	
	# Attempt to create a duplicate character
	character_event.create_character(1, "Charlie", Vector2(0, 0))
	
	# Print the characters
	SM.current_game_state.print_characters()
