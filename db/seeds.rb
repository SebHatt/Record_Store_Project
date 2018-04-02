require_relative('../models/album')
require_relative('../models/artist')

artist1 = Artist.new({'name' => 'The Ramones'})
artist2 = Artist.new({'name' => 'Wire'})
artist3 = Artist.new({'name' => 'Black Flag'})
artist4 = Artist.new({'name' => 'Nirvana'})
artist5 = Artist.new({'name' => 'The Upsetters'})
artist6 = Artist.new({'name' => 'Scientist'})
artist7 = Artist.new({'name' => 'Mad Professor'})
artist8 = Artist.new({'name' => 'A Tribe Called Quest'})
artist9 = Artist.new({'name' => 'Kendrick Lamar'})
artist10 = Artist.new({'name' => 'J Dilla'})

artist1.save
artist2.save
artist3.save
artist4.save
artist5.save
artist6.save
artist7.save
artist8.save
artist9.save
artist10.save
