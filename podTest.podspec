Pod::Spec.new do |s|
  s.name     = 'podTest'
  s.version  = '0.1.0'
  s.license  = 'MIT'
  s.summary  = 'A delightful iOS  framework.'
  s.homepage = 'https://github.com/xionggithub/podTest'
  s.author             = { "xiongxianti" => "1273040577@qq.com" }
  s.source   = { :git => 'https://github.com/xionggithub/podTest.git', :tag => "#{s.version}"}
  s.requires_arc = true
  
  s.source_files  = 'podTest/*.{h,cpp}'
    
  s.ios.deployment_target = '7.0'
  
  s.subspec 'Serialization' do |ss|
    ss.source_files  = 'podTest/*.{h,cpp}'
    ss.watchos.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
    ss.osx.frameworks = 'CoreServices'
  end

  s.subspec 'Security' do |ss|
    ss.source_files  = 'podTest/*.{h,cpp}'
    ss.frameworks = 'Security'
  end

  s.subspec 'Reachability' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files  = 'podTest/*.{h,cpp}'
    ss.frameworks = 'SystemConfiguration'
  end

  s.subspec 'NSURLSession' do |ss|
    ss.dependency 'podTest/Serialization'
    ss.ios.dependency 'podTest/Reachability'

    ss.dependency 'podTest/Security'

    ss.source_files  = 'podTest/*.{h,cpp}'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.deployment_target = '7.0'
    ss.source_files  = 'podTest/*.{h,cpp}'
  end
end
