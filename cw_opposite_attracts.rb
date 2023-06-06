# Solution qui marche
def lovefunc( flower1, flower2 )
  (flower1 % 2) != (flower2 % 2)
end


# Autre solution qui marche ?
def lovefunc( flower1, flower2 )
  flower1.odd? && flower2.even? || flower1.even? && flower2.odd?
end

# VARIANTES
# Smart!!
def lovefunc( flower1, flower2 )
  (flower1 + flower2).odd?
end

# ça suffisait par rapport à moi qui aie fait les 2 cas car si c'est false == false ça fait true
def lovefunc( flower1, flower2 )
  flower1.odd? == flower2.even?
end


