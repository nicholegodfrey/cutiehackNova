extends CanvasLayer

@onready var textbox_container = $TextboxContainer
@onready var start_symbol = $TextboxContainer/MarginContainer/HBoxContainer/start
@onready var end_symbol = $TextboxContainer/MarginContainer/HBoxContainer/end
@onready var label = $TextboxContainer/MarginContainer/HBoxContainer/Label

func _ready():
	hide_textbox()
	add_text("Welcome to Mars!\nDid you know?\nMars has two moons: Phobos and Deimos")

func hide_textbox():
	start_symbol.text = ""
	end_symbol.text = ""
	label.text = ""
	textbox_container.hide()
	
func show_textbox():
	start_symbol.text = " "
	textbox_container.show()
	
func add_text(next_text: String):
	label.text = next_text
	show_textbox()
