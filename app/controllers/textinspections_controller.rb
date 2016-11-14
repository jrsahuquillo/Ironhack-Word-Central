class TextinspectionsController < ApplicationController
  def new
    render 'new'
  end

  def create
    # ***** New *****
    @text = params[:text_inspection][:user_text]
    # ***** New *****
    @word_count = @text.split(" ").length
    # ***** Updated *****
    #render plain: @word_count
    @reading_time = @word_count/275
    render "results"
  end

end
