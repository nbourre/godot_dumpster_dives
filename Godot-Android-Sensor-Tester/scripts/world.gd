extends Node2D

# Assuming you've dragged your 4 instances into these exported variables

@onready var ui_x: LabelNText = $VBoxContainer/HBoxAccelMagneto/VBoxLeft/AccX
@onready var ui_y: LabelNText = $VBoxContainer/HBoxAccelMagneto/VBoxLeft/AccY
@onready var ui_z: LabelNText = $VBoxContainer/HBoxAccelMagneto/VBoxLeft/AccZ
@onready var ui_mag: LabelNText = $VBoxContainer/HBoxAccelMagneto/VBoxLeft/AccMagnitude

@onready var ui_mag_x: LabelNText = $VBoxContainer/HBoxAccelMagneto/VBoxRight/ui_mag_x
@onready var ui_mag_y: LabelNText = $VBoxContainer/HBoxAccelMagneto/VBoxRight/ui_mag_y
@onready var ui_mag_z: LabelNText = $VBoxContainer/HBoxAccelMagneto/VBoxRight/ui_mag_z

@onready var lpf_checkbox : CheckBox = $VBoxContainer/HBoxAccelMagneto/VBoxLeft/LPFEnable

@onready var btn_quit : Button = $VBoxContainer/QuitButton

# The 'Alpha' controls the strength. 
# 1.0 = No filter. 0.01 = Extremely smooth (but laggy).
var lpf_alpha: float = 0.1 
var last_accel: Vector3 = Vector3.ZERO

func _ready():
	
	ui_x.set_sensor_name("Accelerometer X : ")
	ui_y.set_sensor_name("Accelerometer Y : ")
	ui_z.set_sensor_name("Accelerometer Z : ")
	ui_mag.set_sensor_name("Total Magnitude : ")
	
	ui_mag_x.set_sensor_name("Magnetometer X : ")
	ui_mag_y.set_sensor_name("Magnetometer Y : ")
	ui_mag_z.set_sensor_name("Magnetometer Z : ")

func _process(_delta):
	if (Input.is_action_pressed("quit") or btn_quit.button_pressed):
		get_tree().quit()

	var raw_accel := Input.get_accelerometer()
	var filtered_accel : Vector3

	if lpf_checkbox.button_pressed :
		# Formula: filtered = (alpha * new) + ((1 - alpha) * old)
		filtered_accel = (lpf_alpha * raw_accel) + ((1 - lpf_alpha) * last_accel)
	else:
		filtered_accel = raw_accel
	
	last_accel = filtered_accel

	var mag_data = Input.get_magnetometer()


	ui_x.update_value(filtered_accel.x)
	ui_y.update_value(filtered_accel.y)
	ui_z.update_value(filtered_accel.z)
	ui_mag.update_value(filtered_accel.length()) # Built-in Vector3 magnitude

	ui_mag_x.update_value(mag_data.x)
	ui_mag_y.update_value(mag_data.y)
	ui_mag_z.update_value(mag_data.z)
