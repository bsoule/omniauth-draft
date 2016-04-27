Gem::Specification.new do |gem|
  gem.name    = 'omniauth-draft'
  gem.version = 0.3
  gem.date    = Date.today.to_s
  gem.license = 'MIT'
  gem.summary = "OmniAuth strategy for Draft"
  gem.description = "OmniAuth strategy for Draft"

  gem.authors  = ['Bethany Soule']
  gem.email    = 'bsoule@beeminder.com'
  gem.homepage = 'https://github.com/bsoule/omniauth-draft'

  gem.files = ['lib/omniauth-draft.rb', 'lib/omniauth/strategies/draft.rb']
  gem.require_paths = ['lib']
end
