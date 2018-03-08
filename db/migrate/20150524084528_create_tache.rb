class CreateTache < ActiveRecord::Migration
  def change
  	create_table :taches do |tache|
  		tache.string :importance
  		tache.string :nom
  		tache.string :description
  		tache.date :datetime
  		tache.timestamps :null => true
     end
  end
end
