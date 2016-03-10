class CreateUsertasks < ActiveRecord::Migration
  def change
    create_table :usertasks do |t|
      t.string :description
      t.date :due

      t.timestamps null: false
    end
  end
end
