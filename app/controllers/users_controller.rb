# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :require_login

  def profile
    @user = User.new(user_params)
  end

  private

  def user_params
    current_user.slice(:nickname, :name, :picture, :updated_at, :email, :email_verified, :sub)
  end

  # def profile
  #   @user = User.new(
  #     nickname: 'Customer',
  #     name: 'One Customer',
  #     picture: 'https://cdn.auth0.com/blog/hello-auth0/auth0-user.png',
  #     updated_at: '2021-05-04T21:33:09.415Z',
  #     email: 'customer@example.com',
  #     email_verified: false,
  #     sub: 'auth0|12345678901234567890'
  #   )
  # end
end
