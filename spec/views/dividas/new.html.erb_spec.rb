require 'rails_helper'

RSpec.describe "dividas/new", type: :view do
  before(:each) do
    assign(:divida, Divida.new(
      :nome => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders new divida form" do
    render

    assert_select "form[action=?][method=?]", dividas_path, "post" do

      assert_select "input#divida_nome[name=?]", "divida[nome]"

      assert_select "input#divida_tipo[name=?]", "divida[tipo]"
    end
  end
end
