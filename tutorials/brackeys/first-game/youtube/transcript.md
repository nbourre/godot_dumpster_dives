Godot is an open-source, beginner-friendly, and completely free game engine. If you want to make a game—2D platformer, FPS, or anything in between—this guide walks you through building a tiny 2D game while learning the core Godot concepts: nodes, scenes, physics, tilemaps, animation, input, audio, and exporting.

## 1) Install and create a project
- Download the latest Godot from godotengine.org and unzip it. It’s lightweight and can even run in the browser.
- Open Godot, create a new project (for example, “First Game”), and save an empty 2D scene as your main scene (e.g., `scenes/jeu.tscn`).

## 2) Assets and the FileSystem
- Assets are sprites, fonts, sounds, and music. Import by dragging folders into the FileSystem (e.g., an `assets/` folder with sprites, sounds, and fonts).
- Godot organizes everything in the FileSystem dock and uses importers automatically.

## 3) Nodes and scenes—the building blocks
- Nodes are the fundamental pieces of your game: images, sounds, physics bodies, cameras, UI, and more.
- A scene is a reusable collection of nodes. Scenes can be nested to build larger structures (for example: a Player scene, a Platform scene, and a Coin scene placed inside a Level scene).
- Your running game forms a scene tree; the top-most node is called the root.

## 4) Create the Player
1) Make a new scene. Add a `CharacterBody2D` as the root and name it `Player`.
2) Add an `AnimatedSprite2D` as a child. Create `SpriteFrames` and load frames from a sprite sheet for an “idle” animation. Set FPS (e.g., 10) and enable Autoplay.
3) Pixel-art tip: Project Settings → Rendering → Textures → Default Texture Filter = Nearest for crisp pixels.
4) Add a `CollisionShape2D` (e.g., a small `CircleShape2D`) to the Player for physics.
5) In your main game scene, instance the Player and add a `Camera2D`. Adjust zoom (e.g., 4,4) and position it over the Player.
6) Add a movement script to the Player. Godot’s basic CharacterBody2D template is a good start; tweak Speed and Jump to taste (for example, speed 130, jump velocity -300). You’ll refine input and animation later.

## 5) Build the world with a TileMap
1) Add a `TileMap` to your main scene.
2) Create a `TileSet`, set the tile size (e.g., 16×16), and drag in your world tileset sprite.
3) Let Godot auto-generate tiles, then correct any mis-detected tiles (merge/split as needed). Trees can be split to create variable heights.
4) Paint the level layout. Use selection and rectangle tools to move larger chunks quickly.
5) Add physics: In the TileSet editor, create a Physics Layer and paint collision shapes only on solid tiles (leave decorative tiles pass-through). For slopes and bridges, define partial colliders precisely.
6) Make the camera follow the player: Parent `Camera2D` under Player and enable position smoothing if desired.

## 6) Platforms—static and moving
1) Create a `Platform` scene with `AnimatableBody2D` as root, a `Sprite2D` for graphics (crop a region from a platforms sheet), and a `CollisionShape2D` (Rectangle).
2) Enable “One Way Collision” on the platform’s collider so the player can jump up through it.
3) Ensure the player draws in front by giving the player a higher Z-index than platforms.
4) For moving platforms, add an `AnimationPlayer` to a platform instance in the level. Animate its position keys, set Loop to “ping-pong,” adjust duration, and Autoplay so it glides back and forth.

## 7) Coins (pickups) with Area2D and signals
1) Create a `Coin` scene with `Area2D` root, `AnimatedSprite2D` for the coin animation, and a circular `CollisionShape2D`.
2) Add a script to the Coin. Connect the `body_entered` signal. When triggered by the Player, handle pickup.
3) To limit detection to the Player only, place the Player on its own physics layer, then set the Coin’s collision mask to that layer.
4) On pickup, remove the coin (e.g., with `queue_free()`) or drive it via an `AnimationPlayer` (see Section 12 for a no-code timing trick).

## 8) Falling and hazards (Kill Zone)
1) Add a bottom camera limit in the `Camera2D` so it doesn’t follow the player into the abyss.
2) Create a reusable `KillZone` scene with an `Area2D` root and set its collision mask to the Player’s layer. Don’t add a shape in the scene; instead, add a `CollisionShape2D` (e.g., `WorldBoundaryShape2D`) when instancing in the level to suit the placement.
3) Add a script to `KillZone`. Connect `body_entered`. On enter, show feedback (e.g., print/log), start a short `Timer`, then on `timeout` reload the current scene.

