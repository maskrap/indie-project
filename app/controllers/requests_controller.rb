class RequestsController < ApplicationController
  def new
    @business = Business.find(params[:business_id])
    @request = @business.requests.new

  end

  def show
    @businesses = Business.all
    @requests = Request.all
  end

  def create
    @business = Business.find(params[:business_id])
    @request = @business.requests.new(request_params)
    if @request.save
      redirect_to business_path(@request.business)
    end
  end

  def edit
    @business = Business.find(params[:business_id])
    @request = @business.requests.find(params[:id])
  end

  def update
    @business = Business.find(params[:business_id])
    @request = @business.requests.find(params[:id])
      if @request.update(request_params)
        redirect_to business_path(@request.business)
      else
        render :edit
      end
  end

  def destroy
    @business = Business.find(params[:business_id])
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to business_path(@request.business)
  end

  private
    def request_params
      params.require(:request).permit(:interval, :date)
    end
end
