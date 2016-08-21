class CouponsController < ApplicationController
  before_action :find_coupon, only: :show

  def index
    @coupons = Coupon.all
  end

  def show
  end

  def new
  end

  def create
    @coupon = Coupon.create(coupon_code: params[:coupon_code], store: params[:store])
    redirect_to coupon_path(@coupon)
  end

  private

  def find_coupon
    @coupon = Coupon.find(params[:id])
  end


end
