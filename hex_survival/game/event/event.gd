extends Reference
class_name Event

var SM : StateManager

func _init(state_manager : StateManager):
	SM = state_manager

func trigger():
	print("Event Trigered ...")
	print(SM)
