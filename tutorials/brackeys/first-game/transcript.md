good do God dot godo whichever you
prefer if you want to use it to make a
game you've come to the right place I've
been making video games for more than 14
years now and recently I've fallen in
love with Gau Gau is a great choice for
many developers and pretty beginner
friendly also it's open source and
completely free to use now you probably
have a bunch of ideas of games that
would be cool to make but no matter if
you're dreaming of making an FPS a 2d
platformer or any anything in between
using gdau the first step is of course
to install it now this process might be
a bit tedious but bear with me now we go
to g
org press download latest gdo
engine and we're done this is a huge
advantage of gdau it's extremely
lightweight and can even run in the
browser now you might want to unzip this
folder and place it somewhere you
remember but other than that we're ready
to open up gdau so let's double click it
and it's going to ask us if we want to
look at some examle projects I'll just
press cancel then we can press new name
our project say first game I'm going to
place mine on my desktop under my games
folder let's create a separate folder
for first game so hit create folder and
create an edit and here we are a clean
slate a blank canvas oh I am so ready to
make this game about well this might be
a good time to decide what our game will
be about but first this video is
sponsored by Zena if you're excited
about gdau 4 make sure to check out Zena
Academy they offer comprehensive
beginner and intermediate courses
including a fantastic free introductory
course on Gau what's really cool about
SBA is how they combine fun and
practical learning through professional
video tutorials written lessons and
interactive quizzes plus you'll be
building real projects across various
genres from RPGs to Bullet Hills zenva
also has a wide range of courses on
python Unity unreal and other essential
tools with a single subscription which
includes would say 7-Day free trial you
unlock over 250 courses use the coupon
code below to get an extra 20% off the
first year of your s subscription on top
of any existing side wide discounts the
offer is valid for the first 50
subscribers so make sure to use your
coupon today to start your Game Dev
Adventure so in the spirit of learning
the basics of the engine and giving you
an overview of how you can start using
it to make things I've put together the
most basic game I could imagine think of
it like food without salt it doesn't
have much flavor but it does have a
player enemies moving platforms
collectible coins and most importantly
it should get you familiar with the
engine in no time also will be working
in 2D but another really cool thing
about gdau is that it's very easy to
transfer 2D Concepts to 3D so don't
worry if your dream game is in 3D most
of what you learned here is going to
directly apply as for programming Gau
uses its own scripting language called
GD script it's pretty fast and easy to
use but still quite powerful we'll do a
bit of programming in this video to get
you started but the main focus is really
to get familiar with gdau as a whole and
to quickly get a game up and running
because of this I don't expect you to
fully understand all the code you see
feel free to write after me or just lean
back and observe our next video will be
about learning to program in GD script
all right I promised you food without
salt so let's get cooking
[Music]
now to make our delicious game we need
ingredients we need things like Sprites
models textures and sounds these are
called aets and a game engine like Gau
is not so much made for creating these
from scratch but more for putting
everything together it's really the
stirring part of making a game now since
I can't expect you to go shopping for
assets at your local supermarket I've
used a bit of TV magic to prepare some
beforehand you can download them for
free using the link below I've bundled
together Sprites from The Amazing analog
Studios and modified them a bit along
with a pixel font some Custom Sounds and
a cute little music track it's also
perfectly fine to use other assets you
find on the internet there are many
great resources for free assets just
make sure you check the license and give
proper credit to the author CC Z means
means that the asset is completely free
to use and there's no requirement to
credit that being said making your own
assets is one of the places where you
can really get creative and I highly
recommend you try it out as soon as you
feel comfortable remember you can always
use these assets as placeholders and
then modify or replace them later all
right let's get our assets into
gdau importing Assets in Gau is
extremely simple the file system window
is where we have all the files we use in
our game by default the only thing in
here is the Gau icon so let's create a
folder where we can put our assets let's
right click new folder and name it
assets let's also make one for
scripts and scenes that we can use later
now we can simply drag and drop our
assets into the asset folder so I'll
select the assets folder open up my
assets here I'm going to select all the
subfolders and click and drag them into
gdau and voila we can now see and use
all of our assets in Gau so now we're
ready to make our game so let's talk
about how we do that to make anything in
gdau we use nodes if you want to make a
player character we do so by putting
together a bunch of notes if you want to
make an enemy we do so by putting
together notes if we want to make a main
menu you guessed it we use nodes so
nodes are the fundamental building
blocks of your game and nodes come in
many types some display an image others
play a sound or add physics and we can
even extend existing nodes to build more
powerful ones so in its Essence making a
game in Gau is combining and extending
nodes to get the result we're looking
for it's a super creative and fun
process but building everything in one
big world with noes for the player
enemies UI and a bunch of levels all in
one place would quickly become
completely unmanageable and confusing
instead we use scenes scenes allow us to
bundle together nodes into reusable
packages a scene can be a character a
weapon a menu there can be a as small as
a single collectible coin or an entire
level scenes make it really easy to
focus on building one part of our game
at a time and then slowly combining them
to make our game larger and larger this
is because we can put scenes inside of
other scenes which is called nesting and
allows us to take say a player scene a
platform scene and a collectible coin
scene and put them all inside of another
scene say a level one scene and even
cooler since scenes are reusable we can
make a scene on only once and then use
it all over our game we can make many
levels that all use the same collectible
coin scene and if we want to change
something about our coin we simply edit
the scene and it automatically updates
everywhere else as you can see all the
nodes and scenes in our game start to
resemble a tree like structure and
that's exactly what we call it the scene
tree and fittingly we call the node at
the very beginning of the tree the root
so now that we know a bit about how kdo
Works let's start by making the most
essential part part of our game the
player character player 1
0 so let's
create a scene where we'll put
everything together this is going to be
a 2d game so let's select 2D scene and
let's rename this from node 2D to game
and even though it's empty let's go
ahead and save it so hit contrl s go
under scenes and let's save it here and
now we can actually play our game it's
not going to be very exciting but let's
try it out so let's hit play up here or
simply press F5 it's going to tell us
that we have haven't selected a main
scene we need to T good do which scene
to run I'm just going to press select
current and you can see that our game
scene becomes blue to let us know that
this is now our main scene and as you
can see not much is happening here so
let's stop playing by hitting the stop
icon here or pressing f8 and let's put
in a player to make it more exciting so
first off let's create a new Scene by
hitting the plus sign up here and this
will be our player scene and the root
note for our player is going to be what
is called a character body 2D so let's
add a new note by pressing the plus here
or hitting CR a and let's search for
character body 2D as you can see this is
a 2d physics body that is specialized
for characters moved by script so it's
perfect for a player character that we
want to be able to collide with the
environment so let's hit create and now
we can see our node here but we can
actually see our player in the scene so
let's add some graphics let's add
another node I'm going to hit contr a
and let's let's search for sprite and as
you can see we can choose a single
Sprite or in our case we want to create
an animated character so let's choose
the animated Sprite 2D Sprites are just
what we call images in our 2D world now
with this node selected we can use the
inspector here on the right to change
properties on that node if we select a
different node say our character body 2D
we can now see the properties on that
node instead so our inspector allows us
to change things about a node
in our animated Sprite 2D we want to add
some animations and we want to give it
some Sprite frames the individual frames
that will make up our animation let's
click here and add a new Sprite frames
and now with this selected we can see
that it will open up the Sprite frames
window at the bottom and in this window
we're going to press this tiny icon here
that lets us add frames from a Sprite
sheet so let's click that go into our
assets under our Sprites let's find our
knight
png
and as you can see I've gone ahead and
packed all the different Sprite frames
of the nights animation into a single
image this is called a Sprite sheet it's
a very efficient way of working with
lots of Sprites such as when doing
animation otherwise we would have to
create an image for each single frame
which would quickly become an
unmanageable amount of files now to
start adding these frames in we first
need to configure the grid here
currently it's set to 4x4 let's go ahead
and increase this I've created an 8x8
grid here and as you can see each frame
now has its own grid cell and let's just
start by adding the idle animation to do
this we simply click the frames in the
order that we would like so I'm going to
go from the left hand side here and
click as you can see it says this to
zero the first frame then I'm going to
click the next one and the next one and
the next one and now it goes from0 to
three and we'll play from left to right
we can always click again to remove and
this is how you can quickly build an
animation from different parts of your
Sprite sheet so I'll select these four
frames and hit add frames now let's hit
F to Center our character on the screen
and I'm going to use the scroll wheel to
zoom in we can also click and drag with
the middle Mouse button to pan now our
character looks weirdly blurry that's
because we're working with pixel art
which requires really hard edges by
default Gau is going to try to do some
texture smoothing to make textures look
better but applied to pixel art that is
definitely not the case so let's simply
disable this so let's go to project
project settings let's go under
rendering to textures and here on the
default texture filter let's change this
from linear to nearest which will
immediately make our pixel art look
crisp then we can select our animated
Sprite and let's try playing the
animation that looks great I'm going to
increase the FPS here to 10 to make it
go a bit faster I'm also going to rename
the animation here to idle I'm going to
enable autop play to make sure it play
place right when we start the game and
finally I'm going to take this Sprite
here and move it up to make it kind of
stand on this line and that's it for our
graphics for now we'll add more
animations later but as you can see
we're currently getting this warning
here in the scene View and if I hover
over it it's going to say that this node
has no shape so it can't Collide or
interact with other objects and this is
because a character body 2D is a physics
node and whenever we're working with
physics we need to define a shape that
the physics engine can work with so
let's add a new node I'm going to press
the plus sign here I'm going to search
for Collision shape 2D hit create and
here in the inspector we can now Define
a new shape I'm going to add a circle
shape I'm going to make this a bit
smaller and drag it up somewhere around
there looks fine now you're probably
thinking well this is pretty far from
our actual Graphics but that's totally
fine colliders rarely need to be very
precise and it's a good rule of thumb to
make them a bit smaller than the
graphics if you need to having colliders
that are too large is simply going to be
frustrating when playing so let's now
rename the top node here to player and
let's save the scene contrl S as player
hit save and now we can go into our game
scene and simply drag our player in here
so I'm going to go to the top here and
drag in the player we also need to
create a camera so that we can control
what is currently being shown so let's
add a new node hit crl a search for
camera 2D hit create and now if we press
F we can see that we have this huge
camera viewport this is definitely
currently too large so let's zoom in on
our camera I'm going to set the zoom
here to 4x4 and simply click and drag
our camera to be on top of the player
and now we can try playing our game and
there you go we now have a player that
is playing an idle animation and nothing
else is happening that's because we need
to add a script that allows us to move
around so let's close our game go into
our player scene and with our player
node selected let's press this add
script button here we can choose a
template of course we're going to do
some programming in this video but
writing player movement can quickly
become a bit overwhelming so for now
we'll use the basic movement template
provided by Gau then later we'll go in
and modify to play different animations
and rebind input to the Keys we'd like
to use as for the path here I'm going to
make sure that we put this inside of our
scripts folder and let's just name it
player let's hit create and as you can
see this creates a script that will move
around our character I know that this
might look really confusing at first but
don't worry we'll have a look at what
all this means later for now let's just
try
playing and our player immediately falls
off the screen that's because we need to
give him a collider to stand on right
now our player has a collider but it
doesn't have anything to collide with so
in our game I'm going to go go back to
the 2D View at the top here this is
where we can change from script view to
2D let's add a new node so let's hit the
plus sign let's add a static body 2D and
this is another type of physics body
it's the one we use for things that
don't need to move that's why it's
called Static so it's perfect for
creating some ground let's hit create
and again this is going to give us this
warning here that it needs a shape so
let's add a collision shape so I'm going
to hitr a search for for Collision shape
and for the shape here we're going to
create a new world boundary shape the
world boundary is a type of collider
that is perfect for stuff like well
World boundaries because it's going to
extend infinitely on the horizontal axis
here so as you can see it's currently
pointing up we could also point it to
the side here and now it's going to
extend infinitely on the vertical I'm
going to hit control Z to undo that
instead I'm going to select the entire
static body here I'm going to change to
the move tool by pressing this icon here
or simply W on the keyboard and I'm
going to move it down under our
character then I'm going to go back to
our select tool which is here or simply
press q and while our collider doesn't
have any graphics it's going to be
invisible we can now play and there we
go our player now gently lands on the
collider and we can move around using
the arrow keys and jump with the space
bar now our player is currently a bit
too fast and I think his jump is a bit
too high so let's modify our script to
change that let's close our game go into
our script and at the top here there are
two constants that we can modify our
speed as well as our jump velocity so
I'm going to set the speed to something
less like 130 and the jump velocity to
say -300 and now when we play it looks
and feels a lot better so our player is
moving around for currently there's not
much to look at so let's build a world
to explore World building 1
0 so to
build a world let's begin by removing
our collider here we're going to build
an actual ground for him to stand on and
let's instead add a tilemap node so
let's press new node and search for til
map now the most common way to create
levels in 2D is by using tiles in other
words we build our game World by drawing
different tiles onto a grid this is a
great way to work because we can create
a lot of varied levels using just a few
tiles the tile as sets we used to paint
are normally packed together into one
big image just like our player was this
is called the tile set so the tile set
is a collection of tiles that we can use
to paint from and the tile map that we
just created is the node we use to paint
these tiles into our world so to start
painting on our tile map we need to add
a tile set so in our inspector on the
tile set we'll create a new tile set and
if we press it here we get to configure
some things about it the main thing you
want to make sure is set correctly is
the tile size the tile set in our asset
does indeed have 16x 16 pixel tiles so
we'll just leave that as is now at the
bottom here you can see that we have two
tabs we have the tile set and tile map
so before we can start painting with our
tile map let's go into our tile set and
configure this property the main thing
we want to do is drag in our tet asset
so let's go into our assets folder undo
Sprites and drag in the world tet
png
it's going to ask us if we would like to
automatically create tiles in the atlas
we do so let's press yes and now let's
make some more room here and we can zoom
in to view it and as you can see it's
actually gone ahead and automatically
detected the grid cells that have tiles
if for some reason it's made an error we
can always use our eraser here to remove
tiles in this case here it thinks that
the top of the palm tree is a bunch of
different tiles I'm going to use the
Eraser to get rid of these and instead
go out of the erase mode and then hold
down shift while clicking and dragging
to turn this into one big tile it's also
split up the trees into three different
tiles but in this case it's actually
something that we want because it allows
us to create trees of varying Heights
I'll show you this once we start
painting other than that I think it
looks good so with this TI set set up we
can now go to our to map and start
painting make sure that the scene has
the select tool and that the ti map has
the paint tool enabled and now let's
simply select a TI and start painting
painting it in if you make a mistake you
can always right click to remove so I'm
just going to fast forward through me
drawing out the level here as you can
see I begin by blocking out the most
essential game Parts leaving in room for
gameplay objects like moving platforms
and enemies and then only once I'm
finished with that I start decorating
and ify trick here is that you can
select multiple Tiles at once to paint
in more than one and you can always go
into select mode in order to select
large chunks and move them
now once I'm ready to start decorating
let me just show you the cool trick with
the trees here let's say we want to add
a tree here at the top well then we can
actually just paint the bottom and
choose how tall we want the tree to be
and then paint the top so that's one of
the advantages of working with tiles is
that we can also make individual
elements really really flexible so once
you're happy with the level let's just
go ahead and press play and our player
is going to fall right off that's
because we need to add a physic layer to
our tiles to do this we go to our tile
map go under our tile set physics layers
and add a new layer then with this layer
we can go under our tile set and here we
need to choose what tiles belong to the
physics layer because we don't want to
collide with everything in our to map
the trees and bushes we just want to
pass right through so let's go to paint
here and the property that we want to
paint is the physics layer zero we just
created and now we can actually go ahead
and paint onto our Tils these physics
settings so I'm simply going to paint
this onto all the different solid tiles
and if you make a mistake and want to
remove a tile we go here select clear
and now we can paint with no physics or
we can go back to the default tile shape
which is the entire tile and paint with
that or simply hit F to do that so C and
F are the shortcuts here now there are
also some tiles that we do want physics
on but where we need the collider to
only be on part of the tile such as our
Bridge here so if I zoom in on our
Bridge we can see that if I just paint
physics onto these it doesn't look right
instead we need to go in and only paint
a partial collider so over here on the
left we can actually modify these
colliders to exactly suit our need we
can even add and remove points by
clicking and right clicking but in this
case Four Points will do just fine and
that's a good shape for our collider
then we can paint these onto the three
different tiles and then for the next
one here we can configure it this Slants
up a bit I'm going to paint that on as
well and then for the final one here
let's go ahead and make that go in the
opposite direction and here you actually
want to be pretty precise whenever you
have an overlap of the colliders here I
think that looks pretty good this helps
avoid that our character gets stuck I'm
also going to take the T map and drag it
to the very top so that we can always
find it and now when we play we are
indeed colliding with our environment
awesome now we probably want our camera
to follow the player because he's
currently just running off the screen so
I'm going to make some room here I'm
going to take the camera 2D and simply
drag it under the player making it a
child of the player means that it will
just automatically follow the player
node I'm also going to make sure that
the camera is still positioned right on
top of the player and we can even turn
on position smoothing to really smooth
out our camera follow so I'm going to
enable position smoothing on the camera
with a default speed of 5 pixels and now
when we play as you can see our camera
smoothly follows our player awesome so
now we have a first draft of our game
world but so far everything is stuck to
the grid let's start adding some Dynamic
and moving elements such as platforms
platforms some that move and some that
don't so whenever we are creating a new
element of our game We Begin by making a
new scene and for the root node here I'm
going to hit add and search for the
animatable body 2D this is a physics
body that we use whenever we want to
animate a node and still have it collide
properly with other nodes in its path
which is perfect for moving platforms
that should still Collide properly with
our player so let's hit create and let's
add some graphics so crl a we we search
for sprite and select the Sprite 2D and
now we can drag in the texture we want
so let's go under our assets Sprites and
drag in the platforms
PNG let's hit F
and zoom in and as you can see this is
also a Sprite sheet and it's currently
just displaying all of them so let's go
in and Define exactly which one we want
to show we can do this under region
enabled and hit edit region and so we
can kind of crop out the element that we
want to show I'm going to change the
snap mode here to Pi pixel snap and I'm
just going to go for a default grass
platform that looks good and now when we
close it we can see our Sprite perfectly
cropped out again we have the warning
here so let's go ahead and add a Collis
shape 2D for the shape I'm going to add
a rectangle shape and now we can simply
click and drag this to configure it then
let's rename our top node here to
platform and save the scene so crl s in
our scenes folder hit save we've
actually created our platform so in our
game scene we can drag it in go on
scenes find the platform drag it into
wherever we'd like and let's hit play
and as you can see it works however one
problem right now is that we can't
actually jump onto the platform from
underneath to fix this we turn it into a
one-way platform so in our platform
scene let's select our Collision shape
and enable oneway collation and now when
we play we can jump onto platforms from
underneath however the player is
currently passing behind the platform
this is because the platform is
currently after the player in the tree
this means that each frame the player is
drawn first and then the platform is
drawn on top we could just move the
player in the tree but I don't want to
depend on that instead we fix the draw
order by changing the zindex of the
player so in our player scene we go
under ordering and set the zindex to
something higher like five by default
all visible nodes have a zindex of zero
because they all have the same index
they are drawn according to their order
in the tree so by setting the zindex to
a higher value like five we ensure that
our player will always appear on top and
now if we play we can see that our
player passes in front of the platform
so our platform is working but it's
currently just hovering there we might
want some platforms to move around to
increase difficulty so let's use
animation to do that I'm going to leave
this platform here as kind of a static
platform I'm just going to place it
there then I'm going to place another
platform over here by simply dragging it
in this is the platform that I would
like to move back and forth in fact let
me just go into the to map and make this
Gap even larger there we go so to add
animation to this platform only we
simply select it add a new node and we
want to use an animation player let's
hit create and now we can add a new
animation and let's name that move
animation players in Gau are extremely
powerful because they allow us to
animate pretty much anything in this
case we just want to do something really
simple we want to go to our platform and
make a key frame under transform for the
position so I'll hit the key right here
and hit create then we can go forward in
our timeline here to say 1 second move
our platform to the right so I'm going
to click and drag I'm also going to hold
down shift to kind of snap it to one
axis this let's move it to there and
let's add another key frame and now we
can see that if we play the animation
plays we also want this to Loop so I'm
going to select Loop here however this
is going to Loop in a way that it snaps
back to the original key frame instead
let's press it again and now you can see
that it's going to start Ping ponging
back and forth if this is currently too
fast we can simply increase the length
of our animation so here's the length
let's set it to 1
5 instead and drag our
last key frame to the end and there we
go we now have a moving platform let's
just make sure that we set it to
autoplay and now when we play the game
and go to the place where we made our
platform we can see that it's moving
back and forth and if we jump onto it
the player will smoothly follow it
really cool and there's already so much
you can do with this next up pickups now
let's add a coin that we can pick up
again we start by creating a new scene
let's create a new node CDE and let's
this time search for area 2D this is a
type of node that we use whenever we
don't want to collide with other objects
but instead we just want to Define an
area in which we can detect collisions
so we simply use this to detect if
another body enters such as the player
character let's create an area 2D let's
also add some graphics so contr a search
for sprite and we'll select the animated
Sprite under animation let's add some
new Sprite frames select did and let's
load in from a Sprite sheet here I'm
going to use the coin
png zoom in on
this and this only has one grid cell on
the vertical and horizontally it has 12
and now we can click from left to right
or simply click and drag and add the
frames let's hit F and zoom in set the
fps to 10 and hit play and that's our Co
animation let's make sure that this Auto
plays and just like a normal physics
body and area 2D also needs a collision
shape so let's add a collision shape 2D
and then for the shape let's just choose
a circle shape decrease the radius a bit
and that's actually all we need so let's
select our area and rename it to coin
and save the scene and now we can simply
drag it into our game so under scenes
I'll take the coin and place it around
the level you can always use contrl D to
duplicate and now if we play
we can see that the coin is here but
nothing happens if we enter the area so
it's time to make our first script so in
our coin scene we select the coin node
and hit add script this time for the
template let's just choose the default
template and for the path let's make
sure that this goes under the scripts
folder I'll create and this is what it
looks like when we create a default
script in gdo we can see that we've
created the script on an area 2D node
and that it's automatically made to
function for us that we often use ready
and process currently both of them only
have the pass keyword which means do
nothing so this script if we run it will
do absolutely nothing now the ready
function is called right when our node
enters the scene tree which is just at
the start of the game so we can put code
here that we want to happen immediately
let's try it out by printing a quick
message to see if it's working so I'm
going to write print then in in
parenthesis and quotes I'm going to put
I'm a coin and if we play now the print
doesn't do anything in our game but it
does show our message I'm a coin in the
output window this is also referred to
as the console and is where we see
messages such as prints and errors
however you might also notice that the
message displays multiple times that's
because we currently have multiple coins
around our game and the script runs for
each and every one so since we we have
five coins it displays I'm a coin five
times but we don't want anything to
happen when we start the game so I'm
actually just going to remove these two
functions instead we only want to do
something once our player enters the
coin area and for this we use a signal
signals allow us to trigger code based
on events that happen in our game gdau
has many built-in signals we can use if
we select our area 2D node and go to the
node tab we can see all the signals on
this Noe we want to use the body entered
signal which is triggered whenever a
physics body enters the area since our
player has a character body to D Noe
this is going to trigger the signal so
to connect it we simply double click it
and hit connect as you can see this
creates a new function in our script
called on body entered with a green
arrow that shows that this is triggered
by a signal so let's here try writing a
print function that says something like
+ one coin now when we play and into the
coin area it's going to print plus one
coin however this message will actually
display no matter which body enters the
area if we take one of these coins here
and put it in the way of a moving
platform for example this will also
trigger the message so now right when we
play we can see that it starts
displaying the message and we'll do so
every time the platform passes through
the area to change this we can either
use code to check what body enters the
area or we can simply put our player on
a separate physics layer let's try that
out so under our player we'll go to the
inspector go to Collision and here we
can change the physics layer from layer
one to two let's h control s to save and
then in our coin we can also go under
Collision we can actually have the coin
itself stay on layer one we don't need a
separate layer for that yet but we want
to make sure that it only detects
colliders in Layer Two for this we use
the mask the mask defines what layers a
node collides with so let's set that to
Layer Two because that's the layer that
our player is on that should actually do
it now our coin will only detect
collisions from our player and instead
of just displaying a message let's also
remove the coin from our scene when we
pick it up so in our script after
printing one coin let's add a new line
we'll call the Q free function which is
simp going to remove the entire coin
scene from our game and indeed it does
and our Knight can now start Gathering
some coin now depending on what type of
loot we pick up we want different things
to happen in this case I want to display
a score that increases when we pick up a
coin but we'll look at that when we get
to text first I think something a bit
more pressing is dying and restarting
our game dying 1
0 so we happily move
along in our world until suddenly we
miss a jump and fall into the abyss and
then nothing happens let's change that
the first thing we want to do is limit
our camera so that it doesn't follow our
player when we fall down luckily this is
really easy to do we simply select our
camera under the player go under limit
and here we can set a position limit for
the left top right and bottom part of
our camera in our case we need to set a
limit for the bottom position to do this
we can use the ruler tool here at the
top or simply press R and measure from
this Baseline here to where we would
like the limit of our camera to be I
think a good value would be somewhere
around say 120 so I'll simply go back to
select mode and put in 120 pixels on the
bottom I'm also going to enable
smoothing and now when we play we can
see that our camera will follow the
player but whenever we fall off it
simply going to stay put next we need to
detect that our player has entered a
dangerous area and restart the game in
other words we need to create a Kill
Zone I'll show you a really cool way to
do this that allows us to reuse the same
kill zone for more than just falling off
the map such as for spike traps enemies
all kinds of elements of danger and when
we want to create a reusable element we
start by making a c then to detect if we
enter an area we again use the area 2D
node and let's make sure to set the
Collision mask here to two we only want
to check for the player which is on
Layer Two and and we want add a
collision shape here that's because we
want to be able to reuse this for all
kinds of elements that might have
different shapes instead let's simply go
ahead and rename this now to Killzone
and save it as a new scene then in our
game scene we can add it by dragging it
in or simply pressing the link button
here and selecting the Kill Zone and
then in here we'll add the Collision
shape so I'm going to hit crl a
collision shape and for for the shape
we'll use the same W boundary shape that
we used earlier for the ground now let's
make sure to select the Kill Zone node
itself go into move and use the move
tool to position it down here at the
bottom I'm going to place it pretty far
down so we're sure we don't hit this by
accident or I mean we're going to be
hitting it by accident so let's make
sure we don't hit it on purpose or I
mean I don't know anyways I'm going to
place it down here a good bit away from
our level and now we can add a script to
make something happen when we enter the
area so in our Kill Zone let's select it
add a new script for the template here
I'm just going to select empty and the
path that's put it under the scripts
folder and now we have this empty script
to play with I'm going to connect a
signal so go node make sure we have the
killstone node selected and again we'll
use the body entered signal so let's
double click it hit connect and it's
going to create a new function on body
body entered in which case we can go
ahead and
print that you died and now if we play
and jump down it's going to print that
we died now instead of immediately
restarting the game let's add a small
delay we do this using another node
called the timer node so let's add a new
node search for timer and under the
inspector here we can choose some
different things about it let's set the
weight time to something like 6 seconds
let's also make it a one shot to make
sure that it doesn't Loop we can then
start this timer in our code to do that
however we first need a reference to it
luckily that's as simple as going to the
top of our code clicking and dragging
the timer node and holding down control
while releasing this creates a variable
called timer that automatically finds
the node using this path now if you
haven't worked with paths before they
are actually quite simp symbol they
specify a way to get from one node to
another in the tree so if we look at
this example tree to get from the game
node to the camera the path looks like
this it goes through the player and ends
with the camera and in our case where we
just want to get from the Kill Zone to
the timer right underneath we don't have
to go through any other nodes so the
path is simply timer again right now
we're brushing over Concepts such as
variables and functions pretty briefly
but you can learn more about programming
and what all this really means in our
upcoming video on GD script for now just
know that using this click and drag
method we can now access our timer node
using the name timer so to start our
timer we make a new line and write timer
do start of course we now need to
trigger some code when our timer runs
out and again we can use a signal for
this so with our timer node selected
let's go under node and here's the
timeout signal so let's double click
that and and hit connect and this
creates a new function called ontimer
timeout that runs when the timer ends
and then in here we can simply restart
our game to do this we first access the
scene tree so get tree and tell it to
reload so reload current scene so our
player enters the Kill Zone and triggers
the onbody entered function this prints
a message that we died and starts the
timer when the timer runs out it
triggers the ontimer timeout function
which then reloads our scene and
restarts the game and indeed when we
play and jump off the map we fall down
and the scene restarts
great it's an infinite Loop help me I'm
stuck World building 2
0 let's expand on
our game World a bit now that we have
more elements to work with first of all
I want to make sure that we stay
organized so let's take some of these
nodes and categorize them the easiest
way to do this is by simply adding a new
node for this one I'm just going to
select the base node here hit create and
now we can rename this I'll make one for
say coins and simply take all of the
coins and drag them under that node we
can do the same thing for
platforms and any other elements that
are cluttering up your scene now I'm
going to paint in a bit more level and
change the things that I don't like
and I'll put in some more gameplay
elements I'll also paint in some
background tiles but to do this we need
to add another layer to our tile map so
not under our tile set but under the T
map itself we have this layers and this
is the one we've been painting in let's
just call this mid for midg ground and
add another one that we can call
Background let's move this to the top to
make sure that it's drawn first and now
when painting we need to select the
right layer to paint on so let's select
the background and then we can start
painting in some background
tiles a nice trick here is to use the
rectangle tool to paint in a lot of
tiles at
once and now our game looks a lot better
it has a background and a whole new part
of the level that we can explore and of
course this process is just about trying
things out and making Chang es until
you're
satisfied enemy a proper Hero Of course
needs a good enemy so let's make one
let's create a new scene and since this
enemy doesn't need to collide with
anything we can just go ahead and use a
note 2D as the base let's also add an
animated Sprite so I'll search for
animated Sprite 2D let's go to animation
and some new Sprite frames select them
and let's load in from the Sprite sheet
here in the pack there's both a green
and a purple version of the enemy I'm
just going to choose the green one and
this is a 4x3 and I've included three
animations here one for the enemy kind
of waking up an aggressive idle
animation as well as one where the enemy
takes damage so I'll use the idle
animation here let's add these four
frames let's hit F and zoom in I'm also
going to move this up set the animation
to autoplay and the fps to 10 and now if
we preview we have an animated slime and
this is where things get really cool
because we made our Kill Zone into
reusable scene we can simply use it for
our enemy as well so at the top here
I'll add in a new scene I'm going to
select the Kill Zone and now all we need
to do is give this a collider so crl a
search for Collision shape let's add in
a rectangle fit it to fit our enemy by
the way I'm holding down alt to scale
uniformly and with that we can simply
rename our top node here to slime and
save it as a scene now in our game we
can drag it in I'm going to place it
over here and if we play now and move to
the enemy we can see that just by
throwing together a couple of nodes and
reusing our Kill Zone we've successfully
added a new element of danger to our
game if we enter the enemy we can see
that indeed our game restarts of course
currently dying doesn't look very
exciting we'll fix that in the next
chapter but first let's make our enemy
move back and forth we could of course
do this using an animation player just
like we did for our platforms however I
think it would be cooler to make a
script that moves our enemy to the right
until we get close to a wall in which
case it changes Direction and starts
moving left this way we can simply drag
and drop the enemy between any two walls
in our game and our script will do the
rest so let's start by making our enemy
move to the right so go into the Slime
add a new script use the default
template and place it under the scripts
folder and hit create let's get rid of
the ready function and instead we're
going to be using process
just like movies video games display
motion by drawing frames and showing
them in quick succession while movies
show frames at a fixed rate most often
24 frames per second video games
generally try to draw as many frames as
possible to get a smooth result how
often this happens will depend on the
system the game is running on and what
is happening in the game but unless the
game is lagging it should draw a new
frame at least 60 times per second and
often much more before the computer can
draw a new frame however it first has to
update the state of the game what has
happened since the last frame it does
this for all the notes in our game then
it draws the new frame this is referred
to as the game Loop because it happens
over and over again and it is really the
driving force of our game gdo of course
does this automatically but we can add
functionality to the game Loop using the
other function in the template process
unlike ready which only runs once
process runs every frame this makes it
perfect for doing things over time such
as moving an enemy we simply make sure
to change the position of the enemy a
tiny bit each frame so in our script we
can simply remove the pass keyword and
instead access the position of our slime
more specifically the x coordinate of
our position and add one pixel to this
every frame then in our game let's go
ahead and place a slime close to our
player so that we can see this happening
and
play and as you can see the enemy just
shoots past us on the screen
now one problem with this that might not
be obvious Al than it's moving way too
quickly is that we are increasing the X
position every frame by a fixed amount
and because our frame rate can vary this
means that the enemy will sometimes move
faster than others which is not very
good to fix this we use this little
thing here called Delta Delta is the
amount of time that has gone by since
the last frame if we are drawing many
frames per second Delta gets really
small and if we lag out a bit and are
not drawing as many frames Delta becomes
bigger because of this we can use Delta
to compensate for variations in frame
rate if we have a high frame rate we
want to only move our enemy a little
each frame and if we have a low frame
rate we want to move it a lot in other
words we can multiply our Movement by
Delta to make it independent of the
frame rate now Delta can be a bit hard
to wrap your head around at first but
don't worry you'll get the hang of it A
good rule of thumb is that whenever we
have a a speed value that we can adjust
such as our one here we should probably
multiply it with Delta so in our script
we simply go plus equal 1 multiplied
with Delta now what this essentially
means is that we are going to be moving
1 pixel per second which is not very
fast so let's instead change this to
something like 60 and we can actually
store this speed in a constant at the
top of our script just like in the
movement script so here I'll write const
speed and set it equal to 60 then we can
simply use speed here instead of
hardcoding the value this makes it easy
to change constants right at the top of
your script and now if we play we can
see that our enemy is moving at a
reasonable rate and we know that this
speed won't change from system to system
so let's get rid of this extra slime
here and instead make this one actually
change direction whenever we Face a wall
to do this we need a way to control the
direction we're currently moving in so
that's create a variable that does this
we create a bar call it Direction and
set it equal to one by default then if
we need to go in the opposite direction
we'll set it to -1 instead and to
actually apply this all we need to do is
multiply it into our speed so we'll go
Direction time speed time Delta this is
a really standard way of doing Movement
we simply add onto our position in a
direction multiplied by speed and Delta
so now all we need to do is check if the
enemy gets close to a wall and for this
we'll use a new type of node the raycast
node raycasts are invisible rays that we
can shoot out to detect collisions so
inside of our slime here let's add a new
node of type raycast 2D and as you can
see it draws an arrow to represent this
let's move the starting point here to
the center of our enemy and let's have
it shoot out to around here I'm going to
rename this to raycast right I'm then
going to press contrl D to duplicate I'm
going to have this shoot out in the
opposite direction and rename this to
raycast
left now in our script we can reference
these nodes just like we did with our
timer we simply select them both click
and drag and hold down control while
releasing as you can see this creates
two variables one raycast right and a
raycast left then every frame before we
move our slime we will go ahead and
check if if we're currently colliding to
the right or to the left if
raycast right dot is colliding if this
raycast is hitting something well then
colon and then make sure to indent here
with a tab we will set our direction to
be ne1 if we are colliding on the right
we want to move to the left and we'll
add another one of these if statements
so if Ray cast you guessed it left do is
colliding well then we'll set our
Direction back to one and that's it our
enemy is now ping ponging back and forth
between the two walls and this is
happening completely automatically
through script really cool now the only
thing that is left is to flip the enemy
Sprite when it changes Direction luckily
if we go inspect our animated Sprite
here under offset we have this flip AG
property which will simply flip the
Sprite so let's control this through our
script in our script we'll get a
reference to our animated Sprite 2D this
creates a variable called animated
Sprite 2D I'm just going to get rid of
the 2D here to make the name a bit
shorter and then whenever we are
colliding on the right here and we
change direction to move towards the
left we will also go to our animated
Sprite and set the flip H property to
true and when we are colliding on the
left and we're changing direction again
well then we'll go to our animated
Sprite and set flip H back to false and
that's it that's our entire script let's
find find our enemy here and hooray
we've made an enemy and a slimy one at
that but of course dying to the enemy
could definitely look cooler so let's
fix that dying
2
0 let's start by adding a slow motion
effect when we die we can do this by
changing the time scale of the entire
game so inside of our Kill Zone we'll
open up the script here and right after
we print U died let's modify our time
scale so I'll go engine do time scale
and set it equal to 0
5 this means that
we will go at half speed then when our
timer runs out let's set this back to
default because otherwise we will
actually still be slowed down when our
scene reloads so we'll go engine do time
scale and set it back to the default one
and if we play this now this is actually
already much better notice that it also
takes twice as long before the game
restarts because everything in our game
slows down including our timer but I
think could be even cooler if we remove
the player's collider to make him simply
fall off the map to do this we need a
reference to the player we actually
already have this here you'll notice
that after the on body entered here
there's a variable called body this
refers to the body that entered the area
and since the only thing that enters the
kill zone is our player body is our
player so we can actually add a new line
here that goes to our body and then we
simply need to get the Collision shape
node under our player so we'll do dot
get node and we'll search for the Collis
shape 2D and we can remove it so call do
Q free on that node again Q free means
to remove that node so here we're
accessing our player getting the
Collision shape node and removing it and
now if we find our way to some danger
boom we are hit and we fall off the map
cure the sound effect
[Music]
player 2
0 so far we've been using the
character movement template pretty much
as is but we need to modify it in order
to add animation to our player as well
as change the key Bindings that we use
to move so what are we looking at here
well the top two lines Define two
constants with our speed and jump
velocity there's also a variable here
that defines the gravity based on our
project settings by default this is a
value of 98
so we have these three values but the
meat of the script is really inside of
this physics process function physics
process is very similar to the process
function we used for our enemy however
while process is great for a lot of
things there is one part of the game
engine that really struggles with not
knowing how many times per second it is
going to be run that is the physics
engine physics in general need to update
at fixed intervals to avoid janky
Behavior luckily physics process solves
this problem because it runs at a fixed
rate 60 times per second by default this
is independent of your game's actual
frame rate and helps physics run
smoothly we use it for anything that
involves the physics engine like moving
something that should collide with its
environment such as a player character
so in this function a few things are
happening if the player is not standing
on a Surface we add gravity if we press
the space bar and the player is on the
surface we jump and then we get the
direction we need to move in based on
what arrow keys are pressed and move
accordingly now let's start by rebinding
some input keys for this sco uses an
action system we create actions for
anything we want to do in the game jump
is an action so it's move left or move
right we can then bind keys to these
actions let's try it out so let's go to
project project settings input map and
here we can add some actions I'm going
to add a jump action as well as a move
left and a move right then we can use
the plus sign over here to bind a key so
to my jump here I'm going to hit plus
and then it's listening for input so I'm
going to press the space bar and hit
okay and as you can see space is now
bound to jump for a move left I'm going
to bind the left Arrow key and I'm also
going to bind the a key so we can use
vast for movement as well as you can see
there's no problem binding multiple keys
to the same action which is really handy
I'm also going to bind right arrow to
move right as well as the D key and now
we can use these actions in our script
by default gdau uses some buil-in
actions that are meant for navigating UI
this is why it says things like UI
accept here let's replace these with our
own actions instead and as you can see
it will actually help us by autoc
completing here so I'm going to put in
Jump for my jump action and then for
moving left here I'm going to change to
move left and for moving right I'm going
to change to move right and now we can
use the keys bound to our actions to
move around which in my case are both
the vast keys and the arrow keys awesome
the next thing we need to do is to
update our player Graphics to face the
direction we are moving in and to play
the right animation let's start by
flipping our Sprite based on Direction
so just like with our enemy we first
need a reference to the animated Sprite
node again here we can simply click and
drag and hold down control again I'm
going to remove the 2D from the name to
make it sure order and then we'll add
some extra code to our function now this
line here defines a variable called
direction that is based on our input if
we don't press any buttons direction
will be zero if we press move right
direction will be one and if we press
move left Direction becomes minus one so
we can use this variable to check if we
are moving left or right I'm going to
make some space in the code here and
make my own comments as well so use a
hashtag for a comment this here gets the
input
Direction which can either be minus one
0 or 1 and this down here actually
applies the movement so in between we
can add a section that flips the Sprite
to do this we check if our Direction
variable is greater than zero well that
means we are moving to the right and we
can set animated Sprite dot flip
horizontally to false if this is not the
case well then we want to check if our
direction is less than zero for this we
can use the El if or E if keyword so
else if our direction is less than zero
well then we'll set animated sprite
flip AG to true and now if we play this
we can see that our play a Sprite indeed
faces the right direction now let's add
some animation so let's go to 2D view
select our animated Sprite and let's add
two new animations one called run and
one for jumping
in our run animation I'll add some new
Sprite frames select our KN remember
this is 8x8 and I'll simply add all of
the frames in the Run animation which
stretches over two lines here I'll add
those frames set the fps to 10 and play
looks good then for the jump animation
I'll also add a Sprite frame and there
are bunch of different ways to go about
this but in our case here I think we
should actually play our jump animation
when whenever we're just in the air this
means that this will also play when
we're just falling off a platform and
for this we could use a very quick
looping animation or simply a single
frame I actually like this one from the
roll animation so I'm just going to use
that then in our script we can of course
play these animations so after we get
the input Direction and flip the Sprite
let's add a new segment which is going
to play animations and here we also need
to check our Direction variable more
specifically if our direction is equal
to zero well then we're standing still
and we can go ahead and play animated
sprite
playay the animation called idle
if this is not the case so else well
then we want to play animated sprite
playay the Run animation and that's
actually it if we now start running we
can see our run animation being played
finally we just need to add our jump
animation and here we can use a buildin
function fun of our character body 2D
which is to check if we standing on the
floor so at the top here we'll check if
we're currently on the floor is on floor
well then we want to go ahead and play
our idle or run so I'll cut this using
contr X paste it in here make sure you
tab in and if we are not standing on the
floor well then we're in the air and we
can go and play animated sprite
playay
our jump animation instead so if we're
on on the floor and our direction is
zero well then we're playing idle if
it's not zero well then we're playing
run and if we are not on the floor we
aren't doing any of those things we're
just playing the jump animation and
that's it now if we
play we have a fully animated Knight I
like to think that she's a former
princess who got so tired of waiting to
be saved from the big bad dragon that
she took matters into her own hands who
better to save some princesses from a
dragon that someone who knows dragons
like her own back pocket but feel free
to make up your own story and that
reminds me story we need a good way of
communicating story hints and other
valuable information to the player and
to do this we need text so let's add
some text elements to our game text
there are multiple ways of working with
text in good do as part of a larger UI
or as an integrated part of the game
world for this game I decided to try
making the text part of our world
in Gau a text node is called a label so
let's add one let's hit CR a and search
for a label let's focus on it and as you
can see this creates kind of a bounding
box for our text so I'm going to put it
over here and scale it up a bit and
let's add some text in the field here
I'm going to put in a gameplay hint and
as you can see the text looks really
blurry that's because since we're using
pixel art we actually zoomed in really
really far which makes the otherwise
smooth text appear blurry so we can fix
this by using a pixelated font with hard
edges to match our style I've of course
included some in the assets so let's go
under theme overwrites on our label
fonts and here we can drag in the pixel
operator font we can also change the
font size on do font sizes here enable
that and I'm going to set mine to eight
note that we have to use multiples of
eight in order for the text to appear
crisp so you can see if I change this to
nine it becomes blurry again but we can
use 16 24 32 and so on I'm also going to
go to the colors here and change the
font color using the Color Picker and
now we can place these text elements
around our game to provide story or
gameplay
tips once we're happy we can categorize
all of them under a node so let's create
a node call it labels and drag all of
them under that and now when we play as
you can see they appear as a natural
part of our game world and just like
with Sprites because the player
character has a greater Z index it will
draw on top so let's use one of these
text elements to display our current
score score and points to create a score
or coin counter for our game we need two
things a script that keeps track of our
current score and a label to display it
it's common practice to place game-wide
variables such as a score inside some
kind of game manager so let's make one
we'll hit contr a to add a new node
let's rename it game manager and I'll
place it right at the top here the
reason why we are using a regular node
and not a node 2D is because we don't
need our game manager to have a
transform in other words a position
rotation and scale now let's add a
script to our game manager we'll use the
empty template and for the path here
let's put it inside of our scripts
folder and let's also rename it with non
capital
letters create and let's create a
variable for our current SC score so
we'll write VAR for a variable name it
score and default it to zero now so far
in our code we've only used the building
functions of gdau and some that we made
with signals in this case here we want
to create our own function that adds a
point to our score and displace it so
I'll write funk for a function we'll
name it add Point open and close some
parentheses and put a colon then on a
new line we'll write score plus equal 1
to increase our score by one and print
our current score now unlike ready which
runs at the start of our game and our
signal functions which run when a signal
gets triggered this function currently
has nothing that calls it so right now
our function is here but it isn't being
run to change this we need to go into
our coin script and tell it to call this
function whenever a coin is picked up so
inside of our coin script we need a
reference to our game manager but if we
just click and drag while holding down
control we get this really weird looking
path this is because the game manager is
higher up in the tree than the coins and
it's generally bad practice to use paths
like this that try to access nodes at
the same level or higher in the tree
luckily because our game manager is a
one-of a kind and we are sure that there
will always be only one game manager we
can solve this by marking it as unique
so let's right click our game manager
and select access as unique name as you
can see this creates a percentage iccon
next to the game manager letting us know
that it's a unique node this makes it
much easier and safer to get a reference
to the game manager because now when we
drag it in instead of a dollar sign with
a weird and unpredictable path we get a
percentage sign which means that Gau
quickly finds the node via its unique
name instead of using a path one
limitation of this is that you can only
access unique nodes from within the same
scene if the game manager and the coins
were in different scen means this
wouldn't work now in our function we can
replace the print line here with game
manager access our game manager and call
the function add point And now when a
body enters our coin it's going to go to
the game manager and run our add Point
function and if we play we can see that
every time we pick up a coin it
increases and prints our score in the
output
window finally we can use what we
learned about labels in the previous
chapter to create one for dis displaying
our coins I'm going to make a little
place for this in our
level for now I'll just put in some text
that says you collected x amount of
coins I'm also going to change the auto
wrap mode to word now we can wrap our
text and the horizontal alignment to
Center finally I'll use a boulder
font now we can take this label and
rename it to something like score label
and since we want to change it from our
game manager let's drag it right under
our game manager now in our script we
get a reference by clicking and dragging
holding down control and instead of
printing our score we'll go into our
score label and access the text property
and change it to you
collected and then here I'm going to add
the number add the score onto that
amount of coins notice how make sure to
add spaces between the words and while
this looks good it's actually going to
give us an error and that's because we
need to change this score here from a
whole number variable called an integer
into a text variable called a string
again we'll talk much more about
variables in our video on GD script but
for now we can cast this using Str Str
for string and then wrapping it in
parentheses and now when we play and
pick up some coins along the way
here once we get to the end it says
great job you collected six coins and if
I pick up another one it's going to
update to seven awesome and I don't know
about you this is great and all but I
think it's distinctly lacking a bling
sound when we pick up a coin
blinging bling audio one of the things
that often get overlooked when making a
game is audio but music and sound
effects are a huge part of building the
movie of your game this is of course a
beginners tutorial but let's at least
get our feet wet or should I say our
ears wet nope I shouldn't let's at least
add a music track and a pickup sound for
our coins now in the assets I've
included a music track as well as a few
sounds and to play these we need a new
type of node the audio stream player so
let's add a new node search for audio
stream player 2D let's rename this to
music then we can take our music track
here time for adventure and drag it into
the stream slot we're also going to set
it to autoplay and by default this is
not going to Loop to change that let's
double click it this is going to open up
our audio importer here we can preview
our music
track groovy anyways we can Loop so
let's enable Loop here and hit repport
now by default all sounds are played
fairly loud and since this is background
music we probably want to turn it down a
bit we can do this by by adjusting the
volume on each individual audo stream
player or we can use the audio tab here
at the bottom this is actually a fully
functioning audio mixer and we can add
different buses to control our audio
let's add two one for our music as well
as one for sound effects and then we can
simply route our music here into our
music bus so now we can control the
volume of our music using this slider
I'm just going to set it to -12 and we
have music unfortunately it's going to
restart whenever our scene is reloaded a
quick fix for this is to take our music
node and make it into a scene so click
and drag it into our scenes folder hit
save and then we can add this scene as
an autoload auto loads are Global scenes
and scripts that we want to persist
throughout our entire game no matter
which scene is currently loaded so let's
remove music here from our game scene
and instead go to project project
settings autoload we'll click the little
folder here and navigate to our music
scene and hit add we've now registered
our music scene as an autoload which
means that if we now play even though
our music scene isn't in our game it
automatically loads and start playing
our track and even better it doesn't
reset when our game restarts now to add
a pickup sound we go to our coin and add
an audio stream player let's rename this
to pick up sound
drag in our coin sound and set the bus
here to sound effects and now we can
actually play this sound through script
but since we're removing the coin
immediately by calling the Q free
function the sound won't actually get a
chance to play we can of course fix this
by adding code that Waits until the
sound has finished playing but then we
might get weird functionality where we
try to pick up the coin multiple times
while it's playing and it will still be
visible until the sound is finished so
that me show you a really cool trick to
get around tricky timing things like
this without writing any code that is
using an animation player so let's add
an animation
player and here we'll create a new
pickup
animation and the first thing that we
want to do when we pick up the coin is
to hide the coin Sprite so I'll go into
the animated Sprite 2D and this will
change the window so I'll go back to
animation Here and Now under visibility
I get to key frame the visible property
now when working with animations that
don't need to play until later in the
game it's nice to be able to go back to
the default values after animating by
default here our coin should be visible
now this is pretty cool if I just create
a key frame here for the default value G
is going to ask to create a reset track
if we say yes to this gdor is
automatically going to create another
animation track called reset that will
simply reset this value to its default
state so now in our pickup animation we
can key frame it to whatever we want in
our case when we pick up the coin we
want it not to be visible so I'll
disable that key frame it and then if we
want to go back to our default values we
simply go to our reset track and there
it is it goes back to default so let's
go to our pickup let's also modify our
Collis shape we don't want to be able to
collide with it while it's playing the
sound so let's simply go ahead and add a
default key here for the disabled
property hit create and now we can set
disabled to true and add a new key
we can also go into our pickup sound
here and let's add a default key for the
playing property let's hit create and
now since the sound plays pretty quickly
I I can actually reach the key in time
so we can go down here instead I'm just
going to scale this up a bit go down
here to the value the key frame here and
change it to on so we can actually
modify the key frames here as well so
now we have our pickup animation and if
we go to reset we can see that
everything goes back to default so
that's just a nice way of working with
animation so now we play the sound
disable the collider and hide the Sprite
after 1 second though we can go ahead
and remove the coin from our scene so
all of these key frames here are on
second one let's put them over to right
at the beginning of our animation at
second Z and then after 1 second here we
want to remove our coin and this is a
really cool part about the animation
system is that we can actually add
another track here a call method track
that is used to calling functions so on
our coin we want to call a function and
I'll right click right where we want to
do that insert key and the function that
we want to call is the Q free method
which is right here and so now after 1
second it's going to call the Q free
method on our coin without us writing
any code and voila all the things we
could have done through code are all
inside this animation and again to get
back we simply choose
reset now all that is left is playing
the animation through script so in our
script we'll get a reference to our
animation player and then instead of
directly calling Q free we'll go
animation player
playay pickup and if
we play now we can hear our music and we
can hear our pickup sound when we run
into the
coins awesome export finally we are
ready to export really incredible that
you made it this far you can feel very
proud so let's get our game out of Gau
so we can share it with others Gau can
of course export to many different
platforms but I'm on a Windows computer
here so let's go ahead and make a quick
Windows build the first time we are
exporting our game we need to download
the export templates these are a little
large so to keep good old lightweight
they aren't included by default to
install them we go to editor manage
export templates and hit download and
install and the export templates are
installed and ready to be used so we'll
close close go to project and export in
this window we'll add a build platform
so let's go add Windows desktop we'll
enable embed pck which will export it
into a single file then we scroll down
as for the product name here I'm going
to type in Princess Dragon Slayer and we
can hit export project I'm simply going
to put this on my desktop uncheck export
with debug and hit save this warning is
not a problem we'll hit okay and now on
the desktop we have this first game
exe
we can open that up and
voila we made a
[Music]
game woohoo and that's it
congratulations on making your first
dish or I mean game in Gau if you don't
understand everything or unsure about
where to go from here don't worry that's
totally normal it takes a little while
to become familiar enough with the tools
to feel really free with them never
hesitate to use the documentation
tutorials or code examples you find
online when I started out I spend a lot
of time remixing other people's scripts
before I started to write my own now
where do you go from here well that's
totally up to you but if you want to
continue adding to this game here's a
list of things that you can try out
expand the level see how far you can get
using just what you know now I think
you'd be surprised with how much fun
gameplay you can get out of just these
simple elements add effects like an
animation or particles when picking up a
coin or more Sound and Music add more
danger elements like spikes or traps
that turn on and off most of these are
just variations on the Kill Zone we've
already made add a main menu more
enemies give the player a weapon or add
powerups you can also expand on the game
manager for example to use it to switch
scenes a common way to do this is by
turning it into an autoload just like we
did with our music track or perhaps you
want to improve player Movement by
adding coyote time and double jumps the
possibilities are endless also don't
forget to check out Zena Academy be
among the first 50 people to use the
coupon code below to get 20% off the
first year of your zenva subscription
and that's it for making your first game
in Gau and I wish you the best of luck
on making your second one