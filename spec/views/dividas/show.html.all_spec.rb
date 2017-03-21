require 'rails_helper'

RSpec.describe "dividas/show", type: :view do
  before(:each) do
    @divida = assign(:divida, Divida.create!(
      :nome => "Nome",
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Tipo/)
  end
end
