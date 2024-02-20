require "open-uri"

class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ("a".."z").to_a.sample }

  end

  def score
    @word = params[:word]

    url = "https://wagon-dictionary.herokuapp.com/#{@word}"
    response = URI.parse(url)
    json = JSON.parse(response.read)
    json["found"]
    raise
  end
end
