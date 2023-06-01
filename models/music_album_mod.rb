# frozen_string_literal: true

module MusicAlbumMod
  def add_music_album
    print 'Is it on spotify? [Y/N]: '
    on_spotify = gets.chomp.downcase
    puts 'Enter publish date (yyyy-MM-dd): '
    publish_date = gets.chomp
    on_spotify = on_spotify == 'y'

    music_album = MusicAlbum.new(on_spotify, publish_date)
    music_album.move_to_archive?
    @music_albums << music_album

    puts 'Successfully added musical album'
    SaveData.new.save_music_album(@music_albums)
  end

  def display_music_album
    @music_albums.each do |music_album|
      if music_album.on_spotify == true
        is_on_spotify = 'Yes'
      else
        is_on_spotify = 'No'
      end
      print "on spotify: #{is_on_spotify}, "
      print " Plublished On: #{music_album.publish_date}\n"
    end
  end
end
