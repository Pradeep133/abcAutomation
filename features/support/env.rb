require 'watir-webdriver'
require 'watir-page-helper/commands'
require 'watir-page-helper/extensions/element_extension'

World WatirPageHelper::Commands


WatirPageHelper.create

FAILED_SCENARIOS_SCREENSHOTS_DIR = "failed_scenarios_screenshots"

#After do
#  WatirPageHelper.browser.cookies.clear
#  WatirPageHelper.browser.screenshot.save 'screenshot.png'
#  embed 'screenshot.png', 'image/png'
#end

After do |scenario|
 # WatirPageHelper.browser.cookies.clear
  if scenario.failed?
    # Dir::mkdir("#{REPORTS_DIR}/#{FAILED_SCENARIOS_SCREENSHOTS_DIR}") if not File.directory?("#{REPORTS_DIR}/#{FAILED_SCENARIOS_SCREENSHOTS_DIR}")
    # screenshot = "./#{REPORTS_DIR}/#{FAILED_SCENARIOS_SCREENSHOTS_DIR}/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}_#{Time.new.to_i}.png"
    Dir::mkdir("#{FAILED_SCENARIOS_SCREENSHOTS_DIR}") if not File.directory?("#{FAILED_SCENARIOS_SCREENSHOTS_DIR}")
    # screenshot = "./#{FAILED_SCENARIOS_SCREENSHOTS_DIR}/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}_#{Time.new.to_i}.png"
    screenshot = "./#{FAILED_SCENARIOS_SCREENSHOTS_DIR}/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}_#{Time.now.strftime("%H_%M_%S__%d_%m_%Y")}.png"
    WatirPageHelper.browser.driver.save_screenshot(screenshot)
    embed screenshot, 'image/png'
    Cucumber.wants_to_quit = true if ((scenario.title).eql?("User login"))
  end

end

puts "ENV => #{ENV.inspect}"

if ENV['HEADLESS'] == 'true'
  require 'headless'

  headless = Headless.new
  headless.start


  at_exit do
    headless.destroy
  end
else
  at_exit do
    WatirPageHelper.browser.close
  end
end


