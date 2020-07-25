turtles-own [nwho race]
to do
  ca

ask patches [
ifelse pycor < -52 [set pcolor 37] [set pcolor 38]]
cro 1 [setxy 73 -44.25 set shape "books" set nwho 100 set size 35]
cro 1 [set shape "tv" set nwho 101 set size 32 set color red setxy -79.25 -44.25]
cro 1 [set shape "door" set nwho 102 set size 50 set color orange setxy 15.5 -39.25]
cro 1 [set shape "kid1" set nwho 103 set size 20 setxy -41 -42.5]

ask turtles with [ nwho = 101] [repeat 35
[set color random 140 wait .1]]
ask turtles with [nwho =  102] [set color black ]
 ask turtles with [ nwho = 101] [repeat 10
[set color random 140 wait .1]]
cro 1 [set shape "mother" set nwho 104 set size 25 setxy 15.5 -39.25 set color pink]
 ask turtles with [ nwho = 101] [repeat 10
[set color random 140 wait .1]]
 ask patch 30 -22 [set plabel "Turn the TV off!" set plabel-color black]

 ask turtles with [ nwho = 101] [repeat 10
[set color random 140 wait .1]]
 ask patch 30 -22 [set plabel "And read a book!"]
 ask turtles with [ nwho = 101] [repeat 10
[set color random 140 wait .1]]
 ask turtles with [nwho = 104] [die]
  ask turtles with [ nwho = 101] [repeat 10
[set color random 140 wait .1]]
 ask turtles with [nwho = 102] [ set color orange]
 ask patch 30 -22 [set plabel ""]
  ask turtles with [ nwho = 101] [repeat 15
[set color random 140 wait .1] set color black]



  ask turtles with [nwho = 103 ] [while [xcor < 61]
 [ set xcor xcor + 2 wait .09] set shape "kid11"]
 ask turtles with [nwho = 100 ] [set shape "books2"]
 wait 1
 ask turtles with [nwho = 103 ] [while [xcor > -28]
 [ set xcor xcor - 2 wait .09] ]

  ca
 ask patches [
ifelse pycor < -52 [set pcolor 37] [set pcolor 38]]
cro 1 [set shape "kid11" set nwho 103 set size 50  setxy 0 -24]
ask turtles [repeat 20 [set size size + 1 set ycor ycor + .4 wait .025 ]]
 ask patches [set pcolor 38]
 ask turtles [repeat 40 [set size size + 1 set ycor ycor + .4 wait .025 ]]






  ca
  ask patches [
    if abs pxcor >= 89.5 [ set pcolor 36]
  if abs pycor >= 55.5 [ set pcolor 36]
    if abs pxcor <= 2.5 [ set pcolor 36]
    sprout 1 [ifelse 36 = [pcolor] of patch-here [die] [set pcolor 39 die]]]
ask patch -23 48 [
      set plabel "The Tortoise and the Hare"  set plabel-color green]
  ask patch -30 38 [
    set plabel "A Children's Book" set plabel-color black]
  ask patch -30 31 [
    set plabel "By A Policeman  " set plabel-color black]


  crt 1
 [set nwho 1 set shape "turtle-body"
 set size 50 setxy -75 -48.5]
 crt 1
 [set nwho 2 set shape "turtle-head" set size 35
 setxy -59 -39.5]
 crt 1
 [set nwho 3 set shape "hare-head"set heading 0
  set size 30 setxy -25.75 -19.75]
 crt 1
 [set nwho 4 set shape "hare-body" set size 30
 set heading 0 setxy -24.75 -36.75]
 crt 1
 [set nwho 5 set shape "hf" set size 30
 setxy -27.5 -45 set heading 30]
 crt 1
 [set nwho 6 set shape "hf" set size 30
 set heading -30 setxy -23 -45]

ask patch -51 -32 [set plabel "Get rekt mate" set plabel-color green]
ask patch -13 -4 [set plabel "FAKE NEWS! THERE WAS NO RACE" set plabel-color red]
  ask patch 79 11 [set plabel
" Some random people           "
 set plabel-color green]

 ask patch 59 27 [set plabel
" Dedicated to "
 set plabel-color black]
