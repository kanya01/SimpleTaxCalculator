
class TaxCalculatorsController < ApplicationController

  def new
    @form =TaxCalculatorForm.new
  end

  def result
    @form = TaxCalculatorForm.new(income_params)
    if @form.valid?
      @tax = @form.calculate_tax
    else
      render :new
    end
  end

private

  def income_params
    params.permit(:income)
  end
    # income = params[:income].to_f
    # calculator = Calculator.new(income)
    # @tax = calculator.calculate_tax
  end
