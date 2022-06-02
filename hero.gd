extends Node2D

class_name hero

var r_path = "res://Image/r_man/Pmapobj_%d.bmp"

func set_hero_id(id):
	$SP.texture = load(r_path%id)

func _ready():
	
	$AnimationPlayer.play("walk")
	yield(get_tree().create_timer(1), "timeout")
	$AnimationPlayer.play("sit_down")
	yield(get_tree().create_timer(1), "timeout")
	$AnimationPlayer.play("angry")
	yield(get_tree().create_timer(1), "timeout")
	$SP.texture = load("res://Image/r_man/Pmapobj_2.bmp")
	$AnimationPlayer.play("walk")
	yield(get_tree().create_timer(1), "timeout")
	$AnimationPlayer.play("sit_down")
	yield(get_tree().create_timer(1), "timeout")
	$AnimationPlayer.play("angry")
	yield(get_tree().create_timer(1), "timeout")

	
func _process(_delta):
#	if Input.is_action_pressed("ui_left"):
#		$AnimationPlayer.play("walk")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	pass
