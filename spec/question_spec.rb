require('spec_helper')

describe(Question) do

  it('changes the case of the question to all lowercase') do
    question1 = Question.create({:question => "HOW DO YOU LIKE YOUR STABBY LAMBDA?"})
    expect(question1.question()).to(eq("how do you like your stabby lambda?"))
  end

  it('validates the presence of a question') do
    question = Question.new({:question => ""})
    expect(question.save()).to(eq(false))
  end

  it("Ensures the length of the question is at most 100 characters") do
    question = Question.new({:question => "a".*(101)})
    expect(question.save()).to(eq(false))
  end

describe('#survey') do
  it("tells which survey a question belongs to") do
    tsurvey = Survey.create({:name => "Favorite Language"})
    tquestion = Question.create({:question => "C# or Ruby? or CSS?", :survey_id => tsurvey.id})
    expect(tquestion.survey()).to(eq(tsurvey))
  end
end

end
