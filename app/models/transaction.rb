class Transaction < ApplicationRecord
  belongs_to :user

  def self.to_csv
    attributes = %w{id amount cat_id}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |transaction|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end
end
