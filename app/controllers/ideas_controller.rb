class IdeasController < ApplicationController
  def new

  end

  def index

    @ideas = Idea.all

  end

  def show
    @idea = Idea.find(params[:id])
  end
end
