extends Event
class_name CharacterEvent

func _init(state_manager: StateManager):
	SM = state_manager

func create_character(name: String, position: Vector2 = Vector2.ZERO):
	# Generate a unique ID
	var id = SM.current_game_state.generate_new_id()
	print("CharacterEvent: Creating character with ID: %d, Name: %s, Position: %s" % [id, name, position])
	
	# Create a new CharacterEntity
	var new_character = CharacterEntity.new(id, name, position)
	
	# Add the character to the GameState
	SM.current_game_state.entities[id] = new_character
	print("Character created: ", new_character.to_string())
