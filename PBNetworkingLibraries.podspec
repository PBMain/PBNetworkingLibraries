Pod::Spec.new do |s|
  s.name             = 'PBNetworkingLibraries'
  s.version          = '1.5.0.3'
  s.summary          = 'A short description of PBNetworkingLibraries.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/PBMain'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'philbelley' => 'pbelley@photobutler.com' }
  s.source           = { :git => 'https://github.com/PBMain/PBNetworkingLibraries.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.3'

  #s.source_files = 'PBNetworkingLibraries/Classes/**/*'
  
  s.ios.vendored_frameworks = 'PBFrameworkNetworkingLibraries.framework'
  
end
