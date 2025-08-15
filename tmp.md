# SEGURIDAD DIGITAL


## CIFRADO DE EXTREMO A EXTREMO Y METADATOS


*PROVEEDORES DE INTERNET*

Si estás en Venezuela, debes saber que los operadores de Internet (como Movistar, Cantv, Digitel y otros) pueden actuar como un Man-in-the-Middle (MITM), que en español significa “hombre en el medio”.

Esto ocurre cuando tu proveedor de Internet se coloca literalmente entre tu dispositivo y el servidor de destino, pudiendo interceptar, registrar e incluso modificar la información que viaja.

*En términos técnicos:*
- Cuando envías datos desde tu teléfono o computadora, estos se dividen en paquetes.
- Esos paquetes *viajan primero a través de la infraestructura de tu proveedor (ISP, tu proveedor de Internet).*
- Luego continúan hacia el servidor donde se encuentra el sitio web o servicio que usas.
- Durante el paso por el ISP, este puede inspeccionar o alterar el contenido antes de que llegue a su destino.

*En Venezuela, esta capacidad no es solo teórica:*
- Los ISPs han implementado bloqueos selectivos de sitios y apps.
- Existen reportes documentados de interceptación de tráfico HTTPS para filtrar o manipular información.
- La infraestructura de telecomunicaciones está centralizada, lo que facilita la vigilancia masiva.

*¿Cómo mitigarlo?*
- Debes instalar una VPN, por ejemplo, *ProtonVPN* preferiblemente o cualquier otra que sea confiable.
- Para temas sensibles, debes utilizar *Signal*. Debes convencer a tu interloculor que también lo use para dicho propósito.

Existen defensas más avanzadas que pueden aumentar tu seguridad, pero su implementación es más compleja y requiere aprendizaje progresivo. Lo importante es comenzar por estas medidas básicas y escalar la protección por etapas.

*BLQUEO DE SITIOS WEB*

En Venezuela, el bloqueo de sitios Web que he observado antes de salir del país se pueden producir de diversas formas, de las cuales, mencionaré algunas:
- *Bloqueo DNS:* esto significa que no puedes acceder a un sitio Web, por ejemplo, `https://unsitioweb.com`, porque el dominio no está apuntando a ningún lado. De hecho, en algunos casos, terminas apuntando a tu propio dispositivo.

    *¿Cómo resolverlo?*
    - Debes cambiar la dirección IP del servidor DNS. Generalmente, los DNS recomendados son los de Google y/o CloudFlare, pero no los únicos.

    *Servidores DNS de Google*
    - 8.8.8.8
    - 8.8.4.4

    *Servidores DNS de CloudFlare*
    - 1.1.1.1
    - 1.0.0.1

- *Bloque por medio de puertos*: cuando accedes a un sitio Web, los puertos utilizados por el protocolo HTTP son `80` y `443`
    - HTTP: utiliza puerto 80 (sin cifrado).
    - HTTPS: utiliza el puerto 443 (con cifrado).

    *¿Cómo resolverlo?*
    - Utiliza una VPN. Generalmente, recomendaría VPNs como *ProtonVPN* y/o *Mullvad*, pero puedes utilizar cualquier otra VPN confiable para ti.

- *Bloqueo por dirección IP:*

    Esta forma de bloque se da cuando la dirección IP a la que apunta el dominio se encuentra bloqueado por tu proveedor de Internet. Algunas veces, algunos sitios Web cuentan con dominios que tienen varias direcciones IPs.

    También se presentan casos donde el sitio Web no bloqueado apunta a servicios que tienen direcciones IPs bloqueadas por tu proveedor de Internet. El resultado a experimentar un sitio Web que no termina de cargar.

    *¿Cómo resolverlo?*
    - Utiliza una VPN. General, recomendaría VPNs como *ProtonVPN* y/o *Mullvad*, pero puedes utilizar cualquier otra VPN en la que confíes.

## DOXING

*Doxeo o doxing*:
Se refiere a cuando una persona publica información personal o sensible sobre ti sin tu consentimiento, sin importar si esa información ya estaba disponible públicamente.

En *Teoría de la Información*, existe un principio clave:
    - La información está oculta para quien no sabe qué buscar ni dónde buscarlo.
    - Dicho de otra forma, es invisible sin el contexto adecuado.

Comprender este principio te ayuda a entender que, incluso si tus datos están “a la vista”, solo se vuelven peligrosos cuando alguien sabe identificarlos, conectarlos y difundirlos.

Y, aplicando esta misma lógica, también *puedes rastrear* quién inició el *doxing* contra ti.

Generalmente, esta práctica está asociada a persecuciones políticas y su objetivo es amedrentarte o silenciarte.

## PREVENCIÓN DE DOXEO

Generalmente, uno en X no da más detalles de uno del que se debe, por lo tanto, cuando el mayor riesgo está en tu cuenta Facebook e Instagram, especialmente, Facebook.

Esto es, porque esta red social te va sugiriendo amistades con personas que tienen tu número, pero también le dice a todo el mundo quiénes son tus amigos y justo allí está el punto crítico.

*¿Cómo resolverlo?*
- No asocie tu red social principal con la de tu cuenta en X.
- Cambia tu perfil en Facebook y otras plataformas (si las tiene) como perfil restringido.
- No aceptes solicitud de amistad si no estás seguro quién es la persona que te envió la solicitud de amistad.

*Y para proteger a tus contactos*
- Debes ir a:
    - Configuración y privacidad.
    - 


Alguna página que se meta
