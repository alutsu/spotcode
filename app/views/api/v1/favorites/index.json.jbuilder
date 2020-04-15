json.songs @favorites_songs.each do |song|
  json.id song.id
  json.title song.title
  json.artist_name song.album.artist.name
  json.file_url url_for(song.file)
end

json.artists @favorites_artists.each do |artist|
  json.id artist.id
  json.name artist.name
  json.photo url_for(artist.photo)
end

json.albums @favorites_albums.each do |albums|
  json.id albums.id
  json.title albums.title
  json.artist_name albums.artist.name
  json.cover url_for(albums.cover)
end