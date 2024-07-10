class TaxCalculatorForm
  include ActiveModel::Model

  attr_accessor :income

  validates :income, presence: true, numericality: { greater_than_or_equal_to: 0 }

  def initialize(attributes = {})
    super
    @income = attributes[:income].to_f if attributes[:income].present?
  end

  def calculate_tax
    return 0 unless valid?

    Calculator.new(income).calculate_tax
  end
end
