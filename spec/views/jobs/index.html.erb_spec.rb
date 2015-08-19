require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :client => nil
      ),
      Job.create!(
        :client => nil
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
