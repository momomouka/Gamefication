class Alledit < ApplicationRecord

  def self.to_csv
    CSV.generate(encoding: Encoding::SJIS, row_sep: "\r\n", force_quotes: true) do |csv|
      csv << csv_column_names
      all.each do |data|
        csv << data.csv_column_values
      end
    end
  end

  def self.csv_column_names
    ["ID", "fullname", "name", "email", "gender", "birtyday", "passname",
     "tasktype", "gametype", "membertype"]
  end

  def csv_column_values
    [id, fullname, name, email, gender, birthday, passname, tasktype, gametype, membertype]
  end

end
