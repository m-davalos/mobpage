module PageObject
  module Accessors
    def create_standard_methods(name, identifier={}, &block)
      define_method("#{name}_element") do
        if identifier.has_key?(:index)
          index = identifier[:index].to_i
          identifier.delete(:index)
          element = @driver.find_elements(identifier)[index]
          element
        elsif identifier.has_key?(:text)
          elements = @driver.find_elements(identifier)
          elements.each do |element|
            return element if element.text == identifier[:text]
            nil
          end
        else
          @driver.find_element(identifier)
        end
      end
    end

    def create_standard_methods_for_collection(name, identifier={})
      define_method("#{name}_elements") do
        @driver.find_elements(identifier)
      end
    end

    #TODO Refactor
    def button(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def buttons(name, identifier={})
      create_standard_methods_for_collection(name, identifier)
    end

    def switch(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def switches(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def pin(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def pins(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def link(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def links(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def text_field(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def text_fields(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def check_box(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def check_boxex(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def select_list(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def select_lists(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def item_list(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def item_lists(name, identifier={}, &block)
      create_standard_methods_for_collections(name, identifier)
    end

    def element(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def elements(name, identifier={})
      create_standard_methods_for_collection(name, identifier)
    end

    def radio_button(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def radio_buttons(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def label(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def labels(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def image(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def images(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def paragraph(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def paragraphs(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def dialog(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def spinner(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def spinners(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

    def view_switcher(name, identifier={}, &block)
      create_standard_methods(name, identifier)
    end

    def view_switchers(name, identifier={}, &block)
      create_standard_methods_for_collection(name, identifier)
    end

  end
end





