//EJERCICIO 1
object galvan{
  var sueldo = 15000

    method sueldo(_sueldo){
        sueldo = _sueldo  //sueldo nuevo
    }

     method sueldo(){
        return sueldo
    }

}

object baigorria {
  var sueldo = 0
  var emp_vend = 0
  const precio_emp = 15

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
        return fondo
    }
}
