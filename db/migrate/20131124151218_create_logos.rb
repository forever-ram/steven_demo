class CreateLogos < ActiveRecord::Migration
  def change
    create_table :logos do |t|
      t.references :imageable, :polymorphic => true

      t.timestamps
    end
    add_attachment :logos, :logo_image
  end
end
