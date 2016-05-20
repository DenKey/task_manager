class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  respond_to :json,:html

  def angular
    render 'layouts/application'
  end

  rescue_from StandardError do |e|
    render json: { message: 'Server error' }, status: 500
    logger.error e.inspect
    e.backtrace.each { |line| logger.error(line) }
  end

  rescue_from ActiveRecord::RecordInvalid do |e|
    render json: { message: message || e.message }, status: :unprocessable_entity
    logger.error e.inspect
    e.backtrace.each { |line| logger.error(line) }
  end

  rescue_from RuntimeError do |e|
    render json: { message: e.message }, status: :unprocessable_entity
    logger.error e.inspect
    e.backtrace.each { |line| logger.error(line) }
  end

end
