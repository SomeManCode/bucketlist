class DestinationsController < ApplicationController

    def index
        @destination = Destination.all
    end


    def create
        @destination = Destination.new(params[:destination])
        @destination.save!
        render @destination
    end


end
