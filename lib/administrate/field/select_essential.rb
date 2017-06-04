require 'administrate/field/base'
require 'rails'

module Administrate
  module Field
    class SelectEssential < Base
      class Engine < ::Rails::Engine
        # Administrate::Engine.add_javascript "administrate-field-select_essential/application"
      end

      def to_s
        data
      end

      def display_data
        if data.is_a?(Array)
          data.join(', ')
        else
          data
        end
      end

      def choices
        options.fetch(:choices, []).map { |choice| convert_to_array(choice) }
      end

      def include_blank
        options.fetch(:include_blank, false)
      end

      def prompt
        options.fetch(:prompt, false)
      end

      def multiple
        options.fetch(:multiple, false)
      end

      private

      def convert_to_array(item)
        item.respond_to?(:each) ? [item.first, item.last] : [item, item]
      end
    end
  end
end
