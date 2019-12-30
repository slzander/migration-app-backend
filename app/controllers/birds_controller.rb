class BirdsController < ApplicationController
    def index
        birds = Bird.all 
        render json: birds, include:[:locations]
    end
end
