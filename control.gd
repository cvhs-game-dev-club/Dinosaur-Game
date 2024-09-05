extends Control

var playerName
var score = Global.score

@onready var leaderBoard = preload("res://addons/silent_wolf/Scores/Leaderboard.tscn")



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	var inputText = $LineEdit.text
	playerName = inputText
	Global.score = 0
	Global.gravity = 1
	SilentWolf.Scores.save_score(playerName, score)
	await get_tree().create_timer(1.0)

	

	
