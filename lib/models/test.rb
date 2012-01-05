class Test

  include DataMapper::Resource
  property :id,         Serial    # An auto-increment integer key
  property :namn,       String
  

end
