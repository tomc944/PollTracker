class Response < ActiveRecord::Base

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: "AnswerChoice"

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: "User"

  has_one :question,
    through: :answer_choice,
    source: :question

  validates :user_id, presence: true
  validates :answer_choice_id, presence: true



  def sibling_responses
    #return nil if self.id.nil?
    self.question.responses
      .where('"responses".id != ?', self.id).where.not(self.id: "NULL")
  end

end
