extends Node2D

func sub():
  yield(get_tree().create_timer(1.0), "timeout")

var r_path = "res://Image/r_man/Pm"


func _ready():
	$AnimationPlayer.play("walk")
	yield(sub(),'completed')
	$AnimationPlayer.play("sit_down")
	yield(sub(),'completed')
	$AnimationPlayer.play("angry")
	yield(sub(),'completed')
	$SP.texture = load("res://Image/r_man/Pmapobj_2.bmp")
	$AnimationPlayer.play("walk")
	yield(sub(),'completed')
	$AnimationPlayer.play("sit_down")
	yield(sub(),'completed')
	$AnimationPlayer.play("angry")
	yield(sub(),'completed')
#	var walk = Animation.new()
#	var walk_idx = walk.add_track(Animation.TYPE_VALUE)
#	walk.track_set_path(walk_idx, "SP:position:x")
#	walk.track_insert_key(walk_idx, 0.1, 1)
#	walk.track_insert_key(walk_idx, 0.2, 2)
#	walk.track_insert_key(walk_idx, 0.3, 1)
#	walk.track_insert_key(walk_idx, 0.4, 2)
#	walk.track_insert_key(walk_idx, 0.5, 1)
#	walk.track_insert_key(walk_idx, 0.6, 2)
#	walk.track_set_enabled(walk_idx, true)
#	walk.set_loop(true)
#	print($AnimationPlayer.get_animation_list())
#	$AnimationPlayer.add_animation("walk", walk)
#	print($AnimationPlayer.get_animation_list())
#	$AnimationPlayer.play("walk")
	
func _process(delta):
#	if Input.is_action_pressed("ui_left"):
#		$AnimationPlayer.play("walk")



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	pass
