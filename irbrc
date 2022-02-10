require 'irb/completion' rescue nil

IRB.conf[:SAVE_HISTORY] = 200
IRB.conf[:HISTORY_FILE] = File.join(ENV["HOME"], ".irb-history")

# begin
#   require 'awesome_print'
#   AwesomePrint.irb!
# rescue LoadError
#   puts 'No awesome_print :('
# end

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
