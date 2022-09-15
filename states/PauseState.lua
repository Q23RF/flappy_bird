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
	love.graphics.setFont(hugeFont)
    love.graphics.printf("PAUSED", 0, (VIRTUAL_HEIGHT - ground:getHeight()) / 2  - hugeFont:getHeight() / 2, VIRTUAL_WIDTH, 'center')

    for k, pair in pairs(self.pipePairs) do
        pair:render()
    end
	self.bird:render()
end