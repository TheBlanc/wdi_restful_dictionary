class EntriesController < ApplicationController

  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new

    @entry.word = params[:entry][:word]
    @entry.language = params[:entry][:language]
    @entry.definition = params[:entry][:definition]

    save_success = @entry.save

    if save_success
      redirect_to entry_url(@entry)
    else
      redirect_to new_entry_url
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])

    @entry.word = params[:entry][:word]
    @entry.language = params[:entry][:language]
    @entry.definition = params[:entry][:definition]

    save_success = @entry.save

    if save_success
      redirect_to entry_url
    else
      redirect_to new_entry_url
    end
  end

  def destroy
    @entry = Entry.find(params[:id])

    @entry.destroy

    redirect_to entries_url
  end

end
