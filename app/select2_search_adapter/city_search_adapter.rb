class CitySearchAdapter < Select2SearchAdapter::Base
  class << self

    def limit
      10
    end

    def search_default(term, page, options)
      if options[:init].nil?
        cities = default_finder(City.by_countries(options[:country_id]), term, page: page)
        count = default_count(City.by_countries(options[:country_id]), term)
        {
            items: cities.map do |city|
              { text: city.name, id: city.id.to_s }
            end,
            total: count
        }
      else
        get_init_values(City, options[:item_ids])
      end
    end

  end
end