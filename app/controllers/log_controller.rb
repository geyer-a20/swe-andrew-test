# frozen_string_literal: true

class LogController < ApplicationController
  def index
    @log = Log.sorted
    respond_to do |format|
    format.xlsx {
        response.headers[
            'Content-Disposition'
            ] = "attachment; filename='items.xlsx'"
          }
      format.html { render :index }
    end
  end

  def show
    @log = Log.sorted
  end

  def log_params
    params.require(:log).permit(:requestor_name, :requestor_email, :type_, :item_name, :item_quantity, :check_in)
  end
end
