class Application

  def call(env)
    resp = Rack::Response.new

    hour_as_int = Integer(Time.now.hour)


    if hour_as_int < 12
      resp.write "Good Morning!"
    elsif hour_as_int >= 12
      resp.write "Good afternoon!"
    end

    resp.finish
  end
 
end
