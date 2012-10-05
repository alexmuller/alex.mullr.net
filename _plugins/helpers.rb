module Liquid

  module ExtendedFilters

    # Given a string '\d\d', return the month name
    def date_to_month(input)
      Date::MONTHNAMES[input]
    end

    # Self explanatory, turns '\d' into '0\d'
    def add_leading_zero(input)
      "%02d" % input
    end

    # Convert the input string to one line by removing '\n'
    def one_line(input)
      input.gsub(/\n/, " ")
    end

  end

  Liquid::Template.register_filter(ExtendedFilters)

end
