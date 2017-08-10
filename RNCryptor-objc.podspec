Pod::Spec.new do |s|
  s.name = 'RNCryptor-objc'
  s.version = '3.0.5'
  s.summary = 'Encryptor/Decryptor for iOS.'
  s.authors = {'Rob Napier' => 'robnapier@gmail.com'}
  s.license = { 
    :type => 'MIT', 
    :text => <<-LIC
This code is licensed under the MIT License:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
LIC
  }
  
  s.source = { :git => 'https://github.com/ChronicStim/RNCryptor-objc.git', :tag => "CPT-#{s.version.to_s}" }
  s.description = 'Provides an easy-to-use, Objective-C interface to the AES functionality of CommonCrypto. Simplifies correct handling of password stretching (PBKDF2), salting, and IV.'
  s.homepage = 'https://github.com/chronicstim/RNCryptor-objc'

  s.ios.source_files = 'RNCryptor/*', 'RNCryptor iOS/*'
  s.osx.source_files = 'RNCryptor/*', 'RNCryptor OS X/*'
  s.tvos.source_files = 'RNCryptor/*', 'RNCryptor tvOS/*'
  s.watchos.source_files = 'RNCryptor/*', 'RNCryptor watchOS/*'  
  
  s.ios.public_header_files = 'RNCryptor/*.h', 'RNCryptor iOS/*.h'
  s.osx.public_header_files = 'RNCryptor/*.h'
  s.tvos.public_header_files = 'RNCryptor/*.h', 'RNCryptor tvOS/*.h'
  s.watchos.public_header_files = 'RNCryptor/*.h', 'RNCryptor watchOS/*.h'
  
  s.private_header_files = "RNCryptor/RNCryptorEngine.h", "RNCryptor/RNCryptor+Private.h"

  s.ios.module_map = 'RNCryptor iOS/*.modulemap'
  
  s.requires_arc = true
  s.frameworks = 'Security'

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'

end

