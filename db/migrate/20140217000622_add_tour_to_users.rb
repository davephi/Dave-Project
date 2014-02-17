class AddTourToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :tour, index: true
  end
end
