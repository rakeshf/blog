Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins "http://192.168.50.4:3000"
      resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
    end
end