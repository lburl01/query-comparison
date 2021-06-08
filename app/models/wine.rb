class Wine < ApplicationRecord
  before_save :normalize_name

  private

  def normalize_name
    return if name.blank?

    self.name_normalized = I18n.transliterate(name)
  end
end
