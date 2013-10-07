class SalesController < ApplicationController
	def new
		@sale = Sale.new
	end

	def create
		@sale = Sale.new(params[:sale].permit(:item_name, :sold_price, :date, :quality))

		if @sale.save
			redirect_to sales_path
		else
			render 'new'
		end
	end

	def show
		@sale = Sale.find(params[:id])
	end

	def index
		@sale = Sale.limit(20).order('id DESC')
	end

	def edit
		@sale = Sale.find(params[:id])
	end

	def update
		@sale = Sale.find(params[:id])

		if @sale.update(params[:sale].permit(:item_name, :sold_price, :date, :quality))
			redirect_to sales_path
		else
			render 'edit'
		end
	end

	def destroy
		@sale = Sale.find(params[:id])
		@sale.destroy

		redirect_to sales_path
	end


	private
		def sale_params
			params.require(:sale).permit(:item_name, :sold_price, :date, :quality)
		end

end
