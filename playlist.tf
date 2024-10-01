data "spotify_search_track" "korn" {
  artist = "Korn"
  limit = 5
}

data "spotify_search_track" "slipknot" {
  artist = "slipknot"
  limit = 4
}

data "spotify_search_track" "BMTH" {
  artist = "Bring Me The Horizon"
  limit = 4
}

data "spotify_search_track" "skillet" {
  artist = "Skillet"
  limit = 2
}

data "spotify_track" "Doomed" {
    spotify_id = "3lPn81PFyKvXiyHhlkwkQ4"
}

data "spotify_track" "Happy_song" {
    spotify_id = "1yYE8EyuIV0rrvQ1bA2Fyf"
}

data "spotify_track" "TrueFriends" {
    spotify_id = "1KTJmfwrk5pYqsi9mkY3nT"
}

data "spotify_search_track" "RiseAgainst" {
  artist = "Rise Against"
  limit = 4
}

data "spotify_search_track" "SOAD" {
  artist = "System of A Down"
  limit = 3
}

data "spotify_search_track" "Mudvayne" {
  artist = "Mudvayne"
  limit = 5
}

data "spotify_search_track" "Sum41" {
  artist = "Sum 41"
  limit = 5
}

data "spotify_search_track" "PapaRoach" {
  artist = "Papa Roach"
  limit = 2
}

data "spotify_search_track" "BBA" {
  artist = "Black Bomb A"
  limit = 2
}

resource "spotify_playlist" "Metal" {
  name = "Metal"
  tracks = flatten([
    data.spotify_search_track.korn.tracks[*].id,
    data.spotify_search_track.slipknot.tracks[*].id,
    data.spotify_search_track.BMTH.tracks[*].id,
    data.spotify_track.Doomed.spotify_id,
    data.spotify_track.Happy_song.spotify_id,
    data.spotify_track.TrueFriends.spotify_id,
    data.spotify_search_track.skillet.tracks[*].id,
    data.spotify_search_track.RiseAgainst.tracks[*].id,
    data.spotify_search_track.Mudvayne.tracks[*].id,
    data.spotify_search_track.SOAD.tracks[*].id,
    data.spotify_search_track.Sum41.tracks[*].id,
    data.spotify_search_track.PapaRoach.tracks[*].id,
    data.spotify_search_track.BBA.tracks[*].id,
    ])
}
