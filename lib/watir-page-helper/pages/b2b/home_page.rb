$LOAD_PATH << './lib/watir-page-helper/pages/abc/'
require 'watir-page-helper'
require 'login_page'

module WatirPageHelper::Abc
  module HomePage
    include LoginPage
    extend WatirPageHelper::ClassMethods

    def go_to_HomePage
      unless @browser.h1(:text, "My Space").exists?
        if @browser.img(:class,"logo").exists?
          @browser.img(:class,"logo").click
          verify_session_expired
        end
      end
      wait_for_login false
      dismiss_overlay
      @browser.div(:class,"navbar-header logoCiscoBrand").click
      #add verification for landing in home page
    end

  end
end
