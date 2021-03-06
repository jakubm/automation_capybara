describe 'jakubm', :type => :feature do
  context 'ba' do
    it 'should open jakub and filter BA flights only' do
      visit 'http://prg-aero.com'
      click_on 'Timeline'
      click_on 'Today'
      sleep 0.5
      fill_in 'Flight Number', with: 'BA'
      check_airlines 'British Airways', 'Lufthansa'
    end
  end

  context 'ek' do
    it 'should open jakub and filter EK flights only' do
      visit 'http://prg-aero.com'
      click_on 'Timeline'
      click_on 'Today'
      sleep 0.5
      fill_in 'Flight Number', with: 'EK'
      check_airlines 'Emirates', 'British Airways'
    end
  end

  def check_airlines(yes_airline, no_airline)
    expect(page).to have_content yes_airline
    expect(page).not_to have_content no_airline
  end
end
