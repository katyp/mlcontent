class ContentController < ApplicationController
  def index
    @asset_path = "comics/xkcd/november_2016_2x.png"
    @good_url = "http://google.com"
  end
end
