class BanksController < ApplicationController
  before_action :authenticate_user!
  def index
    @banks = current_user.banks.all
  end

  def show
  end

  def new
    @bank = Bank.new
  end
end
