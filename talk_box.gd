extends Panel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hero_talk(2, "你好，曹操传")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func hero_talk(hero_id, text):
	print($face.texture.resource_path)
	$face.texture = load("res://image/Face/Face_%d.bmp"%hero_id)
	$talk_text.text = text
	pass
