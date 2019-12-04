#
# Be sure to run `pod lib lint SwiftCore.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftCore'
  s.version          = '0.1.4'
  s.summary          = 'SwiftCore for MVVM-Coordinator.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Swift MVVM - Coordinator Core Lib.
                       DESC

  s.homepage         = 'https://github.com/rnnsilveira/SwiftCore'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rnnsilveira' => 'rnn.silveira@gmail.com' }
  s.source           = { :git => 'https://github.com/rnnsilveira/SwiftCore.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_version = '4.2'
  # s.source_files = 'SwiftCore/Common/*.{h,m,swift}'
  s.source_files = 'SwiftCore/**/*.{swift}'
  s.exclude_files = ["SwiftCore/Example"]
end
