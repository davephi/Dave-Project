class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.string :time
      t.string :guide
      t.string :size

      t.timestamps
    end
  end
end
