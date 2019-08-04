class Application

  @@items = [Item.new("Apples",5.23), Item.new("Oranges",2.43)]

def call(env)
resp = Rack::Response.new
req = Rack::Request.new(env)

if req.path=="/items"
resp.write "You requested the items"
else
resp.write "Items not found"
resp.status = 404
end

resp.finish
end
end
