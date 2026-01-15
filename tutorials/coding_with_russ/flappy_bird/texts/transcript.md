hello folks in this video I'm going to 
 show you how to create this Flappy Bird 
 clone in Godot if you want to follow 
 along the code and the assets are all on 
 my GitHub which is linked in the video 
 description I start off with a blank 
 scene and create a basic node 
 rename it to Main and then save the 
 scene inside the scenes folder 
 next I'll add a 2d Sprite node as a 
 child and rename it to your background 
 drag over the image called BG from the 
 assets folder into the texture property 
 and it will show up on the 2D View 
 next go into the project settings and 
 set the window size to 864 by 936 
 adjust the X and Y offset of the 
 background image to position it 
 correctly on the screen 
 if I run the game now we can see that 
 background image being shown 
 create a new scene with a character body 
 2D node rename it to invert and save the 
 scene in that same folder add the 
 animated Sprite 2D and collision shape 
 2D node create a new animation and then 
 drag over the three bird images 
 then change the name of the animation 
 from default to fly 
 for the Collision create a capsule 
 Collision shape 
 rotated 90 degrees and then size it to 
 match the image 
 now we can add a script to the bird 
 scene we will Define a few variables 
 from the beginning gravity will 
 determine how quickly the bird drops Max 
 velocity will limit the max full speed 
 and flap speed will control how much the 
 bird jumps up play around with these 
 numbers to adjust the physics in your 
 game the flying variable is a flag that 
 is active as long as the bird hasn't 
 collided with anything the falling flag 
 is active when a bird hits a pipe and 
 falls to the Ground start pause defines 
 the coordinates of the bird at the start 
 of the game the ready function will fire 
 the reset function which will reset the 
 flags and position the bird correctly as 
 well as reset any rotation that has been 
 applied physics process will handle all 
 the bird movement first check if the 
 bird is in the air and apply gravity we 
 will also apply terminal velocity by 
 limiting the velocity to the max Bell 
 variable as long as the bird is flying 
 rotate it and play the animation else if 
 the bird hits a pipe and is falling 
 rotate it to face down and stop the 
 animation then then run the move and 
 Collide function to move the bird a 
 final else statement will trigger if the 
 bird isn't in the air where we just want 
 to stop the animation completely lastly 
 Define a function to allow the bird to 
 Flap and fly upwards if I run just this 
 scene with F6 we can see the bird coming 
 up on the screen now back on the main 
 scene instantiate the bird scene to 
 bring it in 
 now we can add a script to the main 
 scene 
 we'll begin the script with all the game 
 variables the first two are flags to 
 determine the game state next a scroll 
 variable that we'll use to move the 
 images across the screen smoothly then a 
 score variable to track progress scroll 
 speed is a constant that you can adjust 
 to make the game slower or faster screen 
 size and ground height are placeholders 
 for now but we will come back to these 
 pipes is an array to allow us to store 
 all the pipes that we create and then a 
 couple of final variables to control the 
 pipe generation we will look at these in 
 more detail once the pipes are added the 
 ready script will fire the new game 
 function this function will Define or 
 reset the starting variables and run the 
 birds reset function together ready then 
 we create an input function first check 
 that the game isn't over then look for a 
 mouse click when the game first starts 
 the bird is stationary until the mouse 
 is clicked so the first Mouse clicked 
 should start the game and the subsequent 
 Mouse click flaps the bird wings we add 
 a check to see if the game is running 
 and if it isn't then we use this first 
 first click to start the game if the 
 game is already running and the bird is 
 flying I it hasn't hit a pipe or the 
 ground then flap its wings the start 
 game function will start the game set 
 the bird flying flag to true and flap 
 its wings and now we can see the bird in 
 its starting position but as soon as I 
 start to click the game begins and the 
 bird moves up and down next create a new 
 scene add an area to the node called 
 ground and two child nodes for sprite 
 and collision shape 2D load the ground 
 image like before and position the area 
 at the bottom of the window 
 then offset the image x coordinate 
 and create a rectangle Collision shape 
 to cover it 
 while we're here we can add a script to 
 detect collusion 
 create a signal called Hit go into the 
 Collision shape node and connect the 
 on-body entered signal to emit the hit 
 signal 
 save the scene and then instantiate it 
 inside the main scene 
 you'll notice the ground image is twice 
 as wide as the game window to give the 
 impression of endless scrolling the 
 ground image is slowly moved to the left 
 eventually when it gets to the end of 
 the image the whole thing is shifted 
 back to the starting position and this 
 is repeated over and over to make it 
 seem like the ground is scrolling 
 infinitely to set this up we need to get 
 the screen size which we do inside the 
 ready function then inside the process 
 function we first check if the game is 
 running and then increase the scroll 
 variable once we scroll past the width 
 of the screen reset that variable back 
 to zero and start again we can then use 
 the scroll variable to position the 
 ground node now when the game is run you 
 can see the ground scrolling along and 
 it will continue repeating this 
 indefinitely now we'll add the pipes 
 create a new scene and add an area 2D 
 node switch back to the 2D View and 
 rename the node to pipe then save the 
 scene add a 2d Sprite node and two 
 Collision shape nodes for each pipe and 
 load in the pipe texture for both images 
 flip the upper pipe vertically and then 
 adjust the white offset of both pipes to 
 give the Gap that you want I use a 380 
 and negative 380 for my offsides then 
 create a rectangular Collision shape 
 inside each of the Collision shaped 
 nodes and adjust the size to match the 
 pipe 
 repeat the process with the remaining 
 Collision shape nodes until both 
 sections of the upper and lower pipe are 
 accurately covered with Collision shapes 
 with that done we can add a script which 
 will have a hit signal then from the 
 parent node connect on body entered to 
 emit the head signal 
 back in the main script create a timer 
 rename it to pipe timer and set the wait 
 time to one and a half seconds we won't 
 manually add the pipes to the scene 
 instead we'll create them in the code so 
 we export the variable and drag over the 
 pipe scene into it so we can access it 
 from the script we also need to know the 
 height of the ground so we can position 
 the pipes correctly so we measure this 
 in the ready function we want the pipes 
 to be generated using the timer so 
 connect the timeout signal to trigger a 
 generate pipes function inside that 
 function we instantiate the pipe scene 
 in a variable called pipe then assign 
 the x-coordinate to be at the end of the 
 screen plus a small delay so that the 
 pipe slides in from the right rather 
 than just appearing out of the air the 
 y-coordinate is based on the height of 
 the available vertical space and a 
 random value is added so that each pipe 
 is at a different height this is where 
 the pipe range variable from earlier 
 comes in and it defines the limits for 
 the random y coordinate value we also 
 need to connect to the hit signal that 
 the pipes are made when the bird 
 collides with them and this will trigger 
 the function bird hit which we'll Define 
 shortly then we add a scene as a child 
 of the main scene and add the pipes to 
 our array to keep track of them back in 
 the new game function I need to make 
 sure to clear the pipes list and also 
 generate a first set of pipes before the 
 timer takes over to Auto generate the 
 rest we will create a bird hit function 
 and pass it for now to remove the error 
 we still need to scroll the Pipestone in 
 the process function we iterate through 
 the pipes list and update the position 
 of each pipe last thing before we can 
 test this out is to actually start the 
 pipe timer which will be done in the 
 start game function now we can see as 
 the bird moves along there's pipes being 
 generated and coming in from the right 
 hand side notice that the pipes appear 
 in front of the ground we need to change 
 the draw order so that the ground 
 appears on top 
 go into the ground node select ordering 
 and then change the Z index to 1. now 
 the ground will be drawn over the pipes 
 which we can see when we run the game 
 again next let's work on the Collision 
 checks the first check is to stop the 
 bird going off the top of the screen I 
 create a check top function which looks 
 at the bird's y-coordinate if it's below 
 zero then it is off the screen so I set 
 the bird to following and I stop the 
 game the stop game function stops the 
 timer stops the bird flying and updates 
 the two game state flags the check top 
 function needs to be called somewhere 
 and this is done in the input function 
 as soon as the bird flaps now you can 
 see that when the part flies too high 
 and it goes off the screen it will die 
 and fall down to the ground next we will 
 fill out the bird head function to do 
 the same thing Run the game again and 
 this time when I hit one of the pipes 
 the bird dies and falls to the ground 
 but collusion with the ground also needs 
 to be checked we're already emitting a 
 signal from the ground node so we 
 connect that to the main script and 
 inside the function set the following 
 variable to false and stop the game 
 running it now will show that when the 
 bird hits the pipe it will keep falling 
 until it has the ground and then it 
 stops next we need a way of scoring 
 points add a label node and rename it to 
 score label 
 add some placeholder text into it then 
 adjust the position so it's anchored at 
 the top Center the default font size is 
 too small so I increase that to 40. and 
 then change the Z index to 1 so the text 
 is drawn over everything else to score 
 the bird must go through a set of pipes 
 back in the pipe scene add an area 2D 
 with a collision shape child node then 
 rename the area 2D node to score area 
 select the rectangle Collision shape and 
 resize this to form a rectangle just 
 after the pipe exit 
 inside the script we add a second signal 
 and connect it to the score area 
 in our main script inside the generate 
 pipes function connect to that signal 
 and Link it to a scored function the 
 scored function will increase the score 
 by 1 and update the label text we need 
 to also update this label when we start 
 a new game so the score is set to zero 
 and the same code in the new game 
 function and now whenever the bird 
 passes through the set of pipes we get 
 one point 
 there's currently no way to restart the 
 game when the bird dies so create a new 
 scene with a canvas layer node and a 
 button child node and give them 
 meaningful names 
 for the restart button create a new 
 texture style box and drag over the 
 restart button image to assign it 
 repeat this for the hover and the Press 
 States then update the size and position 
 of the image in the transform property 
 to match what I've got here 
 add a script to the parent node 
 create a restart signal 
 and Link it to the button pressed 
 back in the main script instantiate the 
 game over screen to show the button 
 this should only be visible when the bar 
 dies so in a new game function hide the 
 scene 
 and then in a stop game function show 
 the scene again 
 finally link the restart signal to the 
 new game function to reset everything 
 running it now shows that when I die it 
 brings up the restart button and when I 
 click everything restarts to the 
 beginning 
 well almost everything 
 notice that the pipes from the previous 
 game are still there in the pipe scene 
 select the parent node go to the node 
 tab switch to groups and create a new 
 group called pipes 
 then inside the new game function use Q3 
 to delete all the pipes in that group 
 and that affects is the issue so when 
 the bird hits one of the pipes and I 
 restart everything goes back to how it 
 was before 
 and that's it you know how a working 
 clone of Flappy Bird if you found this 
 video useful then please leave a like 
 and I'll see you in the next one