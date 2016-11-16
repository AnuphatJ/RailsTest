class CreateAnuphats < ActiveRecord::Migration
  def change
    create_table :anuphats do |t|
      t.string :login

      t.timestamps null: false
    end
  end
end
