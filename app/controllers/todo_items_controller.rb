class TodoItemsController < ApplicationController

    def index
        @items = TodoItem.all
    end

    def show
        @item = TodoItem.find(params[:id])
    end

    def create
        @item = Item.new(params[:item])
        @item.save!
        render @item
    end
end


