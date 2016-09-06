class ChallengeForm
  include ActiveModel::Model
  include Virtus.model

  attribute :title, String
  attribute :owner_name, String
  attribute :owner_email, String
  attribute :owner_phone, String
  attribute :description, String
  attribute :description_how, String
  attribute :is_looking_for_team, Boolean
  attribute :profile_requirements, String
  attribute :location, String

  validates :title, :description, presence: true

  attr_accessor :challenge

  def initialize(challenge: nil, params: {})
    @challenge = challenge || Challenge.new
    @title = params[:title]
    @description = params[:description]
    super(params)
  end

  def save!
    return unless valid?
    challenge.assign_attributes attributes
    challenge.category_id = 1
    challenge.save!
  end
end
