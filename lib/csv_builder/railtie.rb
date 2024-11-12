require_relative 'handler'

module CsvBuilder
  class Railtie < Rails::Railtie
    initializer :csv_builder do
      ActiveSupport.on_load :action_view do
        ActionView::Template.register_template_handler :cb, CsvBuilder::Handler
      end
    end
  end
end