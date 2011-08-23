When /^I upload a picture of an item$/ do
  attach_file('Item image', 'public/images/rails.png')
  click_button('Upload')
end

Then /^I should see the picture I uploaded$/ do
  assert page.has_css?('img[src*=rails]')
end

When /^I click upload without selecting an image$/ do
  click_button('Upload')
end

Then /^I should receive an error message$/ do
  assert page.has_content?('Oops, attach an image silly billy')
end

Given /^I have uploaded a image of a skirt$/ do
  Given "I am on the homepage"
  When "I upload a picture of an item"
end

When /^I click on the image of the skirt$/ do
  click_link("item_#{Item.last.id}")
end