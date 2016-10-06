class Director < ActiveRecord::Base
  has_many :films

  def average_sales
    films.average(:box_office_sales)
  end

  def to_currency
    sprintf('%.2f', average_sales)
  end

end
