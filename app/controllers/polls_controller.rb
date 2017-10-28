class PollsController < ApplicationController
  def index
    results = Poll.joins(:flame_path).group('flame_paths.name').count
    render json: results.to_json
  end

  def create
    poll = Poll.new(
      email: params[:email],
      fb_id: params[:fb_id],
      flame_path_id: params[:flame_path_id]
    )
    if poll.save
      render json: poll.to_json
    else
      render json: poll.errors.messages.to_json
    end
  end
end
