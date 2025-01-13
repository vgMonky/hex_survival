extends Node2D

var SM : StateManager

# Called when the node enters the scene tree for the first time.
func _ready():
	SM = StateManager.new()
	
	var test_event : Event = Event.new(SM)
	test_event.trigger()
