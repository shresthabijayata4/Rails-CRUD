class Journal < ApplicationRecord
belongs_to :user

validates :title, presence: true   
validates :amount, presence: true, numericality: {:greater_than => 0}   
validates :cashin_out, presence: true 

def self.total_expense
    Journal.where(cashin_out: "Cash-out").sum(:amount)
  end

  def self.total_income
    Journal.where(cashin_out:"Cash-in").sum(:amount)
  end

  def self.user_total_income(user_id)
    Journal.where(user_id:user_id , cashin_out:"Cash-in").sum(:amount)
  end

  def self.user_total_expense(user_id)
    Journal.where(user_id:user_id , cashin_out:"Cash-out").sum(:amount)
  end

end
