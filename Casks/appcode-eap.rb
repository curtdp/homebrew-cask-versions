cask 'appcode-eap' do
  version '2020.1,201.4865.16'
  sha256 'd39c9dc4fc07e9163f1a5918730f7af05a73d140489b150423f8c4b90e2d1652'

  url "https://download.jetbrains.com/objc/AppCode-#{version.after_comma}.dmg"
  name 'AppCode EAP'
  homepage 'https://www.jetbrains.com/objc/nextversion/'

  conflicts_with cask: 'appcode'

  app "AppCode #{version.before_comma} EAP.app"

  zap delete: [
                "~/Library/Preferences/AppCode#{version.before_comma}",
                "~/Library/Application Support/AppCode#{version.before_comma}",
                "~/Library/Caches/AppCode#{version.before_comma}",
                "~/Library/Logs/AppCode#{version.before_comma}",
              ]
end
