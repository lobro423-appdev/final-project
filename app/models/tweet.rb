# == Schema Information
#
# Table name: tweets
#
#  id          :integer          not null, primary key
#  body        :string
#  url         :string
#  notes       :string
#  category_id :integer
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Tweet < ApplicationRecord
    belongs_to :users
    belongs_to :categories
end
