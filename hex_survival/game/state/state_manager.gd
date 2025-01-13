extends Reference
class_name StateManager

var _current_game_state: GameState = null

func _init():
	_current_game_state = GameState.new()
	print("____ StateManager ready: Initial game state created ____\n")

