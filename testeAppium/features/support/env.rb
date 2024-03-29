require 'appium_lib'
require 'pry'
require 'rspec'

def caps
    {
        caps: { 
            deviceName: "Nexus",
            platformName: "Android",
            app: (File.join(File.dirname(__FILE__), "net.apk")), #Função que pega o arquivo que está na mesma pasta que o (env)
            appPackage: "br.com.netshoes.app", #uiautomatorviewer& || Appium logs
            appActivity: "br.com.zattini.home.HomeActivity", #Appium logs
            newCommandTimeout: "3600"
           # noReset: true
            #fullReset: true
        }
    }
end

Appium::Driver.new(caps, true)

Appium.promote_appium_methods Object