wait 3
  ask patch -13 -4 [set plabel "This book is a LIE!" set plabel-color red]
  wait 3
  ask patch -13 -4 [set plabel "Watch the animation instead!" set plabel-color red]
  wait 3

; page three

  ca
  ask patches [
    if abs pxcor >= 89.5 [ set pcolor 36]
  if abs pycor >= 55.5 [ set pcolor 36]
    if abs pxcor <= 2.5 [ set pcolor 36]
    sprout 1 [ifelse 36 = [pcolor] of patch-here
    [die] [set pcolor 39 die]]]





   ask patches with [pcolor = 39]
    [if pycor < -37 [ifelse random 3 = 0
    [set pcolor 56]
    [set pcolor 66]]]

  crt 1 [set shape "tree pine" set nwho 1 set size 75 set color green setxy 79.5 -11.25]
crt 1 [set shape "tree pine" set nwho 3 set size 75 set color green setxy 52 -5]

  crt 1
[set nwho 4 set shape "turtle-body"
 set size 35  set race 1 setxy -87.25 -37.25]
 crt 1
 [set nwho 5  set race 1 set
  shape "turtle-head" set size 24
 setxy -75.75 -31.75]
 crt 1
 [set nwho 6 set shape "hare-head"set heading 0
  set size 18 setxy -14.25 -20.75]
 crt 1
 [set nwho 7 set shape "hare-body" set size 18
 set heading 0 setxy -13.5 -31]
 crt 1
 [set nwho 8 set shape "hf" set size 18
 setxy -27.5 -45 set heading 30 setxy -14.5 -35.5]
 crt 1
 [set nwho 9 set shape "hf" set size 18
 set heading -30 setxy -23 -45 setxy -11.5 -36]



 repeat 40 [
 ask turtles with [ nwho = 4 ] [set xcor xcor + 1 wait .03]
 ask turtles with [ nwho = 5 ] [set xcor xcor + 1 wait .03]]
 ask patch -21 -26 [set plabel "whats up my dude?"
 set plabel-color green]
  wait .5

  ask patch -5 48 [ set plabel "When he saw his friend Roger the rabbit"
set plabel-color black ]
ask patch -5 53 [ set plabel "Tyler the turtle was wandering the forest"
set plabel-color black ]
ask patch -5 -9 [ set plabel "Stay away from me!"
set plabel-color red ]
  wait 4

    ask patch -5 -9 [ set plabel ""]
 repeat 3 [
 ask turtles with [ nwho = 6 ] [set xcor xcor + 2 wait .03]
 ask turtles with [ nwho = 7 ] [set xcor xcor + 2 wait .03]
 ask turtles with [ nwho = 8 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]
    ask turtles with [ nwho = 9 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]]

ask turtles with [ nwho = 6 ] [set xcor xcor + 16 wait .03]
 ask turtles with [ nwho = 7 ] [set xcor xcor + 16 wait .03]
 ask turtles with [ nwho = 8 ] [set xcor xcor + 16 wait .01 set heading heading * -1 wait .02]
    ask turtles with [ nwho = 9 ] [set xcor xcor + 16 wait .01 set heading heading * -1 wait .02]

  repeat 13 [
 ask turtles with [ nwho = 6 ] [set xcor xcor + 2 wait .03]
 ask turtles with [ nwho = 7 ] [set xcor xcor + 2 wait .03]
 ask turtles with [ nwho = 8 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]
    ask turtles with [ nwho = 9 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]]

 ask patch -21 -26 [set plabel "I think Roger wants to race!" ]
  wait 1
  ask patch 34 -10 [ set plabel "No I don't!" set plabel-color red]
