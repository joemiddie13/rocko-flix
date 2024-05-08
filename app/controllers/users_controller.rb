class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |format|
      format.html
      format.json { render json: @users }
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      respond_to do |format|
        format.html { redirect_to @user, notice: "Thanks for creating an account!" }
        format.json { render json: @user, status: :created }
      end
    else
      respond_to do |format|
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @user = User.find_by(id: params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      respond_to do |format|
        format.html { redirect_to @user, notice: "Account successfully updated!" }
        format.json { render json: @user }
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user.destroy
      session[:user_id] = nil
      respond_to do |format|
        format.html { redirect_to movies_url, status: :see_other, alert: "Account successfully deleted!" }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to @user, alert: "Failed to delete account." }
        format.json { render json: { error: "Failed to delete account" }, status: :unprocessable_entity }
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

