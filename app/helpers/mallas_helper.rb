module MallasHelper
    
    def get_carrera(m)
      if m.carrera.respond_to?(:nombre)
          valor = m.plan << " ( "<< m.carrera.nombre << ")"
      else
          valor = m.plan << ""
      end
    end      
    
end
