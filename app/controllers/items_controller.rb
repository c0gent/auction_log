class ItemsController < ApplicationController
	def new
		@item = Item.new
	end

	def create
		@item = Item.new(params[:item].permit(:name))

		if @item.save
			redirect_to items_path
		else
			render 'new'
		end
	end

	def show
		@item = Item.find(params[:id])
	end

	def index
		@item = Item.all
	end

	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])

		if @item.update(params[:item].permit(:name))
			redirect_to items_path
		else
			render 'edit'
		end
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy

		redirect_to items_path
	end


	private
		def item_params
			params.require(:item).permit(:name)
		end

end
