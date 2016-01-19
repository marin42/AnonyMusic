json.array!(@songs) do |song|
  json.extract! song, :id, :key, :comment, :url
  json.url song_url(song, format: :json)
end
