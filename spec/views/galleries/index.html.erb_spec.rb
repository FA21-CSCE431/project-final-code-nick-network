require 'rails_helper'

RSpec.describe "galleries/index", type: :view do
  before(:each) do
    assign(:galleries, [
      Gallery.create!(
        title: "Title",
        description: "Description"
      ),
      Gallery.create!(
        title: "Title",
        description: "Description"
      )
    ])
  end

  it "renders a list of galleries" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Description".to_s, count: 2
  end
end
