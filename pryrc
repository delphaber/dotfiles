begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue LoadError
  puts 'No awesome_print :('
end

Pry::Commands.block_command('enable-pry', 'Enable `binding.pry` feature') do
  ENV['DISABLE_PRY'] = nil
end
