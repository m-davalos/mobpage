Gem::Specification.new do |s|
  s.name        = 'mobpage'
  s.version     = '0.0.0'
  s.date        = '2015-05-26'
  s.summary     = 'Page Object DSL for mobile testing'
  s.description = 'Page Object DSL for iOS and Android mobile testing'
  s.authors     = ['Milton Davalos']
  s.email       = 'mdavalos@mobiquityinc.com'
  s.files       = ['lib/mobpage.rb', 'lib/mobpage/page_object/accessors.rb', 'lib/mobpage/page_object/navigation.rb']
  s.homepage    = 'https://github.com/m-davalos/mobpage'
  s.license       = 'Mobiquity, Inc.'
  s.add_development_dependency 'appium_lib'
  s.add_development_dependency 'selenium-webdriver'
end