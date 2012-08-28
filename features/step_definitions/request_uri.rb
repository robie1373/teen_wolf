require "./config.rb"
require 'open-uri'

Given /^I need to search for "(.*?)"$/ do |query_term|
  @query_term = "vulpes"
end


When /^I request the answer from Wolfram$/ do
  @request_uri = "http://api.wolframalpha.com/v2/query?input=vulpes&appid=TY7XQP-99XJHX9JQU"
end

Then /^I get a valid response$/ do
  text = ""
  open(@request_uri) do |f|
    f.each_line do |line|
      text << line
    end
  end
  text.should == "foo"
end
