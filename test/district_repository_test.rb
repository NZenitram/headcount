require "pry"
require "minitest/pride"
require "minitest/autorun"
require_relative "../lib/district_repository"

class DistrictRepositoryTest < Minitest::Test

  def test_district_repository_exists
    dr = DistrictRepository.new
    assert dr
  end

  def test_if_first_dataset_populates_hash
    dr = DistrictRepository.new
    assert_equal "./data/Kindergartners in full-day program.csv", dr.dr_hash[:enrollment][:kindergarten]
  end

  def test_can_read_csv
    dr = DistrictRepository.new
    assert_equal CSV::Table, dr.load_data(:enrollment, :kindergarten).class
  end
end
