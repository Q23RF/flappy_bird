# flappy_bird
GD50 project 1

## the pause function

### what i did
i added a PauseState and changed the PlayState:init function to PlayState:enter(params) so the bird, pipePairs, timer and score from PlayState can be passed to PauseState and back.

### what went wrong
the value of the four parameters seem lost/changed as they go from states to states. according to an error message, the pipePairs couldn't be rendered in PlayState bc it's a nil value (but not the empty table entered from CountdownState). 

### the code

CountdownState to PlayState:
```lua
gStateMachine:change('play',{
    bird = Bird(),
    pipePairs = {},
    timer = 0,
    score = 0
    })
 end
```

PauseState to PlayState:
```lua
gStateMachine:change('play',{
    bird = self.bird,
    pipePairs = self.pipePairs,
    timer = self.timer,
    score = self.score			
		  })
```

---
## 0908 update
i implemented the pause function using the way i learned in breakout (self.paused and stuff) and it worked! also i  guess my way didnt work bc there is already a PlayState:enter()in the program for restarting the game after death! might try to fix that later but im just gonna submit the version with self.paused and move on to project 2.
