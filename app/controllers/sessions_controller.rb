# frozen_string_literal: true

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_email(params[:email])
    if user&.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end
      session[:user_id] = user.id
      redirect_to(transactions_path, notice: 'Logged in!')
    else
      flash.now[:alert] = 'Email or password is invalid'
      render('new')
    end
  end

  def destroy
    cookies.delete(:auth_token)
    session[:user_id] = nil
    redirect_to(root_url, notice: 'Logged out!')
  end

  # <%= f.form_group do %>
  # <%= f.check_box :remember_me %>
  # <% end %>
end
