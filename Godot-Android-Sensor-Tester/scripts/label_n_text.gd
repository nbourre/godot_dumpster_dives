class_name LabelNText
extends HBoxContainer

@export var sensor_name: String = "Sensor"
@export var value: float = 0.0

@onready var label : Label = $Label
@onready var text_edit : TextEdit = $TextEdit

func _ready():
	set_sensor_name(sensor_name)
	update_value(value)

func set_sensor_name(new_name: String):
	label.text = new_name

func update_value(new_value: float):
	# Using 'f' format for 3 decimal places
	text_edit.text = "%.3f" % new_value