wait 2
  ask patch 34 -10 [ set plabel ""]
  repeat 15 [
 ask turtles with [ nwho = 6 ] [set xcor xcor + 2 wait .03]
 ask turtles with [ nwho = 7 ] [set xcor xcor + 2 wait .03]
    ask turtles with [ nwho = 8 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]
    ask turtles with [ nwho = 9 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]]
  ask turtles with [ nwho = 6 ] [set size 1]
 ask turtles with [ nwho = 7 ] [set size 1]
 ask turtles with [ nwho = 8 ] [set size 1]
    ask turtles with [ nwho = 9 ] [set size 1]
  wait 1
   ask patch -21 -26 [set plabel "Yup! He defenitely wants to race!" ]
  ask patch 86 50 [set plabel "The two friends decided to have a race." set plabel-color black]
  wait 2.5
  ask patch -21 -26 [set plabel "" ]
  repeat 28 [
 ask turtles with [ nwho = 4 ]
 [set xcor xcor + 1 wait .03]
 ask turtles with [ nwho = 5 ]
 [set xcor xcor + 1 wait .03]]

 ask turtles with [ nwho = 4 ]
 [set xcor xcor + 33 wait .03]
 ask turtles with [ nwho = 5 ]
 [set xcor xcor + 33 wait .03]
 repeat 40 [
 ask turtles with [ nwho = 4 ]
 [set xcor xcor + 1 wait .03]
 ask turtles with [ nwho = 5 ]
 [set xcor xcor + 1 wait .03]]
  ask turtles with [ nwho = 4 ]
 [set size 1]
 ask turtles with [ nwho = 5 ]
 [set size 1]


  ;page 4

  ca
  ask patches [
    if abs pxcor >= 89.5 [ set pcolor 36]
  if abs pycor >= 55.5 [ set pcolor 36]
    if abs pxcor <= 2.5 [ set pcolor 36]
    sprout 1 [ifelse 36 = [pcolor] of patch-here
    [die] [set pcolor 39 die]]]





   ask patches with [pcolor = 39]
    [if pycor < -37 [ifelse random 3 = 0
    [set pcolor 56]
    [set pcolor 66]]]

  crt 1 [set shape "tree pine" set nwho 1 set size 75 set color green setxy 33.5 -.75]
crt 1 [set shape "tree pine" set nwho 3 set size 75 set color green setxy -88 -36 ]
  crt 1 [ set shape "h"
set nwho 10 set size 80 set color red setxy 68 -9.75]


 crt 1
 [set nwho 6 set shape "hare-head"set heading 0
  set size 18 setxy -34.25 -20.75]
 crt 1
 [set nwho 7 set shape "hare-body" set size 18
 set heading 0 setxy -33.5 -31]
 crt 1
 [set nwho 8 set shape "hf" set size 18
 setxy -27.5 -45 set heading 30 setxy -34.5 -35.5]
 crt 1
 [set nwho 9 set shape "hf" set size 18
 set heading -30 setxy -23 -45 setxy -31.5 -36]
  wait 1

  ask patch -13 -8 [set plabel "That turtle is so annoying" set plabel-color red]
wait 2
ask patch -13 -8 [set plabel "What was he saying about a race?"]
wait 2
ask patch -13 -8 [set plabel "Probably nothing"]
wait 2
ask patch -13 -8 [set plabel "Im just going to do my Comp Sci HW"]
ask patch -5 53 [set plabel  "The rabbit was sure he would win the race" set plabel-color black]
ask patch -6 48 [set plabel " And took a nap before finishing          " set plabel-color black]
  wait 2
  ask patch -13 -8 [set plabel ""]


repeat 13 [
 ask turtles with [ nwho = 6 ] [set xcor xcor + 2 wait .03]
 ask turtles with [ nwho = 7 ] [set xcor xcor + 2 wait .03]
    ask turtles with [ nwho = 8 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]
    ask turtles with [ nwho = 9 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]]

    ask turtles with [ nwho = 6 ] [set xcor xcor + 13 wait .03]
 ask turtles with [ nwho = 7 ] [set xcor xcor + 13 wait .03]
    ask turtles with [ nwho = 8 ] [set xcor xcor + 13 wait .01 set heading heading * -1 wait .02]
    ask turtles with [ nwho = 9 ] [set xcor xcor + 13 wait .01 set heading heading * -1 wait .02]

repeat 33 [
 ask turtles with [ nwho = 6 ] [set xcor xcor + 2 wait .03]
 ask turtles with [ nwho = 7 ] [set xcor xcor + 2 wait .03]
    ask turtles with [ nwho = 8 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]
    ask turtles with [ nwho = 9 ] [set xcor xcor + 2 wait .01 set heading heading * -1 wait .02]]

    ask turtles with [nwho = 10 ] [ set shape "h" set color black]
