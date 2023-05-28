def count_col_hits(k, pat_col, range_)
  length = range_.length
  all_colours = []

  val2 = 1 + 2 + k
  if !range_.include?(val2) && value(2,k) > 0
      return [1, pat_col[0]]
  else
    i = 3    # Je sens qu'il manque une condition sur la value neg ou pos
    while value(i, k) <= range_.max

      if value(i, k).include?(range_)
      # Je calcule le reste du modulo donc l'indice
      # array avec ça comme indice donne une couleur
      # Je pourrais faire un array qui stocke les couleurs
        all_colours << pat_col[value(i, k).divmod(length).last]
      end
        i += 1
    end

    # Puis je fais uniq.each et je compte chacun
    counting_colours = all_colours.uniq.map {|colour| [all_coulours.count(colour), colour]}
    # J'ai donc deux arrays de longueur pat_colour: un avec les couleurs,
    # un avec le nombre de fois que ça a été hit
    # Mon map devrait-il créer un array d'array
    # -> Oui, et ensuite je sort avec un block selon l'élément count!
    sorting_colours = counting_colors.sort {|colour_counted| colour_counted[0]}
  end
  return sorting_colours.last
end


def value(i, k)
  value(i-1) + i + k
end
