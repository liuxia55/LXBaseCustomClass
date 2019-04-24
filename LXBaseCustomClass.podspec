Pod::Spec.new do |s|
s.name         = 'LXBaseCustomClass'
s.version      = '0.0.5'
s.summary      = 'BaseClass'
s.description  = <<-DESC
基础控制器 model button 提示框 弹框 textView占位 lable行间距 color转换
DESC
s.homepage     = 'https://github.com/liuxia55/LXBaseCustomClass.git'
s.license= { :type => "MIT", :file => "LICENSE" }
s.authors      = {'liuxia55' => '810357314@qq.com'}
s.platform     = :ios, '8.0'
s.source       = {:git => 'https://github.com/liuxia55/LXBaseCustomClass.git', :tag => s.version}
# s.source_files = 'LXBaseCustomClass/LXBaseCustomClass/**/*'
s.requires_arc = true


 s.subspec 'LXBaseCustomClass' do |ss|
    
    ss.subspec 'UILabel+String' do |sss|
        sss.source_files = 'LXBaseCustomClass/LXBaseCustomClass/UILabel+String/**/*'
    end
    ss.subspec 'UITextView+Placeholder' do |sss|
        sss.source_files = 'LXBaseCustomClass/LXBaseCustomClass/UITextView+Placeholder/**/*'
    end
    ss.subspec 'MessageAlert' do |sss|
        sss.source_files = 'LXBaseCustomClass/LXBaseCustomClass/MessageAlert/**/*'
    end
    ss.subspec 'BaseButton' do |sss|
        sss.source_files = 'LXBaseCustomClass/LXBaseCustomClass/BaseButton/**/*'
    end
    ss.subspec 'BaseColor' do |sss|
        sss.source_files = 'LXBaseCustomClass/LXBaseCustomClass/BaseColor/**/*'
    end
    ss.subspec 'BaseModel' do |sss|
        sss.source_files = 'LXBaseCustomClass/LXBaseCustomClass/BaseModel/**/*'
    end
    ss.subspec 'LXAlertView' do |sss|
        sss.source_files = 'LXBaseCustomClass/LXBaseCustomClass/LXAlertView/**/*'
    end
    ss.subspec 'BaseVcAndTabBar' do |sss|
        sss.source_files = 'LXBaseCustomClass/LXBaseCustomClass/BaseVcAndTabBar/**/*'
    end



 end

end
