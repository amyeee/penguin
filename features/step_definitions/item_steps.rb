When /^I upload a picture of an item$/ do
  attach_file('Item image', 'public/images/rails.png')
  click_button('Upload')
end

Then /^I should see the picture I uploaded$/ do
  assert page.has_css?('img[src*=rails]')
end
