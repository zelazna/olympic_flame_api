# frozen_string_literal: true

# handle the request for getting or creating the polls
class PollsController < ApplicationController
  before_action :authenticate_user
  # render a json object with the aggregation of name of the flame_path
  # with the number of votes
  def index
    results = Poll.joins(:flame_path).group('flame_paths.name').count
    render json: results.to_json
  end

  # Create a Poll object with the post params and returns it
  # otherwise return an json errors array
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
