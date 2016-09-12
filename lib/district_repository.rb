require "pry"
require "csv"

class DistrictRepository
  attr_accessor :dr_hash, :contents

  def initialize
    @dr_hash = {
      :enrollment => {
        :kindergarten => "./data/Kindergartners in full-day program.csv",
        :dropout      => "",
        :online       => "",
        :overall      => "",
        :race_ethnicity_enrollment => "",
        :race_ethnicity_graduation => "",
        :special_ed => "" },
      :testing => {},
      :economic_profile => {}
    }
  end
  def load_data(first_key, second_key)
    @contents = CSV.read (dr_hash[first_key][second_key]), headers: true, header_converters: :symbol
  end

  def find_by_name(name)

  end

end

# dr = DistrictRepository.new
#
# dr.load_data(:enrollment, :kindergarten)
