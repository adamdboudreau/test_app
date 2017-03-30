# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

APP_NAME = 'app2'

puts "APP_NAME: #{APP_NAME}"

# Rails.application.config.assets.paths = [
#     Rails.root.join("app", "assets", "images"),
#     Rails.root.join("app", "assets", "javascripts"),
#     Rails.root.join("app", "assets", "stylesheets"),
#     Rails.root.join("app", "assets", APP_NAME, "images"),
#     Rails.root.join("app", "assets", APP_NAME, "javascripts"),
#     Rails.root.join("app", "assets", APP_NAME, "stylesheets")
# ]


Rails.application.config.assets.paths << Rails.root.join("app", "assets", "images")
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "javascripts")
Rails.application.config.assets.paths << Rails.root.join("app", "assets", "stylesheets")
Rails.application.config.assets.paths << Rails.root.join("app", "assets", APP_NAME, "images")
Rails.application.config.assets.paths << Rails.root.join("app", "assets", APP_NAME, "javascripts")
Rails.application.config.assets.paths << Rails.root.join("app", "assets", APP_NAME, "stylesheets")

# puts "Rails.application.config.assets : #{Rails.application.config.assets.paths.inspect}\n\n"
#
# # puts "Rails.application.config.assets : #{Rails.application.config.assets.inspect}\n\n"
#
#
# puts "Rails.application.config.precompile : #{Rails.application.config.assets.precompile.inspect}\n\n"
#
# puts "Rails.application.config.precompile.pop : #{Rails.application.config.assets.precompile.pop.inspect}\n\n"

# Rails.application.config.assets.precompile.pop
# Rails.application.config.assets.precompile << /#{APP_NAME}\/application\.(css|js)$/

# # original /(?:\/|\\|\A)application\.(css|js)$/
# # /(?:\/|\\|\A)application\.(css|js)$/
# # Regexp.new("(?:\/|\\|\A)#{APP_NAME}(?:\/|\\|\A)application.css")
# # "app/assets/#{APP_NAME}/stylesheets/application.css".match(Regexp.new(".*#{APP_NAME}.*application.css"))
#
# # Rails.application.config.assets.precompile << /(?:\/|\\|\A)application\.(css|js)$/
# # Rails.application.config.assets.precompile << Regexp.new("(?:\/|\\|\A|app2)application\.(css|js)$")
#
# Rails.application.config.assets.precompile << Regexp.new(".*#{APP_NAME}.*application.(css|js)$")
#
# Rails.application.config.assets.precompile << Rails.root.join("app", "assets", "javascripts", "application.js").to_s
# Rails.application.config.assets.precompile << Rails.root.join("app", "assets", APP_NAME, "stylesheets", "application.css").to_s
#
# puts "Rails.application.config.precompile : #{Rails.application.config.assets.precompile.inspect}\n\n"
# # Rails.application.config.assets.precompile += %w( stylesheets/application.css )
# # Rails.application.config.assets.precompile += %w( application.js )
Rails.application.config.assets.precompile << "app/assets/#{APP_NAME}/stylesheets/*.css"
Rails.application.config.assets.precompile << "#{APP_NAME}/stylesheets/*.css"
# # Rails.application.config.assets.precompile += %w( main.css )