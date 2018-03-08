class CreateTodo < ActiveRecord::Migration
  def change
  	create_table :todos do |t|
  		t.string :importance
  		t.string :nom
  		t.string :description
  		t.date :datetime
  		t.timestamps :null => true
     end
  end
end
