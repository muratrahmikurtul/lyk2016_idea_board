class IdeasController < ApplicationController
  def new

  end

  def index

    @ideas = Idea.all

  end
end
