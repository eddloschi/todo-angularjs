class ItemsController < ApplicationController
  def show
    @items = Item.all
    render json: @items
  end

  def create
    @item = Item.create params[:item]

    if @item.valid?
      render json: @item
    else
      render json: @item.errors.to_json, status: 400
    end
  end

  def update
    @item = Item.find params[:_id]

    @item.description = params[:description]
    @item.done = params[:done]

    if @item.save
      render json: @item
    else
      render json: @item.errors.to_json, status: 400
    end
  end
end
