class StaticController < ApplicationController
  before_action :set_event, only: [:show]
  def show
    render params[:page]
  end

  def set_event
    @email = ENV['EMAIL']
  end
end