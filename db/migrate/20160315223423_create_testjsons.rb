class CreateTestjsons < ActiveRecord::Migration
  def change
    create_table :testjsons do |t|
      t.string :title
      t.datetime :start
      t.datetime :end
      t.string :requestor

      t.timestamps null: false
    end
  end
end
