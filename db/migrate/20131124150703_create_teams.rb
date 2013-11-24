class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.text :description
      t.date :enroll_date
      t.references :sport

      t.timestamps
    end
  end
end
