require 'open-uri'

class FlatsController < ApplicationController
  def index
    # @flats = Flat.all
    # render index.html.erb
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    json = URI.open(url).read
    @flats = JSON.parse(json)
  end

  def show
    url = 'https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json'
    json = URI.open(url).read
    @flats = JSON.parse(json)
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end
end
