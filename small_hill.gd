extends Area2D

@onready var leaderBoard = preload("res://control.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position = Vector2(900,80)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= 1000 * delta
	pass




func _on_body_entered(body: Node2D) -> void:
	
	if (body.name.contains("Character")):
		get_tree().change_scene_to_packed(leaderBoard)
