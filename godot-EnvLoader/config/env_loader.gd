#region Instructions
	#1. Copy the config folder into your project.
	#2. Autoload env_loader.gd with class name as EnvLoader
	#3. Rename env.example.txt to env.txt
	#4. Update env.txt to suit your needs
	#5. Add env.txt to .gitignore
	
	# Usage example:
	# var api_key = EnvLoader.get_env("API_KEY")
#endregion

extends Node

var env_data: Dictionary = {}

func _ready() -> void:
	load_env()

# Load the .env file
func load_env(file_path: String = "res://config/env.txt"):
	var file = FileAccess.open(file_path, FileAccess.READ)
	if file:
		while not file.eof_reached():
			var line = file.get_line().strip_edges()
			
			if line.is_empty() or line.begins_with("#"):  # Skip comments or empty lines
				continue
			var parts = line.split("=", false, 2)
			if parts.size() == 2:
				env_data[parts[0]] = parts[1]
	else:
		push_error("Environment file not found: ", file_path)

# Retrieve an environment variable
func get_env(key: String, default_value: String = "") -> String:
	if not env_data.has(key):
		push_warning("Requested environment variable not found: " + key)
	return env_data.get(key, default_value)
