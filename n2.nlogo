turtles-own [cloudp1 cloudp2 treep w1 h1 energy name ff]
patches-own [prepcolor hitbox]
globals [aa abb a b zer c d f g h aix aiy i j k l m n o p q r s t u v w x y z gokuhp badhp xp x-cor y-cor x-cor2 y-cor2]
;This is the starting screen with the buttons and picture  "P0"
to start1
ifelse aa = 0 [
  ifelse a = 0 [
  ca
  ask patches [
  set pcolor 85]
  import-pcolors "rr1.png"
  work1.1
    work1.2
    ask patches [
      if pcolor = black [set pcolor 85] ]
  crt 1 [set shape "top score" set size 80 set color red setxy 120 50]
    crt 1 [set shape "go!" set size 160 set color red setxy 120 -60 set heading 0] set a 1]

  [if mouse-xcor  >= 71 and mouse-xcor <= 173 [if mouse-ycor >= -76 and mouse-ycor <= -21 [if mouse-down? [
    ca
  ask patches [
    if pycor <= -105 [set pcolor 36]
    if pycor <= -45 and pycor > -105 [set pcolor 65]
    if pycor >= -45 [set pcolor 95]
  ]
  crt 1 [set color yellow set shape "circle" setxy -240 100 set size 35]
  repeat 20 [if random 2 = 0 [crt 1 [set shape "cloud" set color white set size random 10 + 30 setxy random 520 - 260 100 set cloudp1 1 set cloudp2 random 2]]]
      repeat 10 [if random 2 = 0 [crt 1 [set shape "tree" set color green set size random 75 + 100 setxy random 520 - 260 0 set treep 1]]] set aa 1]  ]]]     ]



  ; this is the game portion
  ;!!!!!!!!!!!!
  ;!!!!!!!!!!!!
  ;!!!!!!!!!!!!
  [
    if zer = 0 [
    set badhp 1
      set gokuhp 10 set zer 1]
    if b = 0 [
    sub1 ]
  if c = 0 [
      sub2]
     hp
   if any? turtles with [shape = "powerball2"] [ damage2]
    if any? turtles with [shape = "powerball1"] [ damage1]]
AI
  ;!!!!!!!!!
  ;!!!!!!!!!
  ;!!!!!!!!!
end



;setting up the hp and exp bar
to hp
  if abb = 0 [
  crt 1 [set shape "exp-10" set size 200 setxy -80 85 set ff 2]
crt 1 [set shape "hp" set size 200 setxy 60 85 set ff 1]
    set abb 1]
  ask turtles with [ff = 1 ] [
  if gokuhp = 0 [set shape "hp-10"]
    if gokuhp = 1 [set shape "hp-9"]
    if gokuhp = 2 [set shape "hp-8"]
    if gokuhp = 3 [set shape "hp-7"]
    if gokuhp = 4 [set shape "hp-6"]
    if gokuhp = 5 [set shape "hp-5"]
    if gokuhp = 6 [set shape "hp-4"]
    if gokuhp = 7 [set shape "hp-3"]
    if gokuhp = 8 [set shape "hp-2"]
    if gokuhp = 9 [set shape "hp-1"]
    if gokuhp = 10 [set shape "hp"]]

  ask turtles with [ff = 2 ] [
  if xp = 0 [set shape "exp-10"]
    if xp = 1 [set shape "exp-9"]
    if xp = 2 [set shape "exp-8"]
    if xp = 3 [set shape "exp-7"]
    if xp = 4 [set shape "exp-6"]
    if xp = 5 [set shape "exp-5"]
    if xp = 6 [set shape "exp-4"]
    if xp = 7 [set shape "exp-3"]
    if xp = 8 [set shape "exp-2"]
    if xp = 9 [set shape "exp-1"]
    if xp = 10 [set shape "exp-0"]]

end





; All this is to get the imnpirted picture to move where I want it
to work1.1
ask patches [
    if pxcor < 60 [
      set prepcolor [pcolor] of patch (pxcor + 200) pycor]]
end
to work1.2
 ask patches [set pcolor prepcolor]
end


;making goku
to sub1
  crt 1  [set shape "bg5" set size 55 set heading 0 set color 29 setxy -240 -80 set w1 1 set name "goku"]
  ask turtles [set b 1]
