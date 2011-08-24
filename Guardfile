guard 'livereload' do
  watch(%r{.+\.(rb|ru)})
  watch(%r{(models|config|lib)/.+\.(rb|yml)})
  watch(%r{views/.+\.(haml|sass|html|markdown|erb)})
  watch(%r{public/js/.+\.(js|coffee)})
  watch(%r{public/css/.+\.(sass|css)})
  watch(%r{public/.+\.(css|js|html)})
end

guard 'coffeescript', :input => 'public/js'

# More infos at https://github.com/guard/guard#readme