require 'rails_helper'

describe "add new comment process" do
  it "will show the new comment" do
    post = FactoryGirl.create(:post)
    visit post_path(post)
    click_on 'Comment'
    fill_in 'Text', with: 'That is so cool!'
    click_on 'Submit'
    expect(page).to have_content 'Comment added'
  end
end
