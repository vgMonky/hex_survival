extends Node2D

var SM : StateManager

# Called when the node enters the scene tree for the first time.
func _ready():
	SM = StateManager.new()
	
	# Create and trigger MapEvent
	var map_event = MapEvent.new(SM)
	map_event.create_map(2, 2)
