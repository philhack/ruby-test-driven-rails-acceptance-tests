class Achievement < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, presence: true
  enum privacy: [:public_access, :private_access, :friends_access]

  def description_html
     Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(description)
  end
end
