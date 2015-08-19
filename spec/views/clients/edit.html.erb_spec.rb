require 'rails_helper'

RSpec.describe "clients/edit", type: :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :clientstatus => false,
      :clientstatus => false
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input#client_clientstatus[name=?]", "client[clientstatus]"

      assert_select "input#client_clientstatus[name=?]", "client[clientstatus]"
    end
  end
end
