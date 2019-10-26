class Application
    def call (env)
        resp = Rack::Response.new

        if rand(12..13) <= 12
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end