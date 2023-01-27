# == Schema Information
#
# Table name: pages
#
#  id             :integer          not null, primary key
#  title          :string
#  description    :text
#  keywords       :string
#  slug           :string
#  position       :integer
#  parent_id      :integer
#  template       :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  ancestry       :string
#  ancestry_depth :integer          default("0")
#  children_count :integer          default("0")
#  custom_content :jsonb            default("{}"), not null
#
# Indexes
#
#  index_pages_on_ancestry  (ancestry)
#  index_pages_on_slug      (slug) UNIQUE
#

class Page < ApplicationRecord
  extend FriendlyId
  include ActionText::Attachable
  acts_as_list
  has_ancestry cache_depth: true, counter_cache: true
  has_many :menuitems, as: :menuitemable
  friendly_id :title, use: :slugged
  validates :title, presence: true
  validates :template, presence: true
  has_rich_text :content
  has_rich_text :content_two
  has_many :fields, as: :fieldable

  def should_generate_new_friendly_id?
    slug.blank?
  end

  def self.templates
    Rails.application.config.custom_fields.map{|field| field[0]}
  end

  def custom_fields
    Rails.application.config.custom_fields[self.template.to_sym]
  end

  def custom_fields_names
    custom_fields.map{|field| field[0]}
  end

  def custom_fields_parameters
    a = []
    custom_fields.each do |field|
      if field[1][:type] == :multiselect
         a << {field[0] => []}
      else
        a << field[0]
      end
    end
    a
  end

  def to_trix_content_attachment_partial_path
    # you need to use this so each time editor is brought up this partial is used.  also set this partial in controller
    "links/link"
  end

  def to_s
    title
  end

  def link
    "/pages/#{slug}"
  end

  def link_search
    "pages:#{slug}"
  end
end