end
;making evil guy
to sub2
  crt 1 [set shape "bg1" set size 55 set heading 0 set color 29 setxy 240 -80 set w1 2 set name "bad"] set c 1
end




; Button controls
; Button controls
; Button controls
; Button controls
; Button controls

to up
  ask turtles with [w1 = 1] [ ifelse ycor > 80 [stop] [repeat 10 [setxy xcor ycor + 1 wait .005] set h1 1]]
end
to down
  ask turtles with [w1 = 1] [ ifelse ycor <= -80 [stop] [repeat 10 [setxy xcor ycor - 1 wait .0075] set h1 1]]
end
to right-
  ask turtles with [w1 = 1] [ ifelse xcor > 230 [stop] [repeat 10 [setxy xcor + 1.5 ycor wait .005] set h1 1]]
end
to left-
  ask turtles with [w1 = 1] [ ifelse xcor < -230 [stop] [repeat 10 [setxy xcor - 1.5 ycor wait .005] set h1 1]]
end
to shoot1
  ask turtles with [w1 = 1] [
set shape "bg5.2" wait .1
set shape "bg5.3" wait .1
set shape "bg5.4" wait .1
set shape "bg5.5" wait .1
set shape "bg5.6" wait .1
set shape "bg5.7" wait .1
    set shape "bg5.8" wait .1
  set x xcor
    set y ycor]
    wait .3
     crt 1 [set size 20 set energy 1 set shape "powerball2" setxy x + 27 y + 2
    while [xcor <= 238] [setxy xcor + 2 ycor wait .004

  ask turtles with [name = "bad"] [ set  x-cor2 xcor  set y-cor2 ycor ]
      damage2] die]
    wait .3
   ask turtles with [w1 = 1] [
    set shape "bg5.7" wait .1
    set shape "bg5.6" wait .1
    set shape "bg5.5" wait .1
    set shape "bg5.4" wait .1
    set shape "bg5.3" wait .1
    set shape "bg5.2" wait .1
    set shape "bg5" wait .1]
end





;Hitboxes and Damage stuff
;Hitboxes and Damage stuff
;Hitboxes and Damage stuff
;Hitboxes and Damage stuff
;Hitboxes and Damage stuff
to damage1
  ask turtles with [name = "goku"] [ set xcor x-cor set ycor y-cor]
  ask turtles with [shape = "powerball1"]
  [
    if (distancexy x-cor y-cor) < 20 [set gokuhp gokuhp - 1]]
end

to damage2

  ask turtles with [shape = "powerball2"]
  [
      if (distancexy x-cor2 y-cor2) < 15 [set badhp badhp - 1 set shape "explosion" set size size + 10 set xp xp + 1 wait .5 die]]
end
to lose
  if gokuhp = 0 [ask turtles with [name = "goku"] [set shape "circle"]]
end

to AI
  ask turtles with [name = "goku"] [set aix xcor set aiy ycor]
  ask turtles with [name = "bad"] [
    if xcor >  aix [set xcor xcor - .0013]
     if xcor <  aix [set xcor xcor + .0013]
     if ycor >  aiy [set ycor ycor - .0013]
 if ycor <  aiy [set ycor ycor + .0013]
    if distancexy aix aiy < .5 [set gokuhp gokuhp - 1 set shape "explosion" set size 120 wait 1 die]]
end














@#$#@#$#@
GRAPHICS-WINDOW
210
10
1260
501
-1
-1
2.0
1
10
1
1
1
0
0
0
1
-260
260
-120
120
0
0
1
ticks
30.0

BUTTON
44
60
164
93
Press this first
start1
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
24
504
114
549
NIL
mouse-xcor
2
1
11

MONITOR
22
567
111
612
NIL
mouse-ycor
2
1
11

CHOOSER
32
407
170
452
Level
Level
"Level-1" "Level-2" "Level-3"
0

MONITOR
1298
25
1354
70
Score
show score
17
1
11

BUTTON
61
255
148
288
Fly/Jump
up
NIL
1
T
OBSERVER
NIL
W
NIL
NIL
1

BUTTON
9
306
99
339
Move Left
left-
NIL
1
T
OBSERVER
NIL
A
NIL
NIL
1

