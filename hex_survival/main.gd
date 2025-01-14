extends Node2D

var SM: StateManager

# Called when the node enters the scene tree for the first time.
func _ready():
	SM = StateManager.new()
	
	# MapEvent
	var map_event = MapEvent.new(SM)
	map_event.create_map(2, 2)

	# CharacterEvent
	var character_event = CharacterEvent.new(SM)
	character_event.create_character()
	character_event.create_character()


func _input(event):
	# Check if the 'Enter' key is pressed
	if event.is_action_pressed("ui_accept"):  # Default 'Enter' key mapping in Godot
		print("\n--- Enter key pressed ---")
		SM.current_game_state.print_map()
		SM.current_game_state.print_entities()
