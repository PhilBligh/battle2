feature 'Testing player names' do
  scenario 'The player names are displayed after submitting form' do
    visit('/')
    fill_in 'player_1_name', with: 'John'
    fill_in 'player_2_name', with: 'James'
    click_button('Submit')

    save_and_open_page
    
    expect(page).to have_content 'John vs. James'
  end

  # scenario 'Players can input names and see them on screen' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

  # scenario 'Players can input names and see them on screen' do
  #   visit('/')
  #   expect(page).to have_content 'Testing infrastructure working!'
  # end

end



