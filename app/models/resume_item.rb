class ResumeItem < ApplicationRecord
  validates_presence_of :category
  validates_presence_of :title
end
