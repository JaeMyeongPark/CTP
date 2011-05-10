class CreateIdioms < ActiveRecord::Migration
  def self.up
    create_table :idioms do |t|
      t.string :idiom
      t.string :description
      t.integer :tag

      t.timestamps
    end
  end

  def self.down
    drop_table :idioms
  end
end
