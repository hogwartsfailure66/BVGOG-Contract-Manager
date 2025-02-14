require 'rails_helper'
require 'auth_helper'

RSpec.describe "users/show", type: :view do
  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers
  include FactoryBot::Syntax::Methods

  before(:each) do
    login_user
    @user = FactoryBot.create(:user)
  end

  it "renders attributes in <p>" do
    render
  end

end