Bonus polish: On death, apply slow motion by setting `Engine.time_scale = 0.5` and restore it to 1.0 when restarting. You can also remove the Player’s collider on death so the character falls through the world.

## 9) Organize the scene
- Group related instances under simple nodes: for example `Coins`, `Platforms`, `Labels`. It keeps the scene tree readable as you expand the level and add a background layer.
- For background tiles, add a second TileMap layer and paint it first so it draws behind the midground.

## 10) A simple enemy (slime)
1) Make a `Slime` scene. You can reuse the `KillZone` approach so touching the slime kills the player.
2) Add `AnimatedSprite2D` for slime idle/wake/damage animations and a rectangle collider.
3) Give it basic movement with a script using `_process(delta)`: move horizontally at `speed * delta`.
4) Use two `RayCast2D` nodes (left/right). If the right ray collides, set direction to -1 and flip the sprite; if the left ray collides, set direction to 1 and unflip. This makes the slime ping-pong between walls automatically.

## 11) Player input and animations
1) Open Project Settings → Input Map. Create actions like `jump`, `move_left`, and `move_right`, and bind keys (Arrow keys and WASD).
2) In the Player script, replace default UI actions (e.g., `ui_accept`) with your custom actions to read input.
3) Reference the Player’s `AnimatedSprite2D`. Flip horizontally based on input direction.
4) Create animations: `idle`, `run`, and `jump`. In code, if on the floor and direction is 0, play `idle`; if moving on the floor, play `run`; if not on the floor, play `jump`.

## 12) Text in-world (Labels) and a score
1) Add `Label` nodes for narrative hints or tips. For crisp pixel text, assign a pixel font (e.g., PixelOperator) and use sizes in multiples of 8 (8/16/24/32). Adjust color and wrapping as needed.
2) Create a `GameManager` node (plain `Node`, no transform) with a script containing a `score` variable and a method like `add_point()`.
3) Mark the `GameManager` as a unique node (right-click → “Access as Unique Name”), so other nodes can reference it safely within the same scene.
4) From `Coin`, call `%GameManager.add_point()` on pickup. Display the score by referencing a `Label` (e.g., `%ScoreLabel`) and updating its `text` (remember to convert numbers to strings).

## 13) Audio: music and SFX
1) Add an `AudioStreamPlayer2D` for music. Assign the music track, enable Autoplay, and set it to Loop in the importer. Consider routing it to a dedicated “Music” bus in the Audio panel and lower its volume (e.g., -12 dB).
2) To make music persist across restarts, save it as a separate scene and register it as an Autoload (Project Settings → Autoload). It will play across scenes without resetting.
3) For coin pickups, add an `AudioStreamPlayer2D` to the Coin and route to an “SFX” bus.
4) Timing trick without code: Use an `AnimationPlayer` inside the Coin. In a `pickup` animation, keyframe the sprite’s `visible` to false, the collider’s `disabled` to true, set the sound’s `playing` to on, then add a Call Method track to call `queue_free()` after a short delay. Use a `reset` track to restore defaults in the editor.

## 14) Exporting
1) Install Export Templates (Editor → Manage Export Templates → Download and Install).
2) Project → Export → Add “Windows Desktop” (or your target platform). Enable “Embed PCK” for a single-file executable if desired.
3) Set product name (e.g., “Princess Dragon Slayer”), then Export Project (disable “Export With Debug” for release builds).

## 15) Where to go next
- Expand the level with the tools you’ve learned—TileMap layers, platforms, enemies, hazards.
- Add effects: pickup particles, hit flashes, camera shake, and UI polish.
- Add new dangers: spikes, moving traps, toggling hazards (all variants of the Kill Zone pattern).
- Add a main menu, more enemies, weapons, or power-ups.
- Promote `GameManager` to an Autoload to manage scene switching and global state.
- Improve movement feel with coyote time, jump buffering, and double-jumps.

You now have the core Godot workflow: scenes and nodes, physics bodies, tilemaps, animation, input, audio, UI, and exporting. Have fun building your next game!