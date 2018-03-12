# JsRoutes creates a JS function of callable Rails application routes

RAILS_ROUTES_FILE = Rails.root.join('config','routes.rb')
JS_ROUTES_FILE = Rails.root.join('app', 'assets', 'javascripts', 'js_routes.js')

namespace :js do
  desc "Create webpack js_routes.js utility"
  task :routes => JS_ROUTES_FILE

  file JS_ROUTES_FILE => RAILS_ROUTES_FILE do
    Rake::Task['js:routes_generate'].invoke
  end

  task :routes_generate => :environment do
    require 'js-routes'
    JsRoutes.generate!(
      JS_ROUTES_FILE,
      exclude: /admin_/
    )
  end

end