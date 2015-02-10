Pod::Spec.new do |s|
  s.name             = "DLRUIKit"
  s.version          = "1.1.0"
  s.summary          = "A collection of UIKit categories."
  s.homepage         = "https://github.com/detroit-labs/dlr-uikit-ios"
  s.license          = 'MIT'
  s.author           = { "Nathan Walczak" => "nate.walczak@detroitlabs.com" }
  s.source           = { :git => "https://github.com/detroit-labs/dlr-uikit-ios.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/detroitlabs'

  s.platform     = :ios
  s.requires_arc = true

  s.source_files = 'DLRUIKit/source/**/*'

  s.public_header_files = 'DLRUIKit/source/**/*.h'
end
