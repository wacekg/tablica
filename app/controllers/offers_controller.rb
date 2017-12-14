class OffersController < ApplicationController
  before_action :set_offer, except: [:index, :new, :create]
  def index
    @offers = Offer.all.order(created_at: :desc)
  end
  def new
    @offer = Offer.new
  end
  def create
    @offer = Offer.create(offer_params)
  end
  def edit
  end
  def update
    @offer.update_attributes(offer_params)
  end
  def show
  end
  def destroy
    @offer.destroy
    redirect_to action "index"
  end

  private
  def offer_params
    params.require(:offer).permit(:title, :content, :price)
  end
  def set_offer
    @offer = Offer.find(params[:id])
  end
end
