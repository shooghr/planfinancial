module RequestHelpers
  def request_login
    before(:each) do
      Warden.test_mode!
      @current_member = Member.first || FactoryGirl.create(:member)
      login_as(@current_member, scope: :member)
    end

    after(:each) do
      Warden.test_reset!
    end
  end

  def request_logout
    logout(:member)
  end
end
