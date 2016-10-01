class MoniesController < ApplicationController
  def show
    @bank = current_user.banks.find(params[:bank_id])
    @money = Money.find(params[:id])
    @total = total_moeny
    @diff = diff_money
  end

  private
    def total_moeny
      money = Money.find(params[:id])
      money1 = money.money1
      money5 = money.money5 * 5
      money10 = money.money10 * 10
      money50 = money.money50 * 50
      money100 = money.money100 * 100
      money500 = money.money500 * 500
      money1000 = money.money1000 * 1000
      money2000 = money.money2000 * 2000
      money5000 = money.money5000 * 5000
      money10000 = money.money10000 * 10000

      sum = money1 + money5 + money10 + money50 + money100 + money500 + money1000 + money2000 + money5000 + money10000
    end

    def diff_money
      diff = @bank.goal - @total unless @bank.goal.blank?
    end
end
