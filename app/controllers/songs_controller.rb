class SongsController < ApplicationController
  get "/songs" do
    @songs = Song.all
    erb :"songs/index"
  end

  get "/genres/:slug" do
    @genre = Genre.find_by_slug(params[:slug])
    erb :"genres/show"
  end
end
