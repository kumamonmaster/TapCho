class MoniesController < ApplicationController
  before_action :authenticate_user!
  
  def show
    @bank = current_user.banks.find(params[:bank_id])
    @money = Money.find(params[:id])
    @total = total_moeny
    @diff = diff_money
  end

  def countup
    render nothing: true
    @money = Money.find(params[:id])
    money_name = params[:name]
    case money_name
    when "money1"
      @money.money1 += 1
    when "money5"
      @money.money5 += 1
    when "money10"
      @money.money10 += 1
    when "money50"
      @money.money50 += 1
    when "money100"
      @money.money100 += 1
    when "money500"
      @money.money500 += 1
    when "money1000"
      @money.money1000 += 1
    when "money2000"
      @money.money2000 += 1
    when "money5000"
      @money.money5000 += 1
    when "money10000"
      @money.money10000 += 1
    end
    @money.save
  end

  def countdown
    @bank = current_user.banks.find(params[:bank_id])
    @money = Money.find(params[:id])
    @money_name = params[:name]

    case @money_name
    when "money1"
      @money.money1 -= 1
    when "money5"
      @money.money5 -= 1
    when "money10"
      @money.money10 -= 1
    when "money50"
      @money.money50 -= 1
    when "money100"
      @money.money100 -= 1
    when "money500"
      @money.money500 -= 1
    when "money1000"
      @money.money1000 -= 1
    when "money2000"
      @money.money2000 -= 1
    when "money5000"
      @money.money5000 -= 1
    when "money10000"
      @money.money10000 -= 1
    end
    @money.save
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
