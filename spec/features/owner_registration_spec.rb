require 'spec_helper'

feature 'register for dog park social media site', %Q{
  As a dog owner
  I want to register my dog
  So that I can connect with other dog lovers
  } do

    # Acceptance Criteria:
    # *An owner must specify their first name, last name, email address, and dog's name.
    # *Upon adding my entry, I can see a list of other registered dog owners.
    # *An owner's full_name can be requested. Hint: This will require an instance method

    scenario 'enter all valid registration information' do
      prev_count = Owner.count
      visit '/owners/new'
      fill_in 'First Name',
        with: 'Emily'
      fill_in 'Last Name',
        with: 'Williams'
      fill_in 'Email',
        with: 'e@dubz.com'
      fill_in 'Dog',
        with: 'Dusty the Dog'
      click_button 'Register'

      expect(page).to have_content('Congrats, you are now registered!')
      expect(Owner.count).to eql(prev_count + 1)
    end


    scenario 'submit registration information without required fields'

  end
