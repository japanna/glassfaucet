class ProductsController < ApplicationController

	def new
		@product = Product.new
	end


	def index
		@products = Product.all
	end


	def show
		@product = Product.find(params[:id])
	end

	

	def create
		#render plain: params[:product].inspect
		@product = Product.new(product_params)

		# store file name of front image in db
		@product.front_img  = params[:product][:front_img].original_filename
		# if there was a side image, store it
		if params[:product][:side_img]
			@product.side_img  = params[:product][:side_img].original_filename
		end

		if @product.save
			# upload front image
			uploadFront
			# upload side image if exists
			if params[:product][:side_img]
				uploadSide
			end
			redirect_to @product
		else
		render 'new'
		end
	end

	


	def edit
  		@product = Product.find(params[:id])
	end


	def update
		@product = Product.find(params[:id])

		if @product.update(product_params)
			redirect_to @product
		else
			render 'edit'
		end
	end


	def destroy
		@product = Product.find(params[:id])
		@product.destroy

		redirect_to products_path
	end


	def uploadFront
  		uploaded_io = params[:product][:front_img]
  		File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
    	file.write(uploaded_io.read)
  		end
	end

	def uploadSide
	  		uploaded_io = params[:product][:side_img]
	  		File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
	    	file.write(uploaded_io.read)
	  end
	end


private
	def product_params
    	params.require(:product).permit(:item, :serialno, :totalheightinches, :color, :price, :description, 
    		:twist_type, :opacity, :spout_height_in, :projection, :major_diameter, :hardware_finish)
  end
  	
end
