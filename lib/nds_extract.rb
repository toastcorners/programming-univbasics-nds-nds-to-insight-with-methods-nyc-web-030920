$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input


def gross_for_director(d)
total = 0
i = 0
while i < d[:movies].length do

total += d[:movies][i][:worldwide_gross]
i += 1
end
return total
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


  
  
  
  
  
