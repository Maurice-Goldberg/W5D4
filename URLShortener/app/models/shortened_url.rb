# == Schema Information
#
# Table name: shortened_urls
#
#  id         :integer          not null, primary key
#  short_url  :string
#  long_url   :string           not null
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShortenedUrl < ApplicationRecord
    validates :short_url, presence: true, unique: true
    validates :long_url, presence: true

    belongs_to :user,
        class_name: 'User',
        primary_key: :id,
        foreign_key: :user_id

end
