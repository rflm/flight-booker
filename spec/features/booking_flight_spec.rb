require 'rails_helper'

describe 'booking flight process' do
	it 'books selected flight' do
		Airport.create(code: 'SFO')
		Airport.create(code: 'CHI')
		Flight.create(from_airport_id: 1,
								  to_airport_id: 2,
								  start: 'Thu, 14 May 2015')

		visit '/'
		click_button 'Find flight'

		select 'SFO', from: :from_id
		click_button 'Next'

		select 'CHI', from: :to_id
		click_button 'Next'

		select '14/05/2015', from: :date
		click_button 'Next'

		select '1', from: :num_tickets
		click_button 'Next'

		choose 'flight_id'
		click_button 'Book'

		fill_in 'Name', with: 'John Doe'
		fill_in 'Email', with: 'example@email.com'
		click_button 'Book Flight'

		expect(page).to have_content 'John Doe example@email.com'
	end
end