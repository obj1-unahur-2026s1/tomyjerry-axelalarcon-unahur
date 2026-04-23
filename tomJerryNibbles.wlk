object tom {
    var energia = 50
    var ratonComido = null
    var metrosCorridos = 0

    method ratonComido() = ratonComido

    method metrosCorridos() = metrosCorridos
    
    method velocidadMaxima() = 5 + energia / 10

    method puedeCazar(dist) {
        return energia - dist / 2 >= 0
    }

    method comer(raton) {
        energia += 12 + raton.peso()
        ratonComido = raton
    }

    method correr(metros) {
        energia -= metros / 2
        metrosCorridos = metros
    }

    method cazarRaton(dist, raton) {
        if (self.puedeCazar(dist)) {
            self.comer(raton)
        }
    }
}

object jerry {
    var edad = 2

    method peso() = edad * 20

    method cumplirAños() {
        edad += 1
    }
}

object nibbles {
  method peso() = 35
}

// Inventar otro ratón
object mice {
    method peso() = 500
}