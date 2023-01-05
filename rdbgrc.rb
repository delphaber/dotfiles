DEBUGGER__::CONFIG[:skip_path] = Gem.path.join(":")
DEBUGGER__::CONFIG[:use_short_path] = true

def pbcopy(arg)
  out = arg.is_a?(String) ? arg : arg.inspect
  IO.popen('pbcopy', 'w') { |io| io.puts out }
  puts out
  true
end

def source_for(object, method_sym)
  if object.respond_to?(method_sym, true)
    method = object.method(method_sym)
  elsif object.is_a?(Module)
    method = object.instance_method(method_sym)
  end
  location = method.source_location
  `code --goto #{location[0]}:#{location[1]}` if location
  location
rescue
  nil
end
