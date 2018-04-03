require_relative('../models/album')
require_relative('../models/artist')

Artist.delete_all()
Album.delete_all()

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

album1 = Album.new({
  'title' => 'Pleasant Dreams',
  'genre' => 'Punk',
  'cost_price' => 8,
  'retail_price' => 12,
  'stock_level' => 10,
  'artist_id' => artist1.id
  })

  album2 = Album.new({
    'title' => 'Brain Drain',
    'genre' => 'Punk',
    'cost_price' => 7,
    'retail_price' => 11,
    'stock_level' => 3,
    'artist_id' => artist1.id
    })

    album3 = Album.new({
      'title' => 'Pink Flag',
      'genre' => 'Punk',
      'cost_price' => 10,
      'retail_price' => 16,
      'stock_level' => 7,
      'artist_id' => artist2.id
      })

      album4 = Album.new({
        'title' => 'What The...',
        'genre' => 'Punk',
        'cost_price' => 8,
        'retail_price' => 14,
        'stock_level' => 4,
        'artist_id' => artist3.id
        })

        album5 = Album.new({
          'title' => 'Nevermind',
          'genre' => 'Punk',
          'cost_price' => 10,
          'retail_price' => 17,
          'stock_level' => 15,
          'artist_id' => artist4.id
          })

          album6 = Album.new({
            'title' => 'In Utero',
            'genre' => 'Punk',
            'cost_price' => 9,
            'retail_price' => 15,
            'stock_level' => 2,
            'artist_id' => artist4.id
            })

            album7 = Album.new({
              'title' => 'Super Ape',
              'genre' => 'Dub',
              'cost_price' => 10,
              'retail_price' => 14,
              'stock_level' => 6,
              'artist_id' => artist5.id
              })

              album8 = Album.new({
                'title' => 'Scientist Rids the World of the Evil Curse of the Vampires',
                'genre' => 'Dub',
                'cost_price' => 12,
                'retail_price' => 18,
                'stock_level' => 8,
                'artist_id' => artist6.id
                })

                album9 = Album.new({
                  'title' => 'No Protection (Massive Attack v Mad Professor)',
                  'genre' => 'Dub',
                  'cost_price' => 8,
                  'retail_price' => 12,
                  'stock_level' => 1,
                  'artist_id' => artist7.id
                  })

                  album10 = Album.new({
                    'title' => 'Peoples Instinctive Travels and the Paths of Rhythm',
                    'genre' => 'Hip-Hop',
                    'cost_price' => 7,
                    'retail_price' => 10,
                    'stock_level' => 11,
                    'artist_id' => artist8.id
                    })

                    album11 = Album.new({
                      'title' => 'Beats, Rhymes and Life',
                      'genre' => 'Hip-Hop',
                      'cost_price' => 9,
                      'retail_price' => 15,
                      'stock_level' => 13,
                      'artist_id' => artist8.id
                      })

                      album12 = Album.new({
                        'title' => 'Good Kid, M.A.A.D City',
                        'genre' => 'Hip-Hop',
                        'cost_price' => 10,
                        'retail_price' => 17,
                        'stock_level' => 4,
                        'artist_id' => artist9.id
                        })

                        album13 = Album.new({
                          'title' => 'To Pimp a Butterfly ',
                          'genre' => 'Hip-Hop',
                          'cost_price' => 11,
                          'retail_price' => 17,
                          'stock_level' => 7,
                          'artist_id' => artist9.id
                          })

                          album14 = Album.new({
                            'title' => 'Damn',
                            'genre' => 'Hip-Hop',
                            'cost_price' => 14,
                            'retail_price' => 20,
                            'stock_level' => 18,
                            'artist_id' => artist9.id
                            })

                            album15 = Album.new({
                              'title' => 'Donuts',
                              'genre' => 'Hip-Hop',
                              'cost_price' => 11,
                              'retail_price' => 15,
                              'stock_level' => 4,
                              'artist_id' => artist10.id
                              })

                              album1.save
                              album2.save
                              album3.save
                              album4.save
                              album5.save
                              album6.save
                              album7.save
                              album8.save
                              album9.save
                              album10.save
                              album11.save
                              album12.save
                              album13.save
                              album14.save
                              album15.save
