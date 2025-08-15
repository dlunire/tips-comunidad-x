# Cifrado de Extremo a Extremo (E2EE)

## ¿Qué es?

Es un método de cifrado en el que el contenido del mensaje se cifra en el dispositivo del emisor y **solo puede descifrarse en el dispositivo del receptor**. Ningún intermediario —incluidos servidores de la aplicación— puede acceder al contenido en texto plano.

## Riesgo en Venezuela

Aunque aplicaciones como **WhatsApp** o **Signal** implementan cifrado de extremo a extremo, los **metadatos** —información estructural sobre la comunicación, como quién se comunica con quién, la fecha y hora, la duración de la interacción, el tamaño del mensaje, la dirección IP y, en algunos casos, la ubicación aproximada— **pueden ser recopilados por terceros o interceptados por el *Proveedor de Servicios de Internet (ISP)***.

Estos metadatos **no están protegidos por el cifrado de extremo a extremo (E2EE)**. En entornos con baja protección legal a la privacidad, pueden ser usados para:

- Mapear redes de contactos.
- Inferir rutinas y patrones de comportamiento.
- Correlacionar actividades en distintas plataformas.

Incluso si el contenido está cifrado, la correlación de metadatos puede generar perfiles detallados de los usuarios.

## Mitigación

Puede seguir estos recomendados para reducir el riesgo:

- **Preferir Signal**: retiene menos metadatos que WhatsApp y aplica políticas estrictas de minimización de datos.
- **Mensajes temporales**: configurar autodestrucción para reducir la persistencia de información sensible.
- **Evitar redes y dispositivos inseguros**: no transmitir datos críticos desde equipos comprometidos o redes públicas no cifradas.
- **Uso de VPN o Tor**: ayuda a ocultar la dirección IP y ofuscar el origen de la conexión, dificultando el rastreo de metadatos a nivel de red.

  > IMPORTANTE:
  >
  > Una VPN no elimina la generación de metadatos en el servidor de la aplicación, solo limita lo que el ISP puede ver.