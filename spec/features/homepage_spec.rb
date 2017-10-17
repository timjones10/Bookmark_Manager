require './app/models/link'

feature 'Viewing Links' do
  scenario 'On the links page I can see a list of links' do
    Link.create(url: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit '/links'

    expect(page.status_code).to eq 200

    within 'ul#links' do
    expect(page).to have_content "Makers Academy"
    end
  end
end
