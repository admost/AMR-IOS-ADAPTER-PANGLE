Pod::Spec.new do |s|
  s.name             = 'AMRAdapterPangle'
  s.version          = '7.9.0'
  s.license          = { :type => 'Copyright', :text => <<-LICENSE
														Copyright 2016
														Admost Mediation Limited.
														LICENSE
														}
  s.homepage         = 'http://www.admost.com/'
  s.author           = { 'Admost Mediation Limited' => 'amr@admost.com' }
  s.summary          = 'Pangle adapter for AMR SDK.'
  s.description      = 'AMR Pangle adapter allows publishers to mediate Pangle interstitial and video ads in AMR SDK.'

  s.source           = { :git => 'https://github.com/admost/AMR-IOS-ADAPTER-PANGLE.git',
 								 :tag => s.version.to_s
 								}
  s.documentation_url = 'https://admost.github.io/amrios/'
  s.platform 			= :ios
  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5']
  s.vendored_frameworks = 'AMRAdapterTiktok/Libs/AMRAdapterTiktok.xcframework'  
  s.dependency 'AMRSDK', '~> 1.5.84'
  s.dependency 'Ads-Global', '7.9.0.8'
  s.pod_target_xcconfig = {
    "VALID_ARCHS": "arm64 x86_64",
    'VALID_ARCHS[sdk=iphoneos*]' => 'arm64',
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64 arm64'
  }
end
