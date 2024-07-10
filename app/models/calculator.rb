class Calculator
    TAX_BRACKETS = [
        { threshold: 14000, rate: 0.105 },
        { threshold: 48000, rate: 0.175 },
        { threshold: 70000, rate: 0.3 },
        { threshold: 180000, rate: 0.33 },
        { threshold: Float::INFINITY, rate: 0.39 }
     #Each threshold corresponds to the upper limit of that tax bracket, and the rates are cumulative 
     #this way we can handle any income beyond the threshold.  
    ]
    
    def initialize(income)
      @income = income
    end

    def calculate_tax
      tax = 0
      previous_threshold = 0

      TAX_BRACKETS.each do |bracket|
        if @income > previous_threshold
          taxable_income = [@income, bracket[:threshold]].min - previous_threshold
          tax += taxable_income * bracket [:rate]
          previous_threshold = bracket[:threshold]

          #here we iterate through each tax bracket checking if if @income is greater than previous_threshold 
          #taxable income is therefore calculated using the minimum of @income and the current bracket's threshold minus previous_threshold.

        else
            break
        end
      end

      tax
    end
end



