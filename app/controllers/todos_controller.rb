class TodosController < ApplicationController
    def create
      todo=Todo.create(
           name: params[:name],
           description: params[:description],
           duration: params[:duration],
           complete: params[:complete]
           ) 
           redirect_to "/todos/#{todo.id}"
    end
    def index
        @code_word="#{params[:code]} #{params[:word]}"
    end
        #{params[:word]}"
    def show
        id = params[:id]
        if id=='1'
            @todo={
                id:id,
                name: 'Do homework',
                duration: 60
            }
        elsif id=='2'
        
        @todo={
            id: params[:id],
            name: 'Wake up at 8am',
            description: 'Mon to Fri',
            duration: 15
            }
        else
            @todo={}
        end
    end
end
