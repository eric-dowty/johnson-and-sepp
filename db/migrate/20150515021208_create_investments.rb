class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.integer :invested_amount
    end
  end
end
