PauseState = Class{__includes = BaseState}

function PauseState:enter(params)
	self.bird = params.bird
	self.pipePairs = params.pipePairs
	self.timer = params.timer
	self.score= params.score
end

function PauseState:update()
	if love.keyboard.wasPressed('p') then
		gStateMachine:change('play',{
            bird = self.bird,
            pipePairs = self.pipePairs,
            timer = self.timer,
            score = self.score			
		})
	end
end

function PauseState:render()
	pauseImage = love.graphics.newImage('pause.png')
	love.graphics.draw(pauseImage, 0, 120, VIRTUAL_WIDTH, 'center')
end