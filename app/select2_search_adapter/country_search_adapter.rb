class CountrySearchAdapter < Select2SearchAdapter::Base
  class << self

    def limit
      10
    end

    def search_default(term, page, options)
      if options[:init].nil?
        countries = default_finder(Country.by_cities(options[:city_id]), term, page: page)
        count = default_count(Country.by_cities(options[:city_id]), term)
        {
            items: countries.map do |country|
              { text: country.name,
                id: country.id.to_s,
                class_name: "#{'top-country' if country.population > 2e8}"}
            end,
            total: count
        }
      else
        get_init_values(Country, options[:item_ids])
      end
    end

    def search_top_ten(term, page, options)
      if options[:init].nil?
        countries = default_finder(Country.limit(10), term, page: page)
          count = default_count(Country.limit(10), term)
          {
              items: countries.map do |country|
                { text: country.name, id: country.id.to_s }
              end,
              total: count
          }
      else
        get_init_values(Country, options[:item_ids])
      end
    end

  end
end