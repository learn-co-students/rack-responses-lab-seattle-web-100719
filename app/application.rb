require 'pry'

class Application
  
    def call(env)
      resp = Rack::Response.new
   
        current_time = Time.now
# binding.pry
      if current_time.hour < 12
        resp.write "Good morning!"
      else
        resp.write "Good afternoon!"
      end
   
      resp.finish
    end
  
  end