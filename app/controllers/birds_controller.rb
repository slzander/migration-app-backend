class BirdsController < ApplicationController
    def index
        birds = Bird.all 
        render json: birds, include:[:locations]
    end

    def update
        mappedBirds = params[:mappedBirds]
        Bird.all.map do |bird|
            if mappedBirds.include?(bird.id)
               bird.update(on_map: true)
            else
                bird.update(on_map: false)
            end
        end
    end
end
