extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func import_screenplay_from_e5():
	pass
	
func map_to_global(vec):
	var local_pos = $map.map_to_world(vec)
	return $map.to_global(local_pos)
	
func test_hero_new(hero_id, x, y):
	var vec = Vector2(x, y)
	var pos = map_to_global(vec)
	print(pos)
	var hero_scene = load("res://hero.tscn")
	var hero_instance = hero_scene.instance()
	add_child(hero_instance)
	hero_instance.set_hero_id(hero_id)
	
	hero_instance.set_global_position(pos)
	

# Called when the node enters the scene tree for the first time.
func _ready():
#	var window_size = OS.get_window_size()
#	print(window_size)
#	跟随背景大小切换窗口大小
	var backgroud_size = $backgroud.texture.get_size()
#	print(backgroud_size)
	OS.set_window_size(backgroud_size)
	test_hero_new(1, 93,56)
	
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
