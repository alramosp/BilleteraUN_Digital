# Interfaz de Cliente

cliente = FibonacciClient .new( 'rpc_queue' )

pone '[x] Solicitando fib(30)' 
respuesta = client.call( 30 )

pone "[.] Tengo #{respuesta} "

# Cola de devolución de llamada

cola = canal.cola( '' , exclusivo:  verdadero )
intercambio = canal.intercambio_predeterminado

exchange.publish(mensaje, clave_enrutamiento:  'rpc_queue' , respuesta_a: cola.nombre)

# ... luego codifique para leer un mensaje de respuesta de callback_queue ...

