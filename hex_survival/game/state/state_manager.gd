extends Reference
class_name StateManager

var current_game_state: GameState = null

func _init():
	current_game_state = GameState.new()
	print("____ StateManager ready: Initial game state created ____\n")

