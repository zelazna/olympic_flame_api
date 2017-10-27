class PollsController < ApplicationController
    def index
       render json: Poll.all.to_json
    end

    def create
        # TODO
    end
end
