class Jugador
    
    attr_accessor :nombre , :vida, :golpe
    
    def initialize(params)
        @nombre = params[:nombre]
        @vida = params[:vida]
        @golpe = params[:golpe]
    end
    
    def ataca(otro)
        otro.vida -= self.golpe
       puts "#{self.nombre} ha hecho #{@golpe} de daño a #{otro.nombre}"
    end
    
    def to_s
        "Jugador #{@nombre} Vida: #{@vida} Ataque: #{@golpe}"
    end
    
    def alive?
        if @vida > 0
            true
        else
            false
        end
    end
end

matias = Jugador.new(nombre: 'Matias', vida: 100, golpe: 20)
erick = Jugador.new(nombre: 'Erick', vida: 100, golpe: 10)

turno = 0
while matias.alive? && erick.alive?
    turno += 1
    puts '===Turno: #{turno}==='

    puts matias.to_s 
    puts erick.to_s 

    matias.ataca(erick)
    erick.ataca(matias)
end
