# frozen_string_literal: true

# retrive music album data from music_album.json file
module LoadMusicAlbum
  def load_music_album
    music_albums = []

    return music_albums unless File.exist?('./data/music_album.json')

    file = File.open('./data/music_album.json')
    data = JSON.parse(file.read)
    data.each do |music_album|
      music_albums << MusicAlbum.new(music_album['on_spotify'], music_album['publish_date'])
    end
    file.close
    music_albums
  end
end
