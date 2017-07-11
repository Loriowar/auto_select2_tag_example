class Country < ActiveRecord::Base
  attr_accessible :name, :population

  has_many :cities

  def to_select2_alternate
    {
        id: id,
        text: name,
        class_name: "select2-result select2-result-population-level is-#{population_level}",
        selection_class_name: "select2-selection select2-selection-population-level is-#{population_level}",
    }
  end

  private
  def population_level
    num_level = (population / 50000000)
    if num_level > 10
      'hot'
    elsif num_level > 3
      'middle'
    else
      'low'
    end
  end
end
