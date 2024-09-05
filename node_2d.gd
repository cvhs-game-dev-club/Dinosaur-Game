extends Node2D

var small_hill
var count = 0

@export var smallHill: PackedScene
@export var medHill: PackedScene
@export var bigHill: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Timer.wait_time = 1.5
	$Timer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print($Timer.time_left)
	

		





func _on_area_2d_area_shape_entered(area_rid: RID, area: Area2D, area_shape_index: int, local_shape_index: int) -> void:
	area.queue_free()
	count -= 1
		
func create_hill(hill, hillName):
		var hill_spawn = hill.instantiate()
		hill_spawn.name = hillName
		add_child(hill_spawn)
		count+= 1
	


func _on_timer_timeout() -> void:
	var ranInt = randi_range(1,3)
	if (ranInt == 1):
		create_hill(smallHill, "SmallHill")
	elif (ranInt == 2):
		create_hill(medHill, "MedHill")
	elif (ranInt == 3):
		create_hill(bigHill, "BigHill")
	$Timer.wait_time -= 0.01
	$Timer.start()
	
	
	
