# flappy_bird
GD50 project 1

## the pause function
 ive created a PauseState function and changed the PlayState:init function to PlayState:enter(params) so the bird, pipePairs, timer and score from PlayState can be passed to PauseState and back.

changing from CountdownState to PlayState:
```lua
gStateMachine:change('play',{
    bird = Bird(),
    pipePairs = {},
    timer = 0,
    score = 0
    })
 end
```

changing from PauseState to PlayState:
