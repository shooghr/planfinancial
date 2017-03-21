require 'rails_helper'

RSpec.describe "dividas/edit", type: :view do
  before(:each) do
    @divida = assign(:divida, Divida.create!(
      :nome => "MyString",
      :tipo => "MyString"
    ))
  end

  it "renders the edit divida form" do
    render

    assert_select "form[action=?][method=?]", divida_path(@divida), "post" do

      assert_select "input#divida_nome[name=?]", "divida[nome]"

      assert_select "input#divida_tipo[name=?]", "divida[tipo]"
    end
  end
end
