Pod::Spec.new do |s|
s.name         = 'LXBaseCustomClass'
s.version      = '0.0.2'
s.summary      = 'BaseClass'
s.description  = <<-DESC
基础控制器 model button 提示框 弹框 textView占位 lable行间距 color转换
DESC
s.homepage     = 'https://github.com/liuxia55/LXBaseCustomClass.git'
s.license= { :type => "MIT", :file => "LICENSE" }
s.authors      = {'liuxia55' => '810357314@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/liuxia55/LXBaseCustomClass.git', :tag => s.version}
s.source_files = 'LXBaseCustomClass/LXBaseCustomClass/**/*'
s.requires_arc = true
end
