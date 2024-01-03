#
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint tflite_flutter_plugin.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'tflite_flutter'
  s.version          = '0.1.0'
  s.summary          = 'TensorFlow Lite plugin for Flutter apps.'
  s.description      = <<-DESC
TensorFlow Lite plugin for Flutter apps.
                       DESC
  s.homepage         = 'http://example.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Your Company' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '14.0'

  tflite_version = '2.14.0'
  s.dependency 'TensorFlowLiteSwift', tflite_version
  s.dependency 'TensorFlowLiteSwift/Metal', tflite_version
  s.dependency 'TensorFlowLiteSwift/CoreML', tflite_version

  s.ios.deployment_target = '14.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }

  s.user_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
  s.static_framework = true
end
