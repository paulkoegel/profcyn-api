ProfCyn::Application.config.middleware.use Rack::Cors do
  allow do
    origins 'localhost:3000', '127.0.0.1:3000', 'localhost:4000'
            #/http:\/\/192\.168\.0\.\d{1,3}(:\d+)?/

    # resource '/people*', :headers => 'x-domain-token', :methods => [:get]
    resource '/galleries*', :headers => :any, :methods => [:get]
    resource '/sessions*', :headers => :any, :methods => [:post]

    #resource '/people*', :headers => :any, :methods => [:get, :option]
    #     :methods => [:get, :post, :put, :delete],
    #     :headers => 'x-domain-token',
    #     :expose => ['Some-Custom-Response-Header']
  end
end
