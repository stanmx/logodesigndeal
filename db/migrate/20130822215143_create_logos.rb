class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.string :title
      t.text :description
      t.string :image
      t.boolean :home
      t.boolean :carrousel
      t.boolean :slider

      t.timestamps
    end
  end
end
