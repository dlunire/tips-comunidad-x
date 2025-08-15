# Cifrado de Extremo a Extremo (E2EE)

[Índice de contenido](../Readme.md)

## ¿Qué es el cifrado de extremo a extremo?

El **cifrado de extremo a extremo (E2EE)** es un método de seguridad que asegura que los datos (como mensajes, archivos o llamadas) se cifren en el dispositivo del emisor y solo puedan descifrarse en el dispositivo del receptor.

Ningún intermediario, incluidos los servidores de la aplicación, los proveedores de servicios de Internet (ISPs) o posibles atacantes, puede acceder al contenido en texto plano.

### ¿Cómo funciona?

- **Generación de claves:** Cada usuario genera un par de claves criptográficas (pública y privada) en su dispositivo. La clave pública cifra los datos, mientras que la clave privada los descifra.

- **Cifrado local:** Antes de enviar un mensaje, el dispositivo del emisor lo cifra usando la clave pública del receptor. Este proceso ocurre localmente, sin intervención de servidores externos.

- **Transmisión segura:** Los datos cifrados viajan a través de la red (incluyendo servidores de la aplicación y el ISP) como un bloque ilegible.

- **Descifrado:** Solo el dispositivo del receptor, que posee la clave privada correspondiente, puede descifrar y leer el contenido.

### Características clave

- **Confidencialidad:** Solo el emisor y el receptor pueden leer el contenido.

- **Integridad:** Cualquier alteración de los datos en tránsito sería detectable (por ejemplo, mediante firmas digitales).

- **Sin intermediarios:** Ni siquiera los proveedores de la aplicación tienen acceso al contenido, ya que las claves nunca abandonan los dispositivos de los usuarios.

- **Protocolos comunes:** **E2EE** suele basarse en algoritmos robustos como **AES-256** para el cifrado simétrico y **RSA** o **Elliptic Curve Cryptography (ECC)** para el intercambio de claves.

### Ejemplo práctico

Cuando envías un mensaje por **Signal**, el texto se cifra en tu teléfono usando la clave pública del receptor. El servidor de **Signal** solo ve un bloque *cifrado y metadatos (como el remitente y la hora)*. Solo el receptor puede descifrarlo con su clave privada.

## Riesgos en el contexto venezolano

Aunque el **cifrado de extremo a extremo (E2EE)** protege el contenido de las comunicaciones, los metadatos —información estructural sobre la comunicación— no están cubiertos por este cifrado. En Venezuela, donde la infraestructura de telecomunicaciones está centralizada y existe un historial de vigilancia masiva, **los metadatos representan un riesgo significativo.**

### ¿Qué son los metadatos?

**Los metadatos incluyen:**

- Identidad de los comunicantes (números de teléfono, IDs de usuario).
- Fecha, hora y duración de la comunicación.
- Tamaño de los mensajes o archivos enviados.
- Direcciones IP de los dispositivos.
- Ubicación aproximada (si el dispositivo comparte datos de geolocalización).
- Patrones de uso (frecuencia y horarios de las comunicaciones).

### Riesgos específicos en Venezuela

- **Recopilación por ISPs:** Los proveedores de Internet **(como CANTV, Movistar o Digitel) pueden registrar metadatos**, especialmente en un contexto donde la vigilancia está facilitada por la centralización de la infraestructura de red.
  
- **Uso en vigilancia masiva:** Los metadatos pueden usarse para:
  - Mapear redes de contactos (quién se comunica con quién).
  - Inferir rutinas, comportamientos o afiliaciones políticas.
  - Correlacionar actividades en diferentes plataformas (por ejemplo, combinar datos de WhatsApp con registros de navegación).

- **Falta de protección legal:** En Venezuela, leyes como la **Ley de Responsabilidad Social en Radio, Televisión y Medios Electrónicos** y otras regulaciones ambiguas pueden facilitar el acceso de autoridades a metadatos sin supervisión judicial.

