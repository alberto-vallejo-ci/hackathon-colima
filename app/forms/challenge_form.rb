class ChallengeForm
  include ActiveModel::Model
  include Virtus.model

  attribute :name, String
  attribute :description, String

  validates :name, :description, presence: true

  attr_accessor :challenge

  def initialize(challenge: nil, params: {})
    @challenge = challenge || Challenge.new
    @name = params[:name]
    @description = params[:description]
    super(params)
  end

  def save!
    return unless valid?
    challenge.name = name
    challenge.description = description
    challenge.save!
  end
end
