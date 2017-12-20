describe 'lot', :type => :feature do
  context 'search' do
    it 'should open lot flight search window' do
      visit 'http://www.lot.com/us/en/flights-schedule'
      sleep 0.2
      page.save_screenshot('screenshot.png')
    end
  end

end
