# Flappy Bird Clone in Godot - Step-by-Step Tutorial

## Setup & Project Configuration

### Step 1: Create Main Scene
1. Start with a blank scene
2. Create a basic Node and rename it to `Main`
3. Save the scene in the `scenes` folder

### Step 2: Add Background
1. Add a 2D Sprite node as a child of Main
2. Rename it to `Background`
3. Drag the `BG` image from the assets folder into the texture property
4. Go to Project Settings and set the window size to **864 x 936**
5. Adjust the X and Y offset of the background image to position it correctly

### Step 3: Test Background
- Run the game to verify the background image displays correctly

---

## Create the Bird Scene

### Step 4: Create Bird Scene
1. Create a new scene with a CharacterBody2D node
2. Rename it to `Bird`
3. Save the scene in the scenes folder

### Step 5: Add Bird Visuals
1. Add an AnimatedSprite2D node as a child
2. Add a CollisionShape2D node as a child
3. Create a new animation called `fly`
4. Drag the three bird sprite images into the animation frames

### Step 6: Create Bird Collision
1. Select the CollisionShape2D node
2. Create a Capsule collision shape
3. Rotate it 90 degrees
4. Resize it to match the bird image

### Step 7: Add Bird Script
Create a script for the Bird scene with the following variables:
- **gravity**: Controls how fast the bird falls
- **max_velocity**: Limits the bird's maximum fall speed
- **flap_speed**: Controls how much the bird jumps up
- **flying**: Flag for whether the bird is alive and in-air
- **falling**: Flag for when the bird hits a pipe
- **start_pos**: Stores the bird's starting position

### Step 8: Implement Bird Physics
In the `_ready()` function:
- Call a `reset()` function to initialize flags and position the bird

In the `_physics_process()` function:
- Check if bird is in the air and apply gravity
- Apply terminal velocity (limit to max_velocity)
- If flying: rotate the bird and play the fly animation
- If falling: rotate to face down and stop the animation
- Otherwise: just stop the animation
- Call `move_and_collide()` to move the bird

### Step 9: Add Flap Function
- Create a function to allow the bird to flap and fly upwards

### Step 10: Test Bird Scene
- Run the bird scene with F6 to verify it appears and can move

---

## Return to Main Scene & Add Bird

### Step 11: Instantiate Bird
1. Go back to the Main scene
2. Instantiate the Bird scene as a child node

---

## Add Main Scene Script

### Step 12: Create Main Script Variables
Add the following variables to the Main scene script:
- **game_over**: Flag for game state
- **game_started**: Flag for whether game has started
- **scroll**: Variable to move images across the screen smoothly
- **score**: Track player's current score
- **SCROLL_SPEED**: Constant for scroll speed (adjustable)
- **screen_size**: Placeholder for screen dimensions
- **ground_height**: Placeholder for ground height
- **pipes**: Array to store all generated pipes
- **pipe_scene**: Export variable to hold the pipe scene
- **pipe_timer**: For pipe generation

### Step 13: Implement Ready Function
- Call `new_game()` to initialize the game

