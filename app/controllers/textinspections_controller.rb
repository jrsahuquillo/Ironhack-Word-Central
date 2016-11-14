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
    word_frequency
  end

  def word_frequency
    @text = params[:text_inspection][:user_text]
    word_counter = @text.split(" ")
    frequency = Hash.new(0)
    word_counter.each {|word| frequency[word.downcase] +=1}
    @sorted_frequent_words = frequency.sort_by {|word, value| -value}[0..10]
    render "results"
  end

end
