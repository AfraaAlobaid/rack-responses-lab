class Application 
    def call(env)
        response = Rack::Response.new
        if Time.now.hour < 12 
            response.write "Good morning"
        else 
            response.write "Good afternoon"
        end
        response.finish
    end
end