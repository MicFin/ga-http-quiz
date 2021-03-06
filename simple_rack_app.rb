require 'rubygems'
require 'rack'

class Hello 
  def call(env)
    env.each do |k,v|
      puts "#{k} = #{v}"
    end
    puts "PATH_INFO is #{env['PATH_INFO']}"
    [200, {"Content-Type" => "text/html"}, "<p>hey there from simple class</p>"]
  end
end
Rack::Handler::Thin.run Hello.new, :Port => 1234
