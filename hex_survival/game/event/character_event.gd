extends Event
class_name CharacterEvent

func _init(state_manager: StateManager):
	SM = state_manager

func create_character(id: int, name: String, position: Vector2 = Vector2.ZERO):
	print("CharacterEvent: Creating character with ID: %d, Name: %s, Position: %s" % [id, name, position])
	
	# Ensure the ID is unique
	if SM.current_game_state.characters.has(id):
		print("Error: Character with ID %d already exists!" % id)
		return
	
	# Create a new CharacterEntity
	var new_character = CharacterEntity.new(id, name, position)
	
	# Add the character to the GameState
	SM.current_game_state.characters[id] = new_character
	print("Character created: ", new_character.to_string())
