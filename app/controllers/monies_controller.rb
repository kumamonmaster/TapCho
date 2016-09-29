class MoniesController < ApplicationController
  def show
    @bank = current_user.banks.find(params[:bank_id])
    @money = Money.find(params[:id])
  end
end
