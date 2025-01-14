extends Event
class_name CharacterEvent

func _init(state_manager: StateManager):
	SM = state_manager

# Create a new character (entity)
func create_character():
	# Generate a unique ID for the character
	var id = SM.current_game_state.generate_new_id()
	print("CharacterEvent: Creating character with ID: %d" % id)
	
	# Create a new generic Entity, but specify its type as "character"
	var new_character = Entity.new(id, "character")
	
	# Add a PositionComponent (which could be shared across other entity types)
	var position_component = PositionComponent.new(Vector2.ZERO)  # Default position
	new_character.add_component(position_component)
	
	# Add the character to the GameState
	SM.current_game_state.entities[id] = new_character
	print("Character created: ", new_character.to_string())
