require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def home
    render 'home'
  end
end
