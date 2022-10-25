local suit = require 'suit'

local Scene = {}

function Scene.load()
    
end

function Scene.update(dt)
    suit.layout:reset(295,50)

    suit.Label("Are you ready to play?", {align = "center" }, suit.layout:row(200,50))

    suit.layout:row(200,25)

    if suit.Button("Start a match", suit.layout:row(200,50)).hit then
        SM.load("ListenPage")
    end

    suit.layout:row(200,20)

    if suit.Button("Connect to a friend", suit.layout:row(200,50)).hit then
        SM.load("ConnectPage")
    end

    suit.layout:row(200,20)

    if suit.Button("Quit", suit.layout:row(200,50)).hit then
        love.event.quit(0)
    end
end

function Scene.draw()
    love.graphics.setBackgroundColor(103/255, 153/255, 199/255, 1.0)
    suit.draw()
end

return Scene