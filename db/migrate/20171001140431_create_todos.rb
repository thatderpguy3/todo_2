class CreateTodos < ActiveRecord::Migration
  def update
    todo= Todo.find(params[:id])
    todo.update(
    name: params[:name],
    description: params[:description],
    duration: params[:duration],
    complete: params[:complete]
    ) 
     redirect_to "/todos/#{todo.id}"
  end
  def change
    create_table :todos do |t|
      t.string :name
      t.string :description
      t.integer :duration
      t.boolean :complete
    end
  end
end
