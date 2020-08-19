class CreateArtistsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :stage_name
      t.integer :popularity
      t.boolean :like
    end
  end
end
