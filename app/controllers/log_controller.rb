# frozen_string_literal: true

class LogController < ApplicationController
  before_action :authorize, only: %i[index show]
  def index
    @log = Log.sorted
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def show
    @log = Log.sorted
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  def log_params
    params.require(:log).permit(:requestor_name, :requestor_email, :type_, :item_name, :item_quantity, :check_in)
  end
end
