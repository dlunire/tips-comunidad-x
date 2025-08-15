# Guía de Seguridad en Internet en Venezuela

[Índice de contenido](../Readme.md)


## Proveedores de Internet y Ataques Man-in-the-Middle (MITM)

En Venezuela, los proveedores de servicios de Internet (ISPs), como Movistar, CANTV, Digitel, entre otros, tienen la capacidad técnica de actuar como un **"hombre en el medio" (Man-in-the-Middle, MITM)**. Este tipo de ataque implica que el ISP se interpone entre tu dispositivo y el servidor de destino, pudiendo interceptar, registrar o modificar los datos transmitidos.

> IMPORTANTE: Ataque Man-in-the-Middle (MITM)
> 
> Un ataque **Man-in-the-Middle (MITM), u "Hombre en el Medio" en español**, ocurre cuando un agente (como un proveedor de Internet, un atacante o un dispositivo comprometido) se interpone entre tu dispositivo y el servidor de destino.
> 
> Este agente puede interceptar, monitorear o modificar el tráfico de datos sin que lo detectes.
> 
> En términos técnicos, el atacante se posiciona en la ruta de comunicación, comprometiendo la confidencialidad e integridad de la información transmitida, incluso en conexiones cifradas si se emplean técnicas avanzadas como la suplantación de certificados SSL/TLS.

### ¿Cómo funciona un ataque MITM?

- **Fragmentación de datos:** Cuando envías o recibes datos desde tu dispositivo (computadora, teléfono, etc.), estos se dividen en paquetes que viajan a través de la infraestructura del ISP antes de llegar al servidor de destino (por ejemplo, un sitio web o una aplicación).

- **Inspección y manipulación:** Durante su paso por la infraestructura del ISP, los paquetes pueden ser analizados o alterados. Esto incluye tráfico cifrado (HTTPS) si el ISP utiliza técnicas avanzadas, como la inspección profunda de paquetes (DPI, Deep Packet Inspection) o la suplantación de certificados SSL/TLS.

- **Contexto en Venezuela:**
    Los ISPs en Venezuela han implementado bloqueos selectivos de sitios web y aplicaciones, restringiendo el acceso a contenidos específicos.

    Hay reportes documentados de interceptación de tráfico **HTTPS** para filtrar o manipular datos, facilitada por la centralización de la infraestructura de telecomunicaciones.

    La vigilancia masiva es viable debido al control estatal sobre los principales nodos de red.



### Medidas de mitigación

- **Usar una VPN confiable:**
    Una red privada virtual (VPN) cifra tu tráfico de Internet, dificultando la interceptación o manipulación por parte del ISP.

- **Recomendaciones:**
    **ProtonVPN:** Ofrece un plan gratuito y opciones de pago con servidores en múltiples países, utilizando protocolos seguros como OpenVPN y WireGuard.

    **Mullvad:** Prioriza la privacidad y no requiere datos personales para registrarse.
    Otras opciones confiables incluyen NordVPN o Surfshark, pero verifica que utilicen protocolos seguros y no almacenen registros de actividad.


> **PRECAUCIÓN:**
> 
> Evita VPNs gratuitas poco conocidas, ya que pueden comprometer tu privacidad al registrar o vender tus datos.


Usar aplicaciones de mensajería cifrada:
Para comunicaciones sensibles, utiliza Signal, que ofrece cifrado de extremo a extremo por defecto. Asegúrate de que tus contactos también usen Signal para garantizar la seguridad.
Alternativas como WhatsApp o Telegram pueden ser menos seguras, especialmente si no se configura el cifrado de extremo a extremo (en el caso de Telegram, solo disponible en chats secretos).


Defensas avanzadas:
Configura un DNS seguro (ver sección de bloqueo DNS).
Usa navegadores con funciones de privacidad, como Tor Browser o Firefox con extensiones como uBlock Origin y HTTPS Everywhere.
Considera el uso de sistemas operativos orientados a la privacidad, como Tails o Qubes OS, para escenarios de alta seguridad, aunque requieren conocimientos técnicos avanzados.




