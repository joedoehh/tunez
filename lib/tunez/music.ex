defmodule Tunez.Music do
  use Ash.Domain,
    otp_app: :tunez

  resources do
    resource Tunez.Music.Artist do
      define :create_artist, action: :create
      define :destroy_artist, action: :destroy
      define :get_artist_by_id, action: :read, get_by: :id
      define :read_artists, action: :read
      define :update_artist, action: :update
    end
  end
end
