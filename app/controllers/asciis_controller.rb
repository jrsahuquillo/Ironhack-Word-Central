class AsciisController < ApplicationController
  def new
    render 'new'
  end

  def create

    textintoascii = params[:text_into_ascii][:user_text]
    artii = Artii::Base.new :font => 'slant'
    @textartii = artii.asciify(textintoascii)
    render 'view'
  end
end
