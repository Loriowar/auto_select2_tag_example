class City < ActiveRecord::Base
  attr_accessible :name, :country_id

  belongs_to :country

  default_scope ->{order(name: :asc)}

  scope :by_countries, ->(country_ids) do
    if country_ids.present?
      joins(:country).where(countries: {id: country_ids})
    end
  end
end
