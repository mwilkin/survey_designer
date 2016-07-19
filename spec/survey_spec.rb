require('spec_helper')

describe(Survey) do

  it("capitalizes the name of a survey") do
    survey = Survey.create({:name => "What language?"})
    expect(survey.name()).to(eq("WHAT LANGUAGE?"))
    end

  it("validates the presence of a descriptor") do
    survey = Survey.new({:name => " "})
    expect(survey.save()).to(eq(false))
  end

  it("ensures the length of survey name is at most 30 characters") do
    survey = Survey.new({:name => "a".*(31)})
    expect(survey.save()).to(eq(false))
  end

  describe('#questions') do
    it('tells which questions are in the survey') do
      tsurvey1 = Survey.create({:name => "survey"})
      tquestion1 = Question.create({:question => "question 1", :survey_id => tsurvey1.id()})
      tquestion2 = Question.create({:question => "question 2", :survey_id => tsurvey1.id()})
      expect(tsurvey1.questions()).to(eq([tquestion1, tquestion2]))
    end
  end
end
