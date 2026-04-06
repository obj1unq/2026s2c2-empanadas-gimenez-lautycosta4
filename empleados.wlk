
object galvan{
  var sueldo = 15000
  var deuda = 0
  var dinero = 0

    method sueldo(_sueldo){
        sueldo = _sueldo  //sueldo nuevo
    }

     method sueldo(){
        return sueldo
    }

    method deuda(){
        return deuda
    }
    method dinero(){
        return dinero
    }

    method cobrar_sueldo(){
        dinero = dinero + sueldo // cobra
         if (deuda > dinero) {
            deuda = deuda - dinero //paga parte de la deuda
            dinero = 0 
        } else {
            dinero = dinero - deuda //paga la deuda completa
            deuda = 0 //queda sin deuda
        }
    }
    method gastar(monto) {
        if (monto > dinero) {
            deuda = deuda + (monto - dinero) //actualiza la deuda del vendedor
            dinero = 0 //queda sin dinero
      } else {
            dinero = dinero - monto //paga y sobra
      }
    }

}

object baigorria {
  var sueldo = 0
  var emp_vend = 0
  const precio_emp = 15
  var sueldo_acumulado = 0

    method total_cobrado(){
        return sueldo_acumulado
    }

    method cobrar_sueldo(){
        sueldo_acumulado = sueldo_acumulado + sueldo 
        sueldo = 0 //reinicia el sueldo 
        emp_vend = 0 //reinicia la cantidad de empanadas vendidas 
    } 

    method sueldo(){
        return sueldo
    }

    method vender(_emp_vend){
        emp_vend = emp_vend + _emp_vend //actualiza la cantidad de empanadas vendidas
        sueldo = sueldo + _emp_vend * precio_emp //actualiza el sueldo del vendedor
        return _emp_vend * precio_emp   //devuelve la venta realizada en pesos
    } 
}

object gimenez {
  var fondo = 300000

    method fondo(){
        return fondo
    }

    method pagarSueldo(vendedor){
        fondo=fondo-vendedor.sueldo() //actualiza el fondo del negocio de acuerdo al sueldo del vendedor
        vendedor.cobrar_sueldo() //paga el sueldo al vendedor
    }
}
