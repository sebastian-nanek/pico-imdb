class CreateActors < ActiveRecord::Migration[7.0]
  def change
    create_table :actors do |t|
      t.string :first_name
      t.string :last_name
      t.string :nationality
      t.text :bio

      t.timestamps
    end
  end
end
