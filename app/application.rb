class Application
    def call(env)
        resp = Rack::Response.new

        if Time.now.hour.between?(0, 11)
            resp.write "Good morning!"
        elsif Time.now.hour.between?(12, 23)
            resp.write "Good Afternoon!"
        end
        resp.finish
    end
end