wait 1

ask turtles with [ nwho = 6 ] [set size 1]
 ask turtles with [ nwho = 7 ] [set size 1]
    ask turtles with [ nwho = 8 ] [set size 1]
    ask turtles with [ nwho = 9 ] [set size 1]
    wait 1
    ask turtles with [nwho = 10 ] [ set shape "h" set color red]
  wait 1

  ; page 5
   ca
  ask patches [
    if abs pxcor >= 89.5 [ set pcolor 36]
  if abs pycor >= 55.5 [ set pcolor 36]
    if abs pxcor <= 2.5 [ set pcolor 36]
    sprout 1 [ifelse 36 = [pcolor] of patch-here
    [die] [set pcolor 39 die]]]





   ask patches with [pcolor = 39]
    [if pycor < -37 [ifelse random 3 = 0
    [set pcolor 56]
    [set pcolor 66]]]

crt 1 [ setxy -62.5 -25.25 set shape "flag" set nwho 11 set size 25 set color red]

   crt 1
[set nwho 4 set shape "turtle-body"
 set size 35  set race 1 setxy -87.25 -37.25]
 crt 1
 [set nwho 5  set race 1 set
  shape "turtle-head" set size 24
 setxy -75.75 -31.75]



 repeat 40 [
 ask turtles with [ nwho = 4 ]
 [set xcor xcor + 1 wait .03]
 ask turtles with [ nwho = 5 ]
 [set xcor xcor + 1 wait .03]]

 ask patch -26 -23 [set plabel "Woah, I won!" set plabel-color green]
  wait .5


 crt 1 [set shape "p" setxy -17.25 -56.25 set size 25 set color brown set nwho 15]

  ask turtles with [nwho = 15] [repeat 25  [set ycor ycor + 1 wait .02]]

  ask patch -6 -11 [set plabel "Wow this turtle just beat a rabbit in a race!" set plabel-color 0]
wait 2
ask patch -6 -11 [set plabel "This is so inspiring"]
wait 2
ask patch -6 -11 [set plabel "So many lessons to be learned"]
wait 2
ask patch -6 -11 [set plabel " Im going to write a book about this!"]
ask patch -8 52 [set plabel "The turtle won the race!          " set plabel-color black]

  crt 1
 [set nwho 6 set shape "hare-head"set heading 0
  set size 18 setxy (-34.25 + 80) -20.75]
 crt 1
 [set nwho 7 set shape "hare-body" set size 18
 set heading 0 setxy ( -33.5 + 80) -31]
 crt 1
 [set nwho 8 set shape "hf" set size 18
 setxy -27.5 -45 set heading 30 setxy (-34.5 + 80) -35.5]
 crt 1
 [set nwho 9 set shape "hf" set size 18
 set heading -30 setxy -23 -45 setxy (-31.5 + 80) -36]

  ask patch 60 -8 [set plabel "Wait! What race!?!?!" set plabel-color red]
  wait 3.5

  ; last page

  ca
  ask patches [
    if abs pxcor >= 89.5 [ set pcolor 36]
  if abs pycor >= 55.5 [ set pcolor 36]
    if abs pxcor <= 2.5 [ set pcolor 36]
    sprout 1 [ifelse 36 = [pcolor] of patch-here
    [die] [set pcolor 39 die]]]

    ask patch -30 -1 [set plabel "The End!     " set plabel-color 0 ]

   crt 1
 [set nwho 6 set shape "hare-head"set heading 0
  set size 18 setxy (-34.25 + 80) (-20.75 + 20)]
 crt 1
 [set nwho 7 set shape "hare-body" set size 18
 set heading 0 setxy ( -33.5 + 80) (-31 + 20)]
 crt 1
 [set nwho 8 set shape "hf" set size 18
 setxy -27.5 -45 set heading 30 setxy (-34.5 + 80) (-35.5 + 20)]
 crt 1
 [set nwho 9 set shape "hf" set size 18
 set heading -30 setxy -23 -45 setxy (-31.5 + 80) (-36 + 20)]
 wait 2
 ask patch 83 20 [set plabel "Fake news is not a joke guys  " set plabel-color black]
 wait 2
  ask patch 83 20 [set plabel "I was recently fired because"]
  ask patch 83 16 [set plabel "My boss thought I was lazy after " set plabel-color black]
  ask patch 83 12 [set plabel " reading this fake story" set plabel-color black]
