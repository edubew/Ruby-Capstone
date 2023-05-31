# frozen_string_literal: true

module SaveMusicAlbum
  def save_music_album(music_albums)
    music_album_arr = []
    music_albums.each do |music_album|
      music_album_arr << {
        on_spotify: music_album.on_spotify,
        publish_date: music_album.publish_date
      }
    end
    return if music_album_arr.empty?

    file_exist('music_album')
    File.write('./data/music_album.json', JSON.pretty_generate(music_album_arr))
  end
end