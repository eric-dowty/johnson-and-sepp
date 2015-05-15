class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :address_line
      t.string :city
      t.string :state
      t.string :zipcode
      t.integer :total_cost, default: 0
      t.integer :funded, default: 0
      t.boolean :discontinue, default: false
      t.date :projected_completion
      t.timestamps
    end
  end
end
