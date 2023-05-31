# frozen_string_literal: true

module MusicAlbumMod
  def add_music_album
    print 'Is it on spotify? [Y/N]: '
    on_spotify = gets.chomp
    puts 'Enter publish data (yyyy-MM-dd): '
    publish_data = gets.chomp.downcase
    on_spotify = true if on_spotify == 'y'

    music_album = MusicAlbum.new(on_spotify, publish_data)
    @music_albums << music_album
    puts 'Successfully added musical album'
  end

  def display_music_album
    puts 'display musical album'
  end
end