- **Ataques avanzados:** Técnicas como la **inspección profunda de paquetes (DPI)** o la correlación temporal pueden permitir a los **ISPs** o atacantes vincular metadatos a actividades específicas, incluso en aplicaciones con **E2EE**.

### Limitaciones del cifrado de Extremo a Extremo (E2EE)

- **No protege metadatos:** Aunque el contenido está seguro, los metadatos pueden revelar información sensible.
- **Dependencia de la aplicación:** La seguridad de E2EE depende de la implementación correcta del protocolo por parte de la aplicación (por ejemplo, Signal usa el protocolo Signal, considerado robusto).
- **Dispositivos comprometidos:** Si tu dispositivo está infectado con malware o es físicamente accesible, el cifrado puede ser inútil, ya que los atacantes podrían capturar datos antes de que se cifren.
- **Ataques MITM avanzados:** En casos extremos, los ISPs pueden intentar suplantar certificados SSL/TLS o explotar vulnerabilidades en la infraestructura de la aplicación para interceptar datos.

## Mitigación de riesgos

- Preferir aplicaciones con mínima recolección de metadatos
  - **Signal:**
    - **Por qué usarlo:** Implementa **cifrado de extremo a extremo (E2EE)** por defecto para mensajes, llamadas y videollamadas. Recolecta mínimos metadatos (solo el número de teléfono y la fecha de última conexión, cifrados en el servidor).
    - **Ventajas:** Código abierto, auditado regularmente, y con funciones como mensajes temporales que se autodestruyen.
    - **Cómo usarlo:** Descarga Signal desde [signal.org](https://signal.org/es/ "Signal") o tiendas de aplicaciones oficiales. Verifica la identidad de tus contactos usando el código de seguridad en la aplicación.
  
  - **Comparación con alternativas:**
    - **WhatsApp:** Usa **cifrado de extremo a extremo (E2EE)**, pero recolecta más metadatos (como contactos, grupos y patrones de uso) y pertenece a **Meta**, lo que genera preocupaciones de privacidad.
    - **Telegram:** Solo ofrece **cifrado de extremo a extremo (E2EE)** en *"Chats Secretos"*, no por defecto, y sus servidores están centralizados, lo que puede facilitar la **recolección de metadatos**.
    - **ProtonMail**: Ideal para correos electrónicos, con **cifrado de extremo a extremo (E2EE)** para mensajes entre usuarios de **ProtonMail**. Sus servidores están fuera de Venezuela, lo que reduce el riesgo de vigilancia local.

- **Habilitar mensajes temporales:**
  -  Configura mensajes que se autodestruyen después de un tiempo determinado en aplicaciones como Signal o Telegram (en chats secretos).
  -  **Beneficio:** Reduce la persistencia de datos sensibles, limitando la cantidad de información que podría ser comprometida si un dispositivo es confiscado o hackeado.

-  **¿Cómo hacerlo?**
   -  **En Signal:** Abre un chat, toca el nombre del contacto, selecciona *"Mensajes temporales"* y elige un **intervalo (por ejemplo, 1 día o 1 semana).**
   -  **En Telegram:** Usa un "Chat Secreto" y configura un temporizador para los mensajes.

-  **Evitar redes y dispositivos inseguros**
   -  **Redes públicas:** Evita conectarte a **Wi-Fi público** (cafés, aeropuertos) sin una VPN, ya que estas redes son vulnerables o facilitan ataques *Man in the Middle (MITM, Hombre en el Medio en español)*.
   -  *Dispositivos comprometidos:* Mantén tu sistema operativo y aplicaciones actualizados. Usa software antivirus confiable y evita instalar aplicaciones de fuentes no oficiales.
  
   -  **Prácticas seguras:**
      -  Habilita el bloqueo de pantalla con PIN o huella dactilar.
      -  Desactiva la geolocalización para aplicaciones de mensajería.
      -  Usa contraseñas fuertes y únicas para tus cuentas.
   
   - **Usar una VPN o Tor para ocultar metadatos:**
     -  **VPN (Red Privada Virtual):**
        -  **Función:** Cifra todo el tráfico de Internet y oculta tu dirección IP al ISP, dificultando el rastreo de metadatos a nivel de red.
        -  **Recomendaciones:**
           -  **ProtonVPN:** Ofrece un plan gratuito y opciones premium con servidores en múltiples países. Usa protocolos seguros como **OpenVPN** y **WireGuard**.
           -  **Mullvad:** Prioriza la privacidad, no requiere datos personales y permite pagos anónimos.
           -  **Otras opciones:** **NordVPN** o **Surfshark**, pero verifica su política de no registro.
        
        - **Limitación:** Una VPN no elimina los metadatos generados por la aplicación (por ejemplo, **Signal** o **WhatsApp**), pero reduce la visibilidad para el ISP.
        - **Configuración avanzada:** Usa servidores con ofuscación (disponibles en **ProtonVPN** y **Mullvad**) para sortear bloqueos de VPN en Venezuela.
   
   - **Tor Browser:**
     - **Función:** Redirige tu tráfico a través de múltiples nodos, anonimizando tu conexión y dificultando la correlación de metadatos.
     - **Ventajas:** Ideal para navegar sitios web sensibles o acceder a servicios bloqueados.
     - **Desventajas:** Más lento que una VPN y no es adecuado para aplicaciones de mensajería como **Signal**.
     - **Uso:** Descarga **Tor Browser** desde [torproject.org](https://www.torproject.org/es/ "Tor Project") y úsalo para navegación anónima.
   
   - **Verificación de seguridad:**
     - **Verificar claves en Signal:** Usa la función de "Código de seguridad" en Signal para confirmar que no hay un ataque Man in the Middle (MITM). Compara el código con tu contacto en persona o a través de otro canal seguro.
     - **Auditar aplicaciones:** Prefiere aplicaciones de código abierto (como Signal o ProtonMail) que hayan sido auditadas por expertos en seguridad.
     - **Monitorear conexiones:** Usa herramientas como OONI Probe ([ooni.org](https://ooni.org/ "OONI")) para detectar si tu **ISP** está manipulando o bloqueando tu tráfico.
   
   - **Medidas avanzadas:**
     - **Sistemas operativos seguros:**
       - **Tails:** Un sistema operativo portátil basado en Linux, diseñado para anonimato y privacidad. **Úsalo desde una USB en escenarios de alto riesgo.**
       - **Qubes OS:** Un sistema operativo que aísla aplicaciones en entornos virtualizados para mayor seguridad.
     
     - **Cifrado de dispositivos:** Cifra el almacenamiento de tu teléfono o computadora (por ejemplo, usando **BitLocker** en Windows o FileVault en macOS) para proteger datos en caso de confiscación.
     - **Redes descentralizadas:** Explora herramientas como **IPFS (InterPlanetary File System)** para compartir archivos de forma segura sin depender de servidores centralizados.
     - **Autenticación multifactor (MFA):** Habilita MFA en tus cuentas (por ejemplo, ProtonMail) para añadir una capa adicional de seguridad.

## Contexto legal en Venezuela

En Venezuela no existe ningún amparo legal en la práctica (por vía de hecho), por lo que debe tomar medidas para protegerse.

## Recomendaciones finales

- **Educa a tus contactos:** La seguridad de E2EE depende de que ambas partes usen herramientas seguras. Convence a tus contactos de adoptar Signal u otras aplicaciones confiables.

- **Combina herramientas:** Usa E2EE (Signal, ProtonMail) junto con una VPN o Tor para proteger tanto el contenido como los metadatos.

- **Mantente actualizado:** Las aplicaciones y protocolos evolucionan. Revisa regularmente las actualizaciones de seguridad de tus herramientas.

- **Escala tu protección:** Comienza con soluciones simples (Signal + VPN) y avanza hacia herramientas más avanzadas (Tor, Tails) según tus necesidades y conocimientos.

Esta sección proporciona una base sólida para entender y aplicar el cifrado de extremo a extremo en Venezuela. Para dudas específicas o escenarios de alto riesgo, consulta con expertos en ciberseguridad.