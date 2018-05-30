require("pry")
require_relative("models/artist")
require_relative("models/album")

Album.delete_all()
Artist.delete_all()

artist1 = Artist.new({'name' => 'Ed Sheeran'})
artist2 = Artist.new({'name' => 'George Ezra'})
artist1.save()
artist2.save()

album1 = Album.new({
  'title' => 'Divide',
  'genre' => 'Pop',
  'artist_id' => artist1.id
  })

album2 = Album.new({
  'title' => 'Budapest',
  'genre' => 'Pop',
  'artist_id' => artist2.id
  })

album3 = Album.new({
  'title' => 'Multiply',
  'genre' => 'Pop',
  'artist_id' => artist1.id
  })

album1.save()
album2.save()
album3.save()

artist1_album = artist1.list_all_albums()

album1_artist = album1.show_artist()

album3.genre  = 'Hip-hop'
album3.update()

artist1_find = Artist.find(artist1.id)


binding.pry
nil
