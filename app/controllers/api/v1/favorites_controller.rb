class Api::V1::FavoritesController < ApplicationController

  def index
    @favorites_albums = current_user.favorites.where(favoritable_type: "Album").map(&:favoritable)
    @favorites_songs = current_user.favorites.where(favoritable_type: "Song").map(&:favoritable)
    @favorites_artists = current_user.favorites.where(favoritable_type: "Artist").map(&:favoritable)
  end

end
