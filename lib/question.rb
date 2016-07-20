class Question < ActiveRecord::Base
  belongs_to(:survey)
  before_save(:downcase_question)
  validates(:question, :presence => true, :length => { :maximum => 100})



  private
    define_method(:downcase_question) do
      self.question = (question().downcase())
  end
end
