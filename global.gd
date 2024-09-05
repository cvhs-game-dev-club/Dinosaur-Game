extends Node

var score = 0
var gravity = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SilentWolf.configure({
		"api_key": "",
		"game_id": "",
		"log_level": 1
	})
	SilentWolf.configure_scores({
		"open_scene_on_close": "res://scenes/MainPage.tscn"
	})


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
