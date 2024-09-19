class_name Console

extends Node

@export var scroll_container : ScrollContainer
@export var console_text : PackedScene
@export var list_box : VBoxContainer

func print_console(text : String, type := "N", type_delay = 0.04):
	var obj = console_text.instantiate() as Label
	
	if type == "W":
		obj.add_theme_color_override("font_color", Color.ORANGE)
	elif type == "E":
		obj.add_theme_color_override("font_color", Color.RED)
	
	list_box.add_child(obj)
	
	for ch in text:
		obj.text += ch
		if type_delay > 0:
			await get_tree().create_timer(type_delay).timeout
			scroll_container.scroll_vertical = 100000
		
	
		
func num_to_text(num : int):
	match num:
		0: return "zero"
		1: return "one"
		2: return "two"
		3: return "three"
		4: return "four"
		5: return "five"
		6: return "six"
		7: return "seven"
		8: return "eight"
		9: return "nine"
		10: return "ten"
