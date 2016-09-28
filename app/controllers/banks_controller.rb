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

  def create
    @bank = current_user.banks.build(bank_params)
    if @bank.save
      redirect_to user_banks_path
    else
      render :new
    end
  end

  def edit
    @bank = current_user.banks.find(params[:id])
  end

  private
    def bank_params
      params.require(:bank).permit(:title, :goal, :user_id)
    end
end
