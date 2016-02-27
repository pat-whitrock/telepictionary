RSpec.describe 'Pictures', type: :feature do
  scenario 'I can draw and save my picture' do
    visit 'pictures/new'

    click_on 'Save'

    expect(page).to have_content 'Picture'
  end
end
