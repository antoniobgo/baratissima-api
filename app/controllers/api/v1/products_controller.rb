class Api::V1::ProductsController < ActionController::API

  def index
    products = Product.all
    products = products.map do |product|
      { id: product.id, name: product.name }
    end
    render json: { results: products }.to_json, status: :ok
  end
  
  def create
    product = Product.new(product_params)
    if product.save
      render json: {status: 'SUCCESS', message: 'Saved', data:product}, status: :ok
    else 
      render json: { status: 'ERROR', message: 'not saved', data:product.errors }, status: :unprocessable_entity
    end
  end

  private
  def product_params
    params.permit(:name)
  end
end