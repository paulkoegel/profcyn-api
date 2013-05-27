class SessionsController < ApplicationController

  respond_to :json

  # def new
  #   flash.keep if params[:keep_flash]
  #   redirect_to current_user.dashboard_path if current_user.present?
  # end

  def create
    if user = login(params[:email], params[:password])
      render nothing: true, status: 200
      # redirect_back_or_to user.dashboard_path, notice: I18n.t('user.notice.login_successful')
    else
      #@email = params[:email]
      # flash.now[:error] = I18n.t('user.notice.login_unsuccessful')
      # render :new
      render nothing: true, status: 422
    end
  end

  # def destroy
  #   logout
  #   redirect_back_or_to root_url
  # end

end
