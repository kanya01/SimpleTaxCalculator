require "test_helper"

class TaxCalculatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tax_calculators_new_url
    assert_response :success
  end

  test "should get result" do
    get tax_calculators_result_url
    assert_response :success
  end
end