wait 4
  ask patch 83 20 [set plabel ""]
  ask patch 83 16 [set plabel ""]
  ask patch 83 12 [set plabel ""]

 ask patch 83 16 [set plabel "Please support me on gofundme.com"]
 wait 2

ca
ask patches [set pcolor 38]
cro 1 [set shape "k1" set size 100 set nwho 99 setxy 1.5 -41]
ask turtles [ wait .15 set shape "k2"]
ask turtles [ wait .15 set shape "k3"]
ask turtles [ wait .15 set shape "k4"]
ask turtles [ wait .15 set shape "k5"]
ask turtles [ wait .15 set shape "k6"]
wait 2.5
ca







end
@#$#@#$#@
GRAPHICS-WINDOW
210
10
942
471
-1
-1
4.0
1
16
1
1
1
0
0
0
1
-90
90
-56
56
0
0
1
ticks
30.0

BUTTON
38
46
101
79
go
do
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

book
false
0
Polygon -7500403 true true 30 195 150 255 270 135 150 75
Polygon -7500403 true true 30 135 150 195 270 75 150 15
Polygon -7500403 true true 30 135 30 195 90 150
Polygon -1 true false 39 139 39 184 151 239 156 199
Polygon -1 true false 151 239 254 135 254 90 151 197
Line -7500403 true 150 196 150 247
Line -7500403 true 43 159 138 207
Line -7500403 true 43 174 138 222
Line -7500403 true 153 206 248 113
Line -7500403 true 153 221 248 128
Polygon -1 true false 159 52 144 67 204 97 219 82

books
false
0
Rectangle -7500403 false true 0 75 300 225
Rectangle -6459832 true false 0 75 300 225
Line -16777216 false 0 210 300 210
Line -16777216 false 0 90 300 90
Line -16777216 false 150 90 150 210
Line -16777216 false 120 90 120 210
Line -16777216 false 90 90 90 210
Line -16777216 false 240 90 240 210
Line -16777216 false 270 90 270 210
Line -16777216 false 30 90 30 210
Line -16777216 false 60 90 60 210
Line -16777216 false 210 90 210 210
Line -16777216 false 180 90 180 210
Line -16777216 false 0 150 300 150
Rectangle -955883 true false 4 97 18 144
Rectangle -10899396 true false 96 97 110 144
Rectangle -13345367 true false 63 158 77 205
Rectangle -1184463 true false 158 98 172 145
Rectangle -1184463 true false 185 97 199 144
Rectangle -2674135 true false 217 155 231 202

books2
false
0
Rectangle -7500403 false true 0 75 300 225
Rectangle -6459832 true false 0 75 300 225
Line -16777216 false 0 210 300 210
Line -16777216 false 0 90 300 90
Line -16777216 false 150 90 150 210
Line -16777216 false 120 90 120 210
Line -16777216 false 90 90 90 210
Line -16777216 false 240 90 240 210
Line -16777216 false 270 90 270 210
Line -16777216 false 30 90 30 210
Line -16777216 false 60 90 60 210
Line -16777216 false 210 90 210 210
Line -16777216 false 180 90 180 210
Line -16777216 false 0 150 300 150
Rectangle -10899396 true false 96 97 110 144
Rectangle -13345367 true false 63 158 77 205
Rectangle -1184463 true false 158 98 172 145
Rectangle -1184463 true false 185 97 199 144
Rectangle -2674135 true false 217 155 231 202

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

door
true
0
Rectangle -7500403 true true 120 75 195 225
Circle -16777216 true false 179 144 10

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

