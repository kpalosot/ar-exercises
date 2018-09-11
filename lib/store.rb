# class MensWomensApparelValidator < ActiveModel::EachValidator
#   def validate_each(record)
#     record.errors.add(record, "cannot be both false since a store has to sell at least one apparel") unless record.mens_apparel || record.womens_apparel
#   end
# end

class Store < ActiveRecord::Base
  # include ActiveModel::Validations
  # validates

  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue,  numericality: {
                                minimum: 0
                              }
  # validates :mens_apparel, :womens_apparel MensWomensApparelValidator

  # def initialize
  #   @errors = ActiveModel::Errors.new(self)
  # end
end
