
Pod::Spec.new do |s|
  s.name             = 'Apploader'
  s.version          = '1.0'
  s.summary          = 'A Sweet candy for MBProgressHud.'

  s.description      = "This is just an extension of mbprogresshud. just add this pod and use it just like that."

  s.homepage         = 'https://github.com/karthikAdaptavant/Apploader'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'karthikAdaptavant' => 'karthik.samy@a-cti.com' }
  s.source           = { :git => 'https://github.com/karthikAdaptavant/Apploader.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'

  s.source_files = 'Apploader/Classes/**/*'
  s.public_header_files = 'Apploader/Classes/**/*.h'
  s.dependency 'MBProgressHUD', '~> 0.9'

end
