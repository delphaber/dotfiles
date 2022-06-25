require 'irb/completion' rescue nil

IRB.conf[:SAVE_HISTORY] = 200
IRB.conf[:HISTORY_FILE] = File.join(ENV["HOME"], ".irb-history")

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

def connecting_to_shard(shard = :shard_one)
  CurrentShard.connecting_to(role: :writing, shard: shard)
end

def jpg(obj)
  puts JSON.pretty_generate(obj)
end
