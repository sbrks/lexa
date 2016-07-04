class AddLawyerIdToClients < ActiveRecord::Migration
  def change
  	change_table :clients do |c|
  		c.references :lawyer, index: true, foreign_key: true
  	end
  end
end