BUTTON
108
307
208
340
Move Right
right-
NIL
1
T
OBSERVER
NIL
D
NIL
NIL
1

BUTTON
316
582
455
615
NIL
71, 173, -21, -76
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
214
526
277
559
work
ca\nask patches [set pcolor 85]\ncrt 1 [ set shape \"bg1\" set color 29 set size 80]\nwait .3\nask turtles [\nset shape \"bg2.2\" wait .1\nset shape \"bg2.3\" wait .1\nset shape \"bg2.4\" wait .1\nset shape \"bg2.5\" wait .1\nset shape \"bg2.6\" wait .1\nset shape \"bg2.7\" wait .1\nset shape \"bg2.8\" wait .1\n] \n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
71
346
137
379
Down
down
NIL
1
T
OBSERVER
NIL
S
NIL
NIL
1

BUTTON
72
216
147
249
shoot
shoot1
NIL
1
T
OBSERVER
NIL
C
NIL
NIL
1

TEXTBOX
36
116
186
201
NOTE: Make sure you click the white portion of the screen for your movement buttons to work!
14
0.0
0

MONITOR
826
604
899
649
NIL
badhp
17
1
11

BUTTON
74
15
149
48
Restart
ca
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

bg1
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 181 142 228 121 235 137 186 159
Polygon -6459832 true true 229 120 236 136 228 139 222 124 229 121
Polygon -2674135 true false 128 142 81 121 74 137 123 159
Polygon -6459832 true true 81 121 74 137 82 140 88 125 81 122
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 94 126 87 142 95 145 101 130 94 127
Polygon -5825686 true false 218 125 225 141 217 144 211 129 218 126

bg1.2
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 181 143 231 126 235 142 186 160
Polygon -6459832 true true 229 126 236 142 228 145 222 130 229 127
Polygon -2674135 true false 132 136 81 92 67 111 124 148
Polygon -6459832 true true 79 95 67 111 78 116 87 98 77 92
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 88 99 77 118 87 122 95 107 89 100
Polygon -5825686 true false 221 127 228 143 220 146 214 131 221 128

bg1.3
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 180 136 237 135 238 152 185 153
Polygon -6459832 true true 236 131 238 150 231 152 229 135 236 132
Polygon -2674135 true false 133 137 89 81 75 98 125 149
Polygon -6459832 true true 87 84 75 100 86 105 95 87 85 81
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 94 90 83 109 93 113 101 98 95 91
Polygon -5825686 true false 228 132 230 150 223 150 221 136 228 133

bg1.4
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 181 142 244 155 241 175 186 159
Polygon -6459832 true true 242 155 243 175 233 174 234 154 240 155
Polygon -2674135 true false 134 139 126 70 112 77 123 156
Polygon -6459832 true true 128 70 110 76 110 83 128 83 126 69
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 130 84 112 87 113 99 132 95 129 83
Polygon -5825686 true false 233 156 234 171 221 171 223 152 232 154

bg1.5
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 180 147 243 171 244 190 185 164
Polygon -6459832 true true 244 168 244 188 233 187 236 166 244 169
Polygon -2674135 true false 134 147 192 81 177 71 122 144
Polygon -6459832 true true 182 88 165 81 175 72 193 81 183 88
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 162 93 174 99 184 89 167 83 160 93
Polygon -5825686 true false 234 166 234 186 224 181 227 164 236 168

bg1.6
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 181 142 251 169 244 185 186 159
Polygon -6459832 true true 249 168 248 185 237 181 239 166 247 167
Polygon -2674135 true false 140 144 209 103 200 88 126 134
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 239 167 237 182 227 180 232 163 238 166
Polygon -5825686 true false 193 91 200 107 192 110 186 95 193 92
Polygon -6459832 true true 202 87 209 103 201 106 195 91 202 88

bg1.7
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 185 145 243 175 240 194 186 163
Polygon -6459832 true true 241 194 241 193 230 190 232 174 242 173
Polygon -2674135 true false 158 142 231 113 226 99 144 132
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 236 169 232 187 222 185 225 168 233 168
Polygon -5825686 true false 216 101 223 117 215 120 209 105 216 102
Polygon -6459832 true true 224 98 231 114 223 117 217 102 224 99

bg1.8
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 181 143 247 178 241 197 186 160
Polygon -6459832 true true 244 178 242 191 232 191 234 175 244 176
Polygon -2674135 true false 165 150 238 121 233 107 151 140
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 235 172 233 189 216 182 223 170 234 173
Polygon -5825686 true false 222 109 229 125 221 128 215 113 222 110
Polygon -6459832 true true 229 105 236 121 228 124 222 109 229 106
Polygon -6459832 true true 244 121
Polygon -2674135 true false 238 169 244 187 247 173 258 184 254 170 270 175 262 162 276 162 266 154 276 153 266 143 278 143 268 134 276 128 264 123 273 113 261 113 261 103 256 109 250 102 247 110 241 105 240 116 235 112 229 121 235 131 227 133 237 140 230 143 240 149 237 157 244 157 238 166
Polygon -2674135 true false 255 146

bg2.2
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 129 146 79 129 75 145 124 163
Polygon -6459832 true true 79 129 72 145 80 148 86 133 79 130
Polygon -2674135 true false 168 136 219 92 233 111 176 148
Polygon -6459832 true true 221 95 233 111 222 116 213 98 223 92
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 212 99 223 118 213 122 205 107 211 100
Polygon -5825686 true false 86 131 79 147 87 150 93 135 86 132

bg2.3
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 129 138 72 137 71 154 124 155
Polygon -6459832 true true 72 134 70 153 77 155 79 138 72 135
Polygon -2674135 true false 167 137 211 81 225 98 175 149
Polygon -6459832 true true 213 84 225 100 214 105 205 87 215 81
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 206 90 217 109 207 113 199 98 205 91
Polygon -5825686 true false 79 136 77 154 84 154 86 140 79 137

bg2.4
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 132 141 69 154 72 174 127 158
Polygon -6459832 true true 72 154 71 174 81 173 80 153 74 154
Polygon -2674135 true false 166 139 174 70 188 77 177 156
Polygon -6459832 true true 172 70 190 76 190 83 172 83 174 69
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 170 84 188 87 187 99 168 95 171 83
Polygon -5825686 true false 82 154 81 169 94 169 92 150 83 152

bg2.5
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 126 148 63 172 62 191 121 165
Polygon -6459832 true true 62 170 62 190 73 189 70 168 62 171
Polygon -2674135 true false 166 147 108 81 123 71 178 144
Polygon -6459832 true true 118 88 135 81 125 72 107 81 117 88
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 138 93 126 99 116 89 133 83 140 93
Polygon -5825686 true false 73 166 73 186 83 181 80 164 71 168

bg2.6
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 131 140 61 167 68 183 126 157
Polygon -6459832 true true 63 166 64 183 75 179 73 164 65 165
Polygon -2674135 true false 160 144 91 103 100 88 174 134
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 74 163 76 178 86 176 81 159 75 162
Polygon -5825686 true false 107 91 100 107 108 110 114 95 107 92
Polygon -6459832 true true 98 87 91 103 99 106 105 91 98 88

bg2.7
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 129 142 71 172 74 191 128 160
Polygon -6459832 true true 72 189 72 188 83 185 81 169 71 168
Polygon -2674135 true false 142 142 69 113 74 99 156 132
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 79 165 83 183 93 181 90 164 82 164
Polygon -5825686 true false 84 101 77 117 85 120 91 105 84 102
Polygon -6459832 true true 76 98 69 114 77 117 83 102 76 99

bg2.8
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -11221820 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -11221820 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -2674135 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -2674135 true false 125 141 59 176 65 195 125 160
Polygon -6459832 true true 59 178 61 191 71 191 69 175 59 176
Polygon -2674135 true false 135 150 62 121 67 107 149 140
Rectangle -5825686 true false 120 206 190 213
Polygon -2674135 true false 163 215 177 279 197 275 182 213
Polygon -2674135 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -16777216 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -16777216 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -7500403 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -7500403 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -5825686 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -5825686 true false 70 170 72 187 89 180 82 168 71 171
Polygon -5825686 true false 78 109 71 125 79 128 85 113 78 110
Polygon -6459832 true true 71 105 64 121 72 124 78 109 71 106
Polygon -6459832 true true 244 121
Polygon -2674135 true false 62 169 56 187 53 173 42 184 46 170 30 175 38 162 24 162 34 154 24 153 34 143 22 143 32 134 24 128 36 123 27 113 39 113 39 103 44 109 50 102 53 110 59 105 60 116 65 112 71 121 65 131 73 133 63 140 70 143 60 149 63 157 56 157 62 166
Polygon -2674135 true false 255 146

bg5
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 181 142 228 121 235 137 186 159
Polygon -6459832 true true 229 120 236 136 228 139 222 124 229 121
Polygon -955883 true false 128 142 81 121 74 137 123 159
Polygon -6459832 true true 81 121 74 137 82 140 88 125 81 122
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 94 126 87 142 95 145 101 130 94 127
Polygon -13791810 true false 218 125 225 141 217 144 211 129 218 126

bg5.2
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 181 142 228 121 235 137 186 159
Polygon -6459832 true true 229 120 236 136 228 139 222 124 229 121
Polygon -955883 true false 128 142 81 121 74 137 123 159
Polygon -6459832 true true 81 121 74 137 82 140 88 125 81 122
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 94 126 87 142 95 145 101 130 94 127
Polygon -13791810 true false 218 125 225 141 217 144 211 129 218 126

bg5.3
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 180 136 237 135 238 152 185 153
Polygon -6459832 true true 236 131 238 150 231 152 229 135 236 132
Polygon -955883 true false 133 137 89 81 75 98 125 149
Polygon -6459832 true true 87 84 75 100 86 105 95 87 85 81
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 94 90 83 109 93 113 101 98 95 91
Polygon -13791810 true false 228 132 230 150 223 150 221 136 228 133

bg5.4
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 181 142 244 155 241 175 186 159
Polygon -6459832 true true 242 155 243 175 233 174 234 154 240 155
Polygon -955883 true false 134 139 126 70 112 77 123 156
Polygon -6459832 true true 128 70 110 76 110 83 128 83 126 69
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 130 84 112 87 113 99 132 95 129 83
Polygon -13791810 true false 233 156 234 171 221 171 223 152 232 154

bg5.5
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 180 147 243 171 244 190 185 164
Polygon -6459832 true true 244 168 244 188 233 187 236 166 244 169
Polygon -955883 true false 134 147 192 81 177 71 122 144
Polygon -6459832 true true 182 88 165 81 175 72 193 81 183 88
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 162 93 174 99 184 89 167 83 160 93
Polygon -13791810 true false 234 166 234 186 224 181 227 164 236 168

bg5.6
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 181 142 251 169 244 185 186 159
Polygon -6459832 true true 249 168 248 185 237 181 239 166 247 167
Polygon -955883 true false 140 144 209 103 200 88 126 134
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 239 167 237 182 227 180 232 163 238 166
Polygon -13791810 true false 193 91 200 107 192 110 186 95 193 92
Polygon -6459832 true true 202 87 209 103 201 106 195 91 202 88

bg5.7
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 185 145 243 175 240 194 186 163
Polygon -6459832 true true 241 194 241 193 230 190 232 174 242 173
Polygon -955883 true false 158 142 231 113 226 99 144 132
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 236 169 232 187 222 185 225 168 233 168
Polygon -13791810 true false 216 101 223 117 215 120 209 105 216 102
Polygon -6459832 true true 224 98 231 114 223 117 217 102 224 99

bg5.8
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 181 143 247 178 241 197 186 160
Polygon -6459832 true true 244 178 242 191 232 191 234 175 244 176
Polygon -955883 true false 165 150 238 121 233 107 151 140
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 235 172 233 189 216 182 223 170 234 173
Polygon -13791810 true false 222 109 229 125 221 128 215 113 222 110
Polygon -6459832 true true 229 105 236 121 228 124 222 109 229 106
Polygon -6459832 true true 244 121
Polygon -13791810 true false 238 169 244 187 247 173 258 184 254 170 270 175 262 162 276 162 266 154 276 153 266 143 278 143 268 134 276 128 264 123 273 113 261 113 261 103 256 109 250 102 247 110 241 105 240 116 235 112 229 121 235 131 227 133 237 140 230 143 240 149 237 157 244 157 238 166
Polygon -2674135 true false 255 146

bg6
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 131 140 61 167 68 183 126 157
Polygon -6459832 true true 63 166 64 183 75 179 73 164 65 165
Polygon -955883 true false 160 144 91 103 100 88 174 134
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 74 163 76 178 86 176 81 159 75 162
Polygon -13791810 true false 107 91 100 107 108 110 114 95 107 92
Polygon -6459832 true true 98 87 91 103 99 106 105 91 98 88

bg6.7
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 129 142 71 172 74 191 128 160
Polygon -6459832 true true 72 189 72 188 83 185 81 169 71 168
Polygon -955883 true false 142 142 69 113 74 99 156 132
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 79 165 83 183 93 181 90 164 82 164
Polygon -13791810 true false 84 101 77 117 85 120 91 105 84 102
Polygon -6459832 true true 76 98 69 114 77 117 83 102 76 99

bg6.8
false
3
Rectangle -6459832 true true 126 45 179 111
Rectangle -16777216 true false 165 59 175 73
Rectangle -16777216 true false 138 138 161 152
Rectangle -16777216 true false 130 60 140 74
Rectangle -16777216 true false 143 90 162 99
Rectangle -6459832 true true 145 111 161 131
Rectangle -6459832 true true 123 124 188 214
Polygon -955883 true false 142 125 154 146 164 127 190 127 188 213 123 213 123 126 142 127
Polygon -1 true false 145 275
Polygon -955883 true false 125 141 59 176 65 195 125 160
Polygon -6459832 true true 59 178 61 191 71 191 69 175 59 176
Polygon -955883 true false 135 150 62 121 67 107 149 140
Rectangle -13791810 true false 120 206 190 213
Polygon -955883 true false 163 215 177 279 197 275 182 213
Polygon -955883 true false 148 215 134 279 114 275 129 213
Polygon -955883 true false 48 75
Polygon -1184463 true false 115 274 101 286 132 286 132 280 130 275 118 273
Polygon -1184463 true false 194 274 208 286 177 286 177 280 179 275 191 273
Polygon -16777216 true false 123 64 107 31 122 41 145 1 180 37 188 32 181 62 180 47 130 45 126 45 126 66
Polygon -16777216 true false 122 48 128 8 141 30 172 6 173 44 194 13 182 54 177 57 169 50 157 60 152 67 151 49 139 57 125 43
Polygon -13791810 true false 125 127 145 128 154 146 162 129 188 128 188 124 124 125
Polygon -13791810 true false 70 170 72 187 89 180 82 168 71 171
Polygon -13791810 true false 78 109 71 125 79 128 85 113 78 110
Polygon -6459832 true true 71 105 64 121 72 124 78 109 71 106
Polygon -6459832 true true 244 121
Polygon -13791810 true false 62 169 56 187 53 173 42 184 46 170 30 175 38 162 24 162 34 154 24 153 34 143 22 143 32 134 24 128 36 123 27 113 39 113 39 103 44 109 50 102 53 110 59 105 60 116 65 112 71 121 65 131 73 133 63 140 70 143 60 149 63 157 56 157 62 166
Polygon -2674135 true false 255 146

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

cloud
false
0
Circle -7500403 true true 13 118 94
Circle -7500403 true true 86 101 127
Circle -7500403 true true 51 51 108
Circle -7500403 true true 118 43 95
Circle -7500403 true true 158 68 134

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

dot
false
0
Circle -7500403 true true 90 90 120

exp-0
false
0
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120

exp-1
false
3
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120

exp-10
false
2
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120
Rectangle -7500403 true false 120 105 135 120
Rectangle -7500403 true false 105 105 120 120
Rectangle -7500403 true false 90 105 105 120
Rectangle -7500403 true false 75 105 90 120

exp-2
false
3
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120

exp-3
false
3
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120

exp-4
false
4
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120

exp-5
false
2
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 150 105 165 120

exp-6
false
5
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120

exp-7
false
2
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120
Rectangle -7500403 true false 120 105 135 120

exp-8
false
3
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120
Rectangle -7500403 true false 120 105 135 120
Rectangle -7500403 true false 105 105 120 120

exp-9
false
2
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120
Rectangle -7500403 true false 120 105 135 120
Rectangle -7500403 true false 105 105 120 120
Rectangle -7500403 true false 90 105 105 120

explosion
true
0
Polygon -7500403 true true 150 135
Polygon -1184463 true false 105 30 90 90 60 75 75 120 60 150 75 150 60 195 75 195 90 240 105 210 135 240 165 195 225 225 195 180 255 180 195 150 255 135 180 120 210 90 150 90 150 45 135 60 105 30
Polygon -2674135 true false 105 150 90 180 120 180 120 210 135 195 150 195 150 180 180 165 165 150 180 135 150 120 150 90 135 120 105 90 105 150

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

go!
true
0
Rectangle -6459832 true false 57 74 252 179
Rectangle -6459832 true false 75 90 225 165
Rectangle -7500403 true true 120 105 135 120
Rectangle -7500403 true true 120 90 135 105
Rectangle -7500403 true true 105 90 120 105
Rectangle -7500403 true true 90 90 105 105
Rectangle -7500403 true true 75 90 90 105
Rectangle -7500403 true true 75 105 90 120
Rectangle -7500403 true true 75 120 90 135
Rectangle -7500403 true true 75 135 90 150
Rectangle -7500403 true true 75 150 90 165
Rectangle -7500403 true true 90 150 105 165
Rectangle -7500403 true true 90 150 105 165
Rectangle -7500403 true true 90 150 105 165
Rectangle -7500403 true true 180 150 195 165
Rectangle -7500403 true true 180 150 195 165
Rectangle -7500403 true true 165 150 180 165
Rectangle -7500403 true true 150 150 165 165
Rectangle -7500403 true true 150 135 165 150
Rectangle -7500403 true true 150 120 165 135
Rectangle -7500403 true true 150 105 165 120
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 105 135 120 150
Rectangle -7500403 true true 120 135 135 150
Rectangle -7500403 true true 120 150 135 165
Rectangle -7500403 true true 195 150 210 165
Rectangle -7500403 true true 105 150 120 165
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 150 90 165 105
Rectangle -7500403 true true 195 135 210 150
Rectangle -7500403 true true 195 120 210 135
Rectangle -7500403 true true 195 105 210 120
Rectangle -7500403 true true 195 90 210 105
Rectangle -7500403 true true 180 90 195 105
Rectangle -7500403 true true 165 90 180 105
Rectangle -7500403 true true 195 90 210 105
Rectangle -7500403 true true 195 90 210 105
Rectangle -7500403 true true 195 90 210 105
Rectangle -7500403 true true 195 90 210 105
Rectangle -7500403 true true 225 150 240 165
Rectangle -7500403 true true 195 120 210 135
Rectangle -7500403 true true 225 120 240 135
Rectangle -7500403 true true 225 105 240 120
Rectangle -7500403 true true 225 90 240 105

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

hp
false
0
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120

hp-1
false
3
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120

hp-10
false
2
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120
Rectangle -7500403 true false 120 105 135 120
Rectangle -7500403 true false 105 105 120 120
Rectangle -7500403 true false 90 105 105 120
Rectangle -7500403 true false 75 105 90 120

hp-2
false
3
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120

hp-3
false
3
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120

hp-4
false
4
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120

hp-5
false
2
Rectangle -11221820 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 150 105 165 120

hp-6
false
5
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120

hp-7
false
2
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120
Rectangle -7500403 true false 120 105 135 120

hp-8
false
3
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120
Rectangle -7500403 true false 120 105 135 120
Rectangle -7500403 true false 105 105 120 120

hp-9
false
2
Rectangle -13840069 true false 75 105 225 120
Line -16777216 false 120 105 120 120
Line -16777216 false 225 105 225 120
Line -16777216 false 75 105 75 120
Line -16777216 false 210 105 210 120
Line -16777216 false 195 105 195 120
Line -16777216 false 180 105 180 120
Line -16777216 false 165 105 165 120
Line -16777216 false 150 105 150 120
Line -16777216 false 135 105 135 120
Line -16777216 false 105 105 105 120
Line -16777216 false 105 105 105 120
Line -16777216 false 90 105 90 120
Rectangle -7500403 true false 210 105 225 120
Rectangle -7500403 true false 195 105 210 120
Rectangle -7500403 true false 180 105 195 120
Rectangle -7500403 true false 165 105 180 120
Rectangle -7500403 true false 135 105 150 120
Rectangle -7500403 true false 150 105 165 120
Rectangle -7500403 true false 120 105 135 120
Rectangle -7500403 true false 105 105 120 120
Rectangle -7500403 true false 90 105 105 120

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

powerball1
false
0
Circle -11221820 true false 0 0 300
Circle -13345367 true false 33 33 234
Circle -8630108 true false 63 63 175

powerball2
false
0
Circle -1184463 true false 0 0 300
Circle -955883 true false 33 33 234
Circle -2674135 true false 63 63 175

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

top score
false
0
Rectangle -6459832 true false 1 2 301 257
Rectangle -7500403 true true 60 30 105 45
Rectangle -7500403 true true 75 45 90 90
Rectangle -7500403 true true 215 28 229 92
Rectangle -7500403 true true 230 29 245 44
Rectangle -7500403 true true 230 29 245 44
Rectangle -7500403 true true 230 29 245 44
Rectangle -7500403 true true 230 29 245 44
Rectangle -7500403 true true 230 29 245 44
Rectangle -7500403 true true 230 29 245 44
Rectangle -7500403 true true 35 134 50 149
Rectangle -7500403 true true 241 54 256 69
Rectangle -7500403 true true 230 56 245 71
Rectangle -7500403 true true 241 43 256 58
Rectangle -7500403 true true 241 29 256 44
Rectangle -7500403 true true 5 194 20 209
Rectangle -7500403 true true 170 179 185 194
Rectangle -7500403 true true 35 179 50 194
Rectangle -7500403 true true 20 194 35 209
Rectangle -7500403 true true 20 164 35 179
Rectangle -7500403 true true 5 149 20 164
Rectangle -7500403 true true 170 164 185 179
Rectangle -7500403 true true 125 179 140 194
Rectangle -7500403 true true 125 164 140 179
Rectangle -7500403 true true 230 149 245 164
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 155 134 170 149
Rectangle -7500403 true true 125 149 140 164
Rectangle -7500403 true true 95 194 110 209
Rectangle -7500403 true true 80 194 95 209
Rectangle -7500403 true true 65 179 80 194
Rectangle -7500403 true true 65 164 80 179
Rectangle -7500403 true true 65 149 80 164
Rectangle -7500403 true true 95 134 110 149
Rectangle -7500403 true true 80 134 95 149
Rectangle -7500403 true true 20 134 35 149
Rectangle -7500403 true true 230 164 245 179
Rectangle -7500403 true true 215 134 230 149
Rectangle -7500403 true true 200 194 215 209
Rectangle -7500403 true true 200 179 215 194
Rectangle -7500403 true true 200 164 215 179
Rectangle -7500403 true true 200 149 215 164
Rectangle -7500403 true true 200 134 215 149
Rectangle -7500403 true true 155 194 170 209
Rectangle -7500403 true true 140 194 155 209
Rectangle -7500403 true true 170 149 185 164
Rectangle -7500403 true true 215 164 230 179
Rectangle -7500403 true true 230 194 245 209
Rectangle -7500403 true true 215 179 230 194
Rectangle -7500403 true true 230 134 245 149
Rectangle -7500403 true true 259 194 274 209
Rectangle -7500403 true true 259 178 274 193
Rectangle -7500403 true true 258 164 273 179
Rectangle -7500403 true true 258 149 273 164
Rectangle -7500403 true true 287 194 302 209
Rectangle -7500403 true true 274 194 289 209
Rectangle -7500403 true true 272 164 287 179
Rectangle -7500403 true true 285 134 300 149
Rectangle -7500403 true true 270 134 285 149
Rectangle -7500403 true true 258 134 273 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 140 134 155 149
Rectangle -7500403 true true 170 29 185 44
Rectangle -7500403 true true 170 44 185 59
Rectangle -7500403 true true 170 59 185 74
Rectangle -7500403 true true 170 74 185 89
Rectangle -7500403 true true 155 74 170 89
Rectangle -7500403 true true 140 74 155 89
Rectangle -7500403 true true 125 74 140 89
Rectangle -7500403 true true 125 59 140 74
Rectangle -7500403 true true 125 44 140 59
Rectangle -7500403 true true 155 29 170 44
Rectangle -7500403 true true 140 29 155 44
Rectangle -7500403 true true 125 29 140 44

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

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