father
false
0
Rectangle -1 true false 120 90 180 180
Polygon -13345367 true false 135 90 150 105 135 180 150 195 165 180 150 105 165 90
Polygon -7500403 true true 120 90 105 90 60 195 90 210 116 154 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 183 153 210 210 240 195 195 90 180 90 150 165
Circle -1 true false 110 5 80
Rectangle -1 true false 127 76 172 91
Line -16777216 false 172 90 161 94
Line -16777216 false 128 90 139 94
Polygon -13345367 true false 195 225 195 300 270 270 270 195
Rectangle -13791810 true false 180 225 195 300
Polygon -14835848 true false 180 226 195 226 270 196 255 196
Polygon -13345367 true false 209 202 209 216 244 202 243 188
Line -16777216 false 180 90 150 165
Line -16777216 false 120 90 150 165
Circle -16777216 true false 117 24 16
Circle -16777216 true false 159 23 16
Polygon -16777216 true false 131 55 140 50 153 46 165 48 167 62 155 70 140 69 135 67 131 60 135 55

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

h
false
0
Rectangle -2674135 true false 180 90 195 195
Rectangle -1184463 true false 90 165 210 255
Rectangle -7500403 true true 165 195 195 255
Rectangle -16777216 true false 105 202 135 240
Polygon -2674135 true false 225 165 75 165 150 90
Line -16777216 false 75 165 225 165

h1
false
0
Polygon -6459832 true false 2 180 227 180 152 150 32 150
Rectangle -2674135 true false 270 75 285 255
Rectangle -1184463 true false 75 135 270 255
Rectangle -16777216 true false 124 195 187 256
Rectangle -16777216 true false 210 195 255 240
Rectangle -16777216 true false 90 150 135 180
Rectangle -16777216 true false 210 150 255 180
Line -16777216 false 270 135 270 255
Rectangle -1184463 true false 15 180 75 255
Polygon -6459832 true false 60 135 285 135 240 90 105 90
Line -16777216 false 75 135 75 180
Rectangle -16777216 true false 30 195 93 240
Line -16777216 false 60 135 285 135
Line -16777216 false 255 105 285 135
Line -16777216 false 0 180 75 180
Line -7500403 true 60 195 60 240
Line -7500403 true 154 195 154 255
Line -7500403 true 105 150 105 180
Line -7500403 true 120 150 120 180
Line -7500403 true 225 150 225 180
Line -7500403 true 240 150 240 180
Rectangle -7500403 true true 124 195 189 255
Line -16777216 false 157 195 156 257
Circle -1 true false 269 63 12
Circle -1 true false 275 53 12
Circle -1 true false 262 26 11
Circle -1 true false 266 44 14
Circle -1 true false 272 32 12

hare-body
true
0
Polygon -1 true false 129 59 118 95 115 112 113 126 108 153 108 170 109 194 113 220 121 233 139 242 169 243 183 227 193 203 193 176 187 134 180 107 171 82 163 65 158 54 132 57
Polygon -7500403 true true 185 132
Polygon -1 true false 177 101 190 131 191 143 197 169 197 183 200 194 209 189 207 175 205 161 202 145 198 128 192 113 186 103 181 97 170 96
Polygon -1 true false 117 99 109 107 105 112 105 119 99 135 98 145 98 155 98 165 97 178 97 187 97 193 97 197 102 198 106 196 106 188 106 177 106 169 108 141 112 128 121 114

hare-head
true
0
Polygon -6459832 true false 83 114 68 84 68 39 98 69 113 99 113 114 113 129 83 114
Polygon -6459832 true false 90 105
Polygon -1 true false 95 107 80 77 77 59 90 73 100 95 105 111 96 105
Polygon -6459832 true false 182 133 197 103 197 73 197 73 182 28 167 73 167 88 167 103 182 133
Polygon -6459832 true false 194 95
Polygon -1 true false 182 106 175 82 178 57 183 51 188 66 190 80 190 91 185 104
Polygon -1 true false 107 117 151 104 193 118 208 151 209 211 182 242 130 241 108 213 94 185 94 148 105 118 117 115
Circle -2674135 true false 115 131 16
Circle -2674135 true false 163 128 16
Polygon -16777216 false false 123 203 145 218 170 219 181 206 186 195 124 201

hf
true
0
Polygon -1 true false 142 120 138 151 138 185 136 214 134 235 142 240 158 240 166 240 176 239 176 230 166 227 154 227 153 217 155 206 157 191 160 170 161 159 161 149 163 122

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

