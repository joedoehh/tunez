defmodule Tunez.Music.Artist do
  use Ash.Resource,
    otp_app: :tunez,
    domain: Tunez.Music,
    data_layer: AshPostgres.DataLayer

  attributes do
      uuid_primary_key :id
      
      attribute :name, :string do
        allow_nil? false
      end

      attribute :biography, :string 

      create_timestamp :inserted_at
      update_timestamp :updated_at
  end   
  
  actions do
    defaults [:create, :destroy, :read, :update]
    default_accept [:name, :biography]      
  end

  postgres do
    table "artists"
    repo Tunez.Repo
  end  
end