# Extensión de dominio y consultas de dirección IP

[Índice de contenido](../Readme.md)

Esta guía le ayudará a comprender la importancia de las extensiones de dominio, así como los métodos para consultar las direcciones IP a las que apuntan los dominios y su respectivo registrador.

---

## Instalación de herramientas

Si está utilizando Linux basado en **Debian**, se recomienda instalar la herramienta `whois` con el siguiente comando:

```bash
sudo apt install whois
```

---

## Extensión de dominio

Una **extensión de dominio** permite identificar el propósito o la naturaleza de un sitio web.

* Por ejemplo, los dominios genéricos **`.com`** y **`.net`** fueron los primeros dominios principales.
* Existen también los dominios de **código de país (ccTLDs)** como `.cl`, `.ve`, `.co`, que indican a qué país está asociado el dominio.

Además, hay extensiones específicas según el tipo de institución:

* **Extensiones de dominio gubernamentales:**

  * `.gov`: Gobierno de EE.UU.
  * `.gob.ve`: Gobierno de Venezuela.
  * `.gob.ar`: Gobierno de Argentina.
  * `.gob.uy`: Gobierno de Uruguay.
  * `.gov.co`: Gobierno de Colombia.
  * *(La lista anterior solo incluye algunos ejemplos).*

* **Extensiones de dominio educativas:**

  * `.edu`: instituciones educativas en EE.UU.
  * `.edu.ve`, `.edu.co`: instituciones educativas en Venezuela o Colombia, respectivamente.

* **Extensiones de dominio para desarrolladores de software:**

  * `.dev`

> ⚠️ Importante: Las extensiones de dominio gubernamentales no están disponibles para cualquier persona o empresa. Solo pueden ser registradas por instituciones estatales en cada país.

---

### ¿Por qué es importante conocer esto?

Conocer la extensión de un dominio le permite navegar con mayor seguridad. Cuando visita un sitio web, identificar su extensión le ayuda a reconocer su propósito y confiabilidad.
Esto es esencial para prevenir ataques de **phishing**, ya que los atacantes suelen crear dominios falsos para engañar a los usuarios y obtener sus credenciales.

---

## Consultar dirección IP

Existen varias formas de consultar la dirección IP a la que apunta un dominio, dependiendo del sistema operativo que esté utilizando.

---

### Consultar dirección IP en Linux

En Linux puede consultar la dirección IP de un dominio con el siguiente comando:

```bash
host tudominio.com
```

También es posible especificar un servidor DNS de su preferencia, por ejemplo Cloudflare:

```bash
host tudominio.com 1.1.1.1
```

En este ejemplo:

* `1.1.1.1` corresponde al servidor DNS público de **Cloudflare**.
* También puede usar otros DNS, como los de **Google** (`8.8.8.8` o `8.8.4.4`).

---

### Consultar dirección IP en Windows

En Windows puede utilizar el siguiente comando en la terminal:

```bash
nslookup tudominio.com
```

> Nota: `nslookup` también funciona en Linux.

---

## Consultar Zona DNS (Linux)

Para obtener información más detallada sobre los registros DNS de un dominio, puede usar el comando `dig`:

```bash
dig tudominio.com
```

Por ejemplo, al consultar el dominio de **GitHub**:

```bash
dig github.com
```

El resultado será similar a:

```bash
; <<>> DiG 9.18.30-0ubuntu0.24.04.2-Ubuntu <<>> github.com
;; global options: +cmd
;; Got answer:
;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 12684
;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 1

;; OPT PSEUDOSECTION:
; EDNS: version: 0, flags:; udp: 65494
;; QUESTION SECTION:
;github.com.			IN	A

;; ANSWER SECTION:
github.com.		60	IN	A	140.82.113.4

;; Query time: 72 msec
;; SERVER: 127.0.0.53#53(127.0.0.53) (UDP)
;; WHEN: Thu Aug 28 21:53:50 -05 2025
;; MSG SIZE  rcvd: 55
```

Este resultado incluye información clave como:

* **Tipo de registro (A, MX, CNAME, etc.)**
* **Dirección IP** a la que apunta el dominio.
* **Tiempo de respuesta** de la consulta.
* **Servidor DNS** que resolvió la petición.

Aquí tienes una versión mejorada, más clara y profesional de tu fragmento, manteniendo la idea original pero con redacción más precisa y didáctica:

---

## Consultar registrador con WHOIS

**Whois** es una herramienta que permite obtener información pública sobre un dominio. Con ella es posible conocer datos como:

* ¿Cuándo fue registrado el dominio?
* ¿Cuándo fue su última actualización?
* ¿Quién es el registrante? (siempre que la información no esté protegida con privacidad).
* ¿Cuál es la empresa registradora del dominio?
* Entre otros detalles relacionados.

Para consultar un dominio, basta con ejecutar el siguiente comando en la terminal:

```bash
whois tudominio.com
```

Por ejemplo, si deseamos consultar el dominio de **GitHub**, utilizamos:

```bash
whois github.com
```

Esto nos devolverá una salida similar a la siguiente:

```bash
Domain Name: GITHUB.COM
Registry Domain ID: 1264983250_DOMAIN_COM-VRSN
Registrar WHOIS Server: whois.markmonitor.com
Registrar URL: http://www.markmonitor.com
Updated Date: 2024-09-07T09:16:32Z
Creation Date: 2007-10-09T18:20:50Z
Registry Expiry Date: 2026-10-09T18:20:50Z
Registrar: MarkMonitor Inc.
Registrar IANA ID: 292
Registrar Abuse Contact Email: abusecomplaints@markmonitor.com
Registrar Abuse Contact Phone: +1.2086851750
Domain Status: clientDeleteProhibited https://icann.org/epp#clientDeleteProhibited
Domain Status: clientTransferProhibited https://icann.org/epp#clientTransferProhibited
Domain Status: clientUpdateProhibited https://icann.org/epp#clientUpdateProhibited
Name Server: DNS1.P08.NSONE.NET
Name Server: DNS2.P08.NSONE.NET
Name Server: DNS3.P08.NSONE.NET
Name Server: DNS4.P08.NSONE.NET
Name Server: NS-1283.AWSDNS-32.ORG
Name Server: NS-1707.AWSDNS-21.CO.UK
Name Server: NS-421.AWSDNS-52.COM
Name Server: NS-520.AWSDNS-01.NET
DNSSEC: unsigned
URL of the ICANN Whois Inaccuracy Complaint Form: https://www.icann.org/wicf/
...
```

> ⚠️ Tenga en cuenta que aquí se muestra solo un fragmento del resultado. La información completa puede ser mucho más extensa e incluir otros detalles técnicos.