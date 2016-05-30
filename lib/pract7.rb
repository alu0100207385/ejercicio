require_relative "pract7/version"

module Pract7

	class Libro
	  
	  # La estructura de datos es opcional: hash, array o strings
	  def initialize (autores, titulo, nserie, editorial, nedicion, fecha_pub, isbn)
	  	@libro = {:autores => autores, :titulo => titulo, :nserie => nserie,
	  						:editorial => editorial, :nedicion => nedicion, :fecha_pub => fecha_pub,
	  						:isbn => isbn}
	  end

	  def get_autores
	  	@libro[:autores]
	  end

	  def get_titulo
	  	@libro[:titulo]
	  end

	  def get_nserie
	  	@libro[:nserie]
	  end

	  def get_editorial
	  	@libro[:editorial]
	  end

	  def get_nedicion
	  	@libro[:nedicion]
	  end

	  def get_fecha_pub
	  	@libro[:fecha_pub]
	  end

	  def get_isbn
	  	@libro[:isbn]
	  end

	  def show
	  	@libro.to_s
	  end

	  def to_s
	  	"#{@libro[:autores]}. #{@libro[:titulo]}."+
	  	"#{@libro[:editorial]}; #{@libro[:nedicion]} (#{@libro[:fecha_pub]}). #{@libro[:isbn]}\n\n"
	  end

	end
end
