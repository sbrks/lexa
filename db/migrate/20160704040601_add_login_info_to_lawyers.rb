class AddLoginInfoToLawyers < ActiveRecord::Migration
  def change
  	add_column :lawyers, :phone, :string
  	add_column :lawyers, :description, :string
  	add_column :lawyers, :image_url, :string

  end
end
