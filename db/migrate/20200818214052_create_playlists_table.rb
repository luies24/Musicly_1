class CreatePlaylistsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :playlists do |t|
      t.boolean :like
      t.references :song
      t.references :artist
    end
  end
end
