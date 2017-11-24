class Clickresult < ApplicationRecord
  belongs_to :member

  def self.to_csv
    CSV.generate(encoding: Encoding::SJIS, row_sep: "\r\n", force_quotes: true) do |csv|
      csv << csv_column_names
      all.each do |data|
        csv << data.csv_column_values
      end
    end
  end

  def self.csv_column_names
    ['member_id', 'TaskResult', 'create']
  end

  def csv_column_values
    [member_id, clickTaskResult, created_at]
  end
end
