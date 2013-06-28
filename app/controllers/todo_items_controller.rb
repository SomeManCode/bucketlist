class TodoItemsController < ApplicationController

    def index
        @items = TodoItem.all
    end

    def create
        @item = TodoItem.new(params[:todo_item])
        @item.save!
        render @item
        # render :template => 'todo_items/create', :content_type => 'text/javascript????'
        #  local => ????????
    end

    def like

        #submits data but does not render anything 
        render :nothing => true
    end
end


