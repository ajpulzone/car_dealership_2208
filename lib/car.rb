class Car
  attr_reader :make, :monthly_payment, :loan_length, :color

  def initialize(make, monthly_payment, loan_length, color = nil)
    @make = make
    @monthly_payment = monthly_payment
    @loan_length = loan_length
    @color = color
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color
  end

end
