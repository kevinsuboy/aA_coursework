# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  content    :string           not null
#  title      :string           not null
#  url        :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sub_id     :integer          not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_posts_on_sub_id   (sub_id)
#  index_posts_on_user_id  (user_id)
#
require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
