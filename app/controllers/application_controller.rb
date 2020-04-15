class ApplicationController < ActionController::Base
  before_action :authenticate_user!, unless: -> { request.env['PATH_INFO'] == '/' }
  protect_from_forgery unless: -> { request.format.json? }

  def after_sign_in_path_for(resource)
    '/discovery'
  end

  def create
    current_user.favorites.create(
      favoritable_type: params[:favoritable_type],
      favoritable_id: params[:id]
    )

    head :ok
  end

  def destroy
    @favoritable = current_user.favorites.find_by(
      favoritable_type: params[:favoritable_type],
      favoritable_id: params[:id]
    )

    @favoritable.destroy

    head :ok
  end
end
