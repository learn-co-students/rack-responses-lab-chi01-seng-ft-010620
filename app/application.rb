

class Application 

    def call(env)
        return [200, {'Content-Type' => 'text/html'}, time]
    end 

    def time 
        if Time.now.hour >= 12 && Time.now.hour <= 24 
            "Good Afternoon!"
        else 
            "Good Morning!"

        end 
    end 



end 