### Step 14: Implement Input Handling
1. Create an `_input()` function
2. Check if game is over (if so, ignore input)
3. On first mouse click (if game hasn't started): call `start_game()`
4. On subsequent mouse clicks (if bird is flying): call bird's flap function

### Step 15: Implement Start Game Function
- Set `game_started` to true
- Set bird's flying flag to true
- Call bird's flap function

### Step 16: Test Bird Movement
- Run the game and verify the bird is in its starting position
- Click to start and verify the bird moves up and down

---

## Create Ground Scene

### Step 17: Create Ground Scene
1. Create a new scene with an Area2D node
2. Rename it to `Ground`
3. Add a Sprite2D child node
4. Add a CollisionShape2D child node

### Step 18: Add Ground Graphics
1. Load the ground image into the Sprite2D texture property
2. Position the area at the bottom of the window
3. Offset the image X coordinate as needed

### Step 19: Create Ground Collision
1. Select the CollisionShape2D
2. Create a Rectangle collision shape
3. Resize it to match the ground image

### Step 20: Add Ground Script
1. Create a `hit` signal
2. In the inspector: connect the CollisionShape2D's `body_entered` signal to emit the `hit` signal

### Step 21: Instantiate Ground
1. Go back to the Main scene
2. Instantiate the Ground scene as a child

### Step 22: Implement Ground Scrolling
In the Main script's `_ready()` function:
- Get and store the screen size

In the `_process()` function:
- If game is running: increase the scroll variable
- When scroll exceeds screen width: reset scroll to 0
- Position the ground node using the scroll variable

### Step 23: Fix Render Order
1. Select the Ground node
2. Go to the CanvasItem section
3. Set Z Index to 1 (so ground appears above pipes)

---

## Create Pipe Scene

### Step 24: Create Pipe Scene
1. Create a new scene with an Area2D node
2. Rename it to `Pipe`
3. Save the scene
4. Add a Sprite2D child node (for upper pipe)
5. Add a CollisionShape2D child node (for upper pipe)
6. Add another Sprite2D child node (for lower pipe)
7. Add another CollisionShape2D child node (for lower pipe)

### Step 25: Add Pipe Graphics & Collision
For each pipe sprite:
1. Load the pipe texture
2. For the upper pipe: flip it vertically
3. Adjust the Y offset to create a gap (use +380 for upper, -380 for lower)

For each collision shape:
1. Create Rectangle collision shapes
2. Resize them to match each pipe section accurately

### Step 26: Add Pipe Script
1. Create a `hit` signal
2. Connect the Area2D's `body_entered` signal to emit the `hit` signal
3. Create a `scored` signal
4. Add a score detection area (see steps below)

### Step 27: Create Score Detection Area
1. Add an Area2D node to the Pipe scene
2. Rename it to `ScoreArea`
3. Add a CollisionShape2D child node
4. Create a Rectangle collision shape positioned just after the pipe exit
5. Connect the `body_entered` signal to emit the `scored` signal

---

## Implement Pipe Generation

### Step 28: Add Pipe Timer
1. In the Main scene, create a Timer node
2. Rename it to `PipeTimer`
3. Set the wait time to 1.5 seconds

### Step 29: Export Pipe Scene Variable
In the Main script:
- Export a variable to hold the pipe scene
- Drag the pipe scene into it from the Inspector

### Step 30: Get Ground Height
In the `_ready()` function:
- Query the Ground node to get its height for pipe positioning

### Step 31: Connect Pipe Timer
1. Select the PipeTimer in the inspector
2. Connect the `timeout` signal to a `_on_pipe_timer_timeout()` function

### Step 32: Implement Pipe Generation Function
```
In the _on_pipe_timer_timeout() function:
1. Instantiate the pipe scene
2. Set pipe X position: screen width + small offset
3. Set pipe Y position: based on available vertical space + random value
4. Use the pipe_range variable to define limits for random Y
5. Connect pipe's hit signal to a bird_hit() function
6. Connect pipe's scored signal to a scored() function
7. Add pipe as a child to the Main scene
8. Add pipe to the pipes array
```

### Step 33: Initialize Pipes in New Game
In the `new_game()` function:
- Clear the pipes array
- Generate the first set of pipes before the timer takes over

### Step 34: Implement Bird Hit Function
- Set flying flag to false
- Call stop_game()

### Step 35: Scroll Pipes
In the `_process()` function:
- Iterate through the pipes array
- Update each pipe's X position based on the scroll variable
- Delete pipes that have moved off-screen

### Step 36: Start Pipe Timer
In the `start_game()` function:
- Call `pipe_timer.start()` to begin generating pipes

### Step 37: Test Pipe Generation
- Run the game and verify pipes are generated and scroll smoothly

---

## Collision Detection

### Step 38: Prevent Bird From Going Off Top
In the Main script, create a `check_top()` function:
- Check if bird's Y coordinate is below 0
- If so: set bird's falling flag to true and call `stop_game()`

In the `_input()` function:
- Call `check_top()` whenever the bird flaps

### Step 39: Implement Stop Game Function
```
stop_game():
- Stop the pipe timer
- Set bird's flying flag to false
- Set game_over to true
- Set game_started to false
```

### Step 40: Test Top Collision
- Run the game and verify the bird dies when flying off the top

### Step 41: Handle Pipe Collision
- Fill out the `bird_hit()` function to call `stop_game()`
- Test that the bird dies when hitting a pipe

### Step 42: Handle Ground Collision
1. In the Main script, connect the Ground's `hit` signal
2. In the signal handler: set bird's falling flag to false and call `stop_game()`
3. Test that the bird dies when hitting the ground

---

## Scoring System

### Step 43: Create Score Label
1. Add a Label node to the Main scene
2. Rename it to `ScoreLabel`
3. Add placeholder text (e.g., "Score: 0")
4. Position it at the top center of the screen
5. Increase font size to 40
6. Set Z Index to 1

### Step 44: Implement Scoring
In the `generate_pipes()` function:
- Connect each pipe's `scored` signal to a `_on_pipe_scored()` function

In the `_on_pipe_scored()` function:
- Increment the score by 1
- Update the label text to display the new score

### Step 45: Reset Score on New Game
In the `new_game()` function:
- Set score to 0
- Update the score label text

### Step 46: Test Scoring
- Run the game and verify you get 1 point for each pipe pair you pass through

---

## Game Over Screen & Restart

### Step 47: Create Game Over Scene
1. Create a new scene with a CanvasLayer node
2. Rename it to `GameOverScreen`
3. Add a Button child node
4. Rename it to `RestartButton`

### Step 48: Style Restart Button
1. Create a new TextureStyleBox for the button's normal state
2. Drag the restart button image into it
3. Repeat for hover and pressed states
4. Adjust size and position in the transform properties

### Step 49: Add Game Over Script
1. Add a script to the GameOverScreen node
2. Create a `restart` signal
3. Connect the button's `pressed` signal to emit the `restart` signal

### Step 50: Instantiate Game Over Screen
1. Go back to the Main scene
2. Instantiate the GameOverScreen as a child

### Step 51: Show/Hide Game Over Screen
In the `new_game()` function:
- Hide the game over screen

In the `stop_game()` function:
- Show the game over screen

### Step 52: Connect Restart Signal
1. In the Main script, connect the game over screen's `restart` signal
2. Link it to call `new_game()`

### Step 53: Test Restart
- Run the game, die, and verify the restart button appears
- Click restart and verify everything resets

---

## Final Cleanup

### Step 54: Create Pipe Group
1. Select the Pipe scene (the scene file itself)
2. Go to the Node tab
3. Go to Groups
4. Create a new group called `pipes`

### Step 55: Clean Up Old Pipes on Restart
In the `new_game()` function:
- Add this code: `get_tree().call_group("pipes", "queue_free")`
- This deletes all pipes from the previous game

### Step 56: Final Test
- Run the complete game
- Verify pipes are cleared on restart
- Verify all game mechanics work correctly

---

## Summary

You now have a fully functional Flappy Bird clone with:
- Bird physics and animation
- Scrolling ground
- Randomly generated pipes
- Collision detection (top, pipes, ground)
- Scoring system
- Game over and restart functionality
