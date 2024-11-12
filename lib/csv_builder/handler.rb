require 'csv'

module CsvBuilder
  class Handler
    def self.call(template, source = nil)
      source ||= template.source

      <<~RUBY
        CSV.generate(col_sep: ';') do |csv|
          #{source}
          controller.send(:send_file_headers!, type: 'text/csv', filename: @filename)
        end
      RUBY
    end
  end
end
