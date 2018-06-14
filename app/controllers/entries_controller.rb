class EntriesController < ApplicationController

  def index
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
  end

  def create
    redirect_to entries_url
  end

end
