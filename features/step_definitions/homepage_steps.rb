Given(/^I am on the home page$/) do
  @home_page = HomePage.new
  @home_page.load
end