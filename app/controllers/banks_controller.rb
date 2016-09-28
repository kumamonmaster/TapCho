class BanksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_bank, only: [:show, :edit, :update, :destroy]

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
  end

  def update
    if @bank.update_attributes(bank_params)
      redirect_to user_bank_path(@bank)
    else
      render :edit
    end
  end

  def destroy
    @bank.destroy
    redirect_to user_banks_path
  end

  private
    def bank_params
      params.require(:bank).permit(:title, :goal)
    end

    def set_bank
      @bank = current_user.banks.find(params[:id])
    end
end
