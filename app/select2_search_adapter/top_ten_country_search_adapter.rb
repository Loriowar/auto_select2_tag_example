class TopTenCountrySearchAdapter < CountrySearchAdapter
  self.searchable = searchable.limit(10)
end