k1
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 210 165 300 195 300 210 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 168 45 8
Circle -16777216 true false 128 45 8
Circle -16777216 true false 149 62 8

k2
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 210 165 300 195 300 210 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 168 45 8
Circle -16777216 true false 148 61 10
Circle -16777216 true false 129 45 8

k3
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 210 165 300 195 300 210 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 167 44 10
Circle -16777216 true false 146 59 14
Circle -16777216 true false 128 44 10

k4
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 210 165 300 195 300 210 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 145 58 16
Circle -16777216 true false 127 43 12
Circle -16777216 true false 165 42 12

k5
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 210 165 300 195 300 210 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 143 56 20
Circle -16777216 true false 129 45 8
Circle -16777216 true false 164 41 14
Circle -16777216 true false 127 42 14

k6
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 210 165 300 195 300 210 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 140 54 26
Circle -16777216 true false 129 45 8
Circle -16777216 true false 163 41 16
Circle -16777216 true false 127 43 14
Circle -16777216 true false 125 41 16

kid1
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 210 165 300 195 300 210 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 118 43 14
Circle -16777216 true false 165 42 14
Polygon -16777216 true false 139 67 142 70 146 71 149 72 153 72 156 71 159 71 160 69 163 67 164 65 140 66

kid11
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -1 true false 245 180 210 195 192 134 257 104 270 165
Polygon -955883 true false 240 195 210 210 195 150 263 115 277 174
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 118 43 14
Circle -16777216 true false 165 42 14
Polygon -16777216 false false 137 70 167 69

kid1a
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 90 285 105 300 135 300 150 210 210 300 240 300 255 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 118 43 14
Circle -16777216 true false 165 42 14
Polygon -16777216 true false 139 67 142 70 146 71 149 72 153 72 156 71 159 71 160 69 163 67 164 65 140 66

kid1b
false
0
Polygon -13791810 true false 165 90 150 105 165 165 150 180 135 165 150 105 135 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Circle -1 true false 110 5 80
Rectangle -1 true false 128 79 173 94
Polygon -1184463 true false 195 90 180 195 210 285 195 300 165 300 150 210 105 300 75 300 60 285 120 195 105 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Polygon -6459832 true false 189 31 179 47 173 33 162 41 155 29 142 39 137 33 124 43 110 30 116 21 122 15 128 10 138 6 149 4 158 6 169 9 177 15 183 22 187 29
Circle -16777216 true false 168 43 14
Circle -16777216 true false 121 42 14
Polygon -16777216 true false 161 67 158 70 154 71 151 72 147 72 144 71 141 71 140 69 137 67 136 65 160 66

kid1c
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 120 285 135 300 180 300 150 210 210 300 240 300 255 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 118 43 14
Circle -16777216 true false 165 42 14
Polygon -16777216 true false 139 67 142 70 146 71 149 72 153 72 156 71 159 71 160 69 163 67 164 65 140 66

kid1d
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -1184463 true false 195 90 240 195 210 210 165 105
Circle -1 true false 110 5 80
Rectangle -1 true false 127 79 172 94
Polygon -1184463 true false 105 90 120 195 120 285 135 300 165 300 150 210 165 300 210 300 225 285 180 195 195 90
Polygon -1184463 true false 105 90 60 195 90 210 135 105
Polygon -6459832 true false 111 31 121 47 127 33 138 41 145 29 158 39 163 33 176 43 190 30 184 21 178 15 172 10 162 6 151 4 142 6 131 9 123 15 117 22 113 29
Circle -16777216 true false 118 43 14
Circle -16777216 true false 165 42 14
Polygon -16777216 true false 139 67 142 70 146 71 149 72 153 72 156 71 159 71 160 69 163 67 164 65 140 66

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

