# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  topic      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ApplicationRecord
end
