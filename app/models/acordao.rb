class Acordao
  include MongoMapper::Document
  set_collection_name "all"

  key :_id, ObjectId
  key :acordaoId, String, :required => true
  key :dataJulg, Date 
  key :relator, String
  key :ementa, String
  key :decisao, String
  key :citacoes, String
  key :local, String

end
