class CreateMemberTable < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :first_name
      t.integer :age
      t.integer :family_id
    end
  end
end
