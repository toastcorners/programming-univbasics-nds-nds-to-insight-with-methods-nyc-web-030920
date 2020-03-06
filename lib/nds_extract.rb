$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(direc)
my_hash = Hash.new
db = directors_database
d = 0
 while d < db.length do
 if db[d][:name] == direc
   t = 0 
      while t < directors[d][:movies].length do 
      total += directors[d][:movies][t][:worldwide_gross]
      t += 1 
    end
  my_hash.store("#{db[d][:name]}", total)
  d += 1
 end
  end
return my_hash
end



def directors_totals(nds)
  my_hash = {}
d = 0 
while d < nds.length do
total = 0 
  t = 0 
  while t < nds[d][:movies].length do 
     total += nds[d][:movies][t][:worldwide_gross]
    t += 1 
  end
  my_hash.store("#{nds[d][:name]}", total)
  d += 1
end 
 my_hash #return
end


  
  
  
  
  