mother
false
11
Circle -1 true false 108 6 80
Rectangle -1 true false 127 79 172 94
Polygon -8630108 true true 120 90 105 90 60 195 90 210 120 165 90 285 105 300 195 300 210 285 180 165 210 210 240 195 195 90
Polygon -1184463 true false 135 90 120 90 150 135 180 90 165 90 150 105
Line -2674135 false 195 90 150 135
Line -2674135 false 105 90 150 135
Polygon -1 true false 135 90 150 105 165 90
Circle -6459832 true false 117 27 16
Circle -6459832 true false 161 25 16
Polygon -16777216 true false 130 58 136 65 140 67 147 66 156 66 163 64 166 61 169 57 170 55 167 55 133 56
Polygon -1184463 true false 113 9 149 1 173 7 193 28 201 64 217 97 223 116 216 113 216 118 209 110 211 122 193 88 180 88 172 84 181 71 187 57 187 37 184 27 176 20 163 14 148 15 138 18 121 19 109 22 101 24 105 15 116 10

p
false
0
Polygon -1 true false 124 91 150 165 178 91
Polygon -13345367 true false 134 91 149 106 134 181 149 196 164 181 149 106 164 91
Polygon -13345367 true false 180 195 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285
Polygon -13345367 true false 120 90 105 90 60 195 90 210 116 158 120 195 180 195 184 158 210 210 240 195 195 90 180 90 165 105 150 165 135 105 120 90
Rectangle -7500403 true true 123 76 176 92
Circle -7500403 true true 110 5 80
Polygon -13345367 true false 150 26 110 41 97 29 137 -1 158 6 185 0 201 6 196 23 204 34 180 33
Line -13345367 false 121 90 194 90
Line -16777216 false 148 143 150 196
Rectangle -16777216 true false 116 186 182 198
Rectangle -16777216 true false 109 183 124 227
Rectangle -16777216 true false 176 183 195 205
Circle -1 true false 152 143 9
Circle -1 true false 152 166 9
Polygon -1184463 true false 172 112 191 112 185 133 179 133
Polygon -1184463 true false 175 6 194 6 189 21 180 21
Line -1184463 false 149 24 197 24
Rectangle -16777216 true false 101 177 122 187
Rectangle -16777216 true false 179 164 183 186

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

person student
false
0
Polygon -13791810 true false 135 90 150 105 135 165 150 180 165 165 150 105 165 90
Polygon -7500403 true true 195 90 240 195 210 210 165 105
Circle -7500403 true true 110 5 80
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -1 true false 100 210 130 225 145 165 85 135 63 189
Polygon -13791810 true false 90 210 120 225 135 165 67 130 53 189
Polygon -1 true false 120 224 131 225 124 210
Line -16777216 false 139 168 126 225
Line -16777216 false 140 167 76 136
Polygon -7500403 true true 105 90 60 195 90 210 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

tree pine
false
0
Rectangle -6459832 true false 120 225 180 300
Polygon -7500403 true true 150 240 240 270 150 135 60 270
Polygon -7500403 true true 150 75 75 210 150 195 225 210
Polygon -7500403 true true 150 7 90 157 150 142 210 157 150 7

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

turtle-body
false
0
Polygon -6459832 true false 90 150 137 132
Polygon -6459832 true false 240 152 212 121 170 106 122 106 90 119 78 136 71 150 240 151
Polygon -10899396 true false 81 150 71 180 89 183 95 149
Polygon -6459832 true false 105 189
Polygon -10899396 true false 117 149 118 181 137 182 126 149
Polygon -10899396 true false 173 147 161 182 182 185 186 150 175 149
Polygon -10899396 true false 204 147 221 183 237 178 213 146

turtle-head
false
0
Polygon -7500403 true true 117 33
Polygon -10899396 true false 138 117 206 117 224 178 114 178 138 119
Polygon -10899396 true false 93 91 93 83
Circle -6459832 true false 184 130 12
Line -16777216 false 178 125 190 122
Polygon -16777216 false false 145 80 144 78
Polygon -10899396 true false 138 178 108 207 88 184 125 157
Polygon -16777216 true false 180 165 186 173 200 171 212 166 212 158 207 161 203 164 197 166 190 165 183 165

tv
false
1
Rectangle -7500403 true false 60 45 240 180
Polygon -7500403 true false 90 180 105 195 135 195 135 210 165 210 165 195 195 195 210 180
Rectangle -2674135 true true 75 60 225 165
Rectangle -7500403 true false 45 210 255 225
Rectangle -10899396 true false 249 223 237 217
Line -16777216 false 60 225 120 225

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.0.2
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
