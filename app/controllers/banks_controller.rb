class BanksController < ApplicationController
  def index
    @banks = current_user.banks.all
  end

  def show
  end
end
