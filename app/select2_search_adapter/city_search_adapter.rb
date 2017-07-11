class CitySearchAdapter < AutoSelect2::Select2SearchAdapter::Base
  self.searchable = City
  self.searchable_columns = ['name']
  self.limit = 10

  class << self
    def format(item, **)
      {id: item.id, text: item.name}
    end

    def relation(_term, country_id:, **)
      super.by_countries(country_id)
    end
  end
end
