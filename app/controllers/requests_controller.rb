class RequestsController < ApplicationController
  def index
    @requests = Request.all
    # @users = User.all
    @businesses = Business.all
  end

  def new
    @business = Business.find(params[:business_id])
    # @user = User.find(params[:user_id])
    @request = @business.requests.new
    # @request = @user.requests.new
  end

  def show
    @businesses = Business.all
    @users = User.all
    # @requests = Request.all
  end

  def create
    @business = Business.find(params[:business_id])
    @request = @business.requests.new(request_params)
    if @request.save
      redirect_to business_path(@request.business)
    end

    # @user = User.find(params[:user_id])
    # @request = @user.requests.new(request_params)
    # if @request.save
    #   redirect_to user_path(@request.user)
    # end
  end

  def edit
    @business = Business.find(params[:business_id])
    @request = @business.requests.find(params[:id])
    # @user = User.find(params[:user_id])
    # @request = @user.requests.find(params[:id])
  end

  def update
    @business = Business.find(params[:business_id])
    @request = @business.requests.find(params[:id])
      if @request.update(request_params)
        redirect_to business_path(@request.business)
      else
        render :edit
      end

    # @user = User.find(params[:user_id])
    # @request = @user.requests.find(params[:id])
    #   if @request.update(request_params)
    #     redirect_to user_path(@request.user)
    #   else
    #     render :edit
    #   end
    end

  def destroy
    @business = Business.find(params[:business_id])
    @request = Request.find(params[:id])
    @request.destroy
    redirect_to business_path(@request.business)

    # @user = User.find(params[:user_id])
    # @request = Request.find(params[:id])
    # @request.destroy
    # redirect_to user_path(@request.user)
  end

  private
    def request_params
      params.require(:request).permit(:interval, :date)
    end
end
