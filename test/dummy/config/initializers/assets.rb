# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( too_big_stylesheet.css too_big_stylesheet_split2.css test_stylesheet_with_media_queries.css test_stylesheet_with_media_queries_split2.css )