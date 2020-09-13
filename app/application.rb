class Application
    def call(env)
        resp = Rack::Response.new
        t = Time.now
        if t.strftime('%p') == 'PM' #lowercase == uppercase
            #t.strftime('%P') == 'pm' uppercase == lowercase
            resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end
end



