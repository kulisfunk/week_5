require 'PG'

class SqlRunner

  def self.run(sql, tag, values)
      db = PG.connect({ dbname: 'records', host: 'localhost'})
      db.prepare(tag, sql)
      result = db.exec_prepared(tag, values)
      db.close()
    return result
  end
end
