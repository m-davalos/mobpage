# mobpage
Page Object DSL for iOS and Android mobile testing

Installation
------------
On your terminal type:
gem install mobpage

In your Gemfile add:
gem 'mobpage'

On your terminal type:
bundle install

Basic Usage
-----------
In env.rb

require 'mobpage/page_object/navigation'
require 'mobpage/page_object/accessors'


World(PageObject::Navigation)

In your page classes

class Home
  extend PageObject::Accessors

  def initialize(selenium_driver)
    @driver = selenium_driver
  end

  spinner(:station_image, id: 'android:id/action_bar_spinner')
  button(:report_it, class: 'android.widget.RadioButton', text: 'Report It')
end

In your step definitions

on(Home).station_image_element.click
on(Home).report_it_element.displayed?

Acknowledgement
---------------

mobpage is inspired by Jeff Morgan's page-object gem for web-based testing