Bloqueo de Sitios Web en Venezuela
En Venezuela, los proveedores de Internet emplean varias técnicas para bloquear el acceso a sitios web y servicios en línea. A continuación, se describen las más comunes y cómo mitigarlas:
1. Bloqueo DNS
El bloqueo DNS ocurre cuando el ISP impide que un dominio (por ejemplo, https://unsitioweb.com) se resuelva a su dirección IP correspondiente. Esto puede redirigir el tráfico a una página de error, a un servidor del ISP, o incluso a tu propio dispositivo (localhost).
Solución:

Cambiar los servidores DNS:
Configura tu dispositivo o router para usar servidores DNS alternativos que no estén controlados por el ISP.
DNS recomendados:
Google Public DNS:
8.8.8.8
8.8.4.4


Cloudflare DNS:
1.1.1.1
1.0.0.1


Quad9 (enfocado en seguridad):
9.9.9.9
149.112.112.112




Instrucciones:
En tu dispositivo, accede a la configuración de red y cambia los servidores DNS manualmente.
Para mayor seguridad, usa DNS sobre HTTPS (DoH) o DNS sobre TLS (DoT), soportados por navegadores como Firefox o aplicaciones como Intra (disponible en Android).


Nota: Algunos ISPs pueden bloquear estos servidores DNS. En ese caso, una VPN es la solución más efectiva.



2. Bloqueo por Puertos
Los sitios web y servicios en línea suelen usar los puertos 80 (HTTP, sin cifrado) y 443 (HTTPS, con cifrado). Los ISPs pueden bloquear estos puertos para restringir el acceso a ciertos sitios o servicios.
Solución:

Usar una VPN:
Una VPN redirige tu tráfico a través de un túnel cifrado, utilizando puertos alternativos (como 1194 para OpenVPN o 51820 para WireGuard), lo que dificulta el bloqueo por parte del ISP.
Recomendaciones: Usa ProtonVPN o Mullvad, que ofrecen configuraciones avanzadas para sortear bloqueos de puertos.
Configuración adicional: Si el ISP bloquea puertos específicos de la VPN, prueba con protocolos alternativos (como WireGuard) o servidores con ofuscación (disponibles en algunas VPNs premium).


Alternativa: Usa Tor Browser, que redirige el tráfico a través de múltiples nodos, aunque puede ser más lento.

3. Bloqueo por Dirección IP
El bloqueo por dirección IP ocurre cuando el ISP bloquea la IP del servidor al que intentas acceder. Esto puede afectar sitios web con una sola IP o servicios que dependen de IPs específicas, causando que las páginas no carguen completamente o fallen.
Solución:

Usar una VPN:
Una VPN enmascara tu tráfico y redirige tus conexiones a través de servidores en otros países, evitando el bloqueo de IPs locales.
Recomendaciones: ProtonVPN y Mullvad son opciones confiables. Asegúrate de seleccionar servidores en países con poca censura.


Usar redes descentralizadas:
En casos extremos, considera herramientas como Tor o redes descentralizadas como IPFS (InterPlanetary File System) para acceder a contenido bloqueado, aunque requieren conocimientos técnicos.


Verificar direcciones IP múltiples:
Algunos sitios web usan múltiples IPs para un mismo dominio. Cambiar el DNS (como se describió anteriormente) puede ayudar a resolver el dominio a una IP no bloqueada.




Recomendaciones Generales

Mantén tus dispositivos actualizados: Asegúrate de que tu sistema operativo, navegador y aplicaciones estén al día para evitar vulnerabilidades.
Educa a tus contactos: La seguridad es más efectiva si todos los involucrados en una comunicación adoptan las mismas medidas (por ejemplo, usar Signal).
Escala tu protección gradualmente: Comienza con una VPN y DNS seguros, y luego explora herramientas más avanzadas como Tor o sistemas operativos seguros según tus necesidades.
Monitorea tu conexión: Usa herramientas como OONI Probe para detectar bloqueos y censura en tu red.

Esta guía proporciona una base sólida para proteger tu privacidad y sortear restricciones en Internet en Venezuela. Para necesidades específicas o escenarios de alto riesgo, consulta con expertos en ciberseguridad.