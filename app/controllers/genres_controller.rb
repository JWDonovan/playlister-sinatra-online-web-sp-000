class GenresController < ApplicationController
  get "/genres" do
    @genres = Genre.all
    erb :"genres/index"
  end

  get "/artists/:slug" do
    @artist = Artist.find_by_slug(params[:slug])
    erb :"artists/show"
  end
end
