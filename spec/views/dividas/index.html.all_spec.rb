require 'rails_helper'

RSpec.describe "dividas/index", type: :view do
  before(:each) do
    assign(:dividas, [
      Divida.create!(
        :nome => "Nome",
        :tipo => "Tipo"
      ),
      Divida.create!(
        :nome => "Nome",
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of dividas" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
