# begin
#   require 'awesome_print'
#   AwesomePrint.pry!
# rescue LoadError
#   puts 'No awesome_print :('
# end

Pry::Commands.block_command('enable-pry', 'Enable `binding.pry` feature') do
  ENV['DISABLE_PRY'] = nil
end

# require 'date'

# def working_day(base_date: Date.today, days:)
#   require 'holidays'
#   (base_date.succ..).lazy.reject do |day|
#     Holidays.on(day, :it).any? || [0, 6].include?(day.wday)
#   end.take(days).to_a.last.to_s
# end
