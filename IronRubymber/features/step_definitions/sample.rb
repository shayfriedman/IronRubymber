require 'spec/expectations'

# Runs before each scenario
Before do
  @strings = []
end

Given /the .NET string "(.*)"/ do |str|
  @strings << str.to_clr_string
end

When /I fetch the value of the (.*) property/ do |property_name|
  @result = @strings.first.send property_name
end

When /I concatinate the strings/ do
  @result = System::String.Concat(@strings.ToArray)
end

Then /I should get (.*)/ do |expected_result|
  # If the expected result contains quotes, then it's a string. Remove the quotes!
  if expected_result[0] == '"'
    expected_result = expected_result[1...-1]
  else # the expected result is a number. Convert to a numeric type!
    expected_result = expected_result.to_i
  end
  
  # Assert!
  @result.should == expected_result
end