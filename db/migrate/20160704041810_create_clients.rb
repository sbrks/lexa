class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :location
      t.text :description
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :image_url

      t.timestamps null: false
    end
  end
end
