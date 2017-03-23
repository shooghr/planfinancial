module ControllerHelpers
  def login
    before(:each) do
      member = FactoryGirl.create(:member)
      member.nil? ? create_and_authenticate(controller) : authenticate(controller, member)
      sign_in member
    end
  end

  def create_and_authenticate(controller)
    allow(request.env['warden']).to receive(:authenticate!).and_throw(:warden, scope: :member)
    allow(controller).to receive(:current_member).and_return(nil)
  end

  def authenticate(controller, member)
    allow(request.env['warden']).to receive(:authenticate!).and_return(member)
    allow(controller).to receive(:current_member).and_return(member)
  end
end
