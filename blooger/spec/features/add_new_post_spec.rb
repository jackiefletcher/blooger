require 'rails_helper'

describe "add new post process" do
  it "will show the new post" do
    visit '/'
    click_on 'Add Post'
    fill_in 'Title', with: "Swimming"
    fill_in 'Content', with: "Swimming is fun and great exercise. Let's test out the new training bikini!"
    click_on 'Post'
    expect(page).to have_content 'successfully'
  end
  it 'will return an error message if fields are empty' do
    visit '/'
    click_on 'Add Post'
    fill_in 'Title', with: ""
    fill_in 'Content', with: ""
    click_on 'Post'
    expect(page).to have_content 'There was a problem'
  end

end
