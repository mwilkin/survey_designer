class Survey < ActiveRecord::Base
  has_many(:questions)
  before_save(:upcase_name)
  validates(:name, :presence => true, :length => { :maximum => 30})


private
    define_method(:upcase_name) do
      self.name = (name().upcase())
  end
end
