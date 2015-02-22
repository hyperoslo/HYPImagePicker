Pod::Spec.new do |s|
  s.name             = "HYPImagePicker"
  s.version          = "0.3"
  s.summary          = "UIImagePickerController without the tears."
  s.description      = <<-DESC
                       UIImagePickerController without the tears. HYPImagePicker is the simplest way
                       to access camera capabilities, at the same time supporting fallbacks for when
                       the user doesn't have access to a camera.
                       DESC
  s.homepage         = "https://github.com/hyperoslo/HYPImagePicker"
  s.license          = 'MIT'
  s.author           = { "Elvis Nuñez" => "elvisnunez@me.com" }
  s.source           = { :git => "https://github.com/hyperoslo/HYPImagePicker.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hyperoslo'

  s.platform     = :ios, '7.0'
  s.requires_arc = true
  s.source_files = 'Source'
  s.frameworks = 'UIKit', 'AssetsLibrary'
end
