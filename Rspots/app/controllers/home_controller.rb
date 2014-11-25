class HomeController < ApplicationController
  before_action :is_authenticated
  before_action :current_user
  def index
  end

  def about
  end

  def faq
  end
end
