class SellersController < ApplicationController

  def index
    @sellers = Seller.all
  end

  def show
    @seller = Seller.find(params[:id])

  end

  def new
    @seller = Seller.new
  end

  def create
    @seller = self.new
    @seller.name = params[:seller][:name]
    @seller.name = params[:seller][:rating]
    @seller.name = params[:seller][:membership_type]
    @seller.save
    redirect_to seller_path(@seller.id)
  end

  def edit
    @seller = Seller.find(params[:id])
  end


  def update
    @seller = Seller.find(params[:id])
    @seller.update(name: params[:seller][:name],
       rating: params[:seller][:rating],
        membership_type: params[:seller][:membership_type])
    redirect_to seller_path(@seller.id)
  end

  def destroy
    @seller = Seller.find(params[:id])
    @seller.destroy
    redirect_to sellers_path
  end

  private

  def seller_params
    params.require(:seller).permit(:name, :rating, :membership_type)
  end
end
