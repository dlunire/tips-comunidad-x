# PH0MBER

[Índice de contenido](../Readme.md)

## ¿Qué es PH0MBER?

`PH0MBER` es un **framework de OSINT (Inteligencia de Fuentes Abiertas)** diseñado para simplificar la recopilación y el análisis de información sobre objetivos específicos. Esta herramienta permite obtener datos relevantes, como números de teléfono, direcciones IP e información de nombres de dominio, integrando múltiples fuentes públicas disponibles.

Su arquitectura modular y su interfaz de línea de comandos (CLI) facilitan su integración en flujos de trabajo automatizados y análisis forenses, proporcionando eficiencia y precisión en la recolección de datos.

---

## Instalación

### 1. Clonando el repositorio

Para comenzar, clona el proyecto:

```bash
git clone https://github.com/s41r4j/phomber
```

Accede al directorio del proyecto:

```bash
cd phomber
```

Y finalmente, instala las dependencias:

```bash
pip3 install -r pyproject.toml
```

### 2. Instalación vía PIP

También puedes instalar PH0MBER directamente con PIP:

```bash
pip install phomber
```

### 3. Instalación con Docker

Para ejecutarlo mediante Docker, utiliza los siguientes comandos:

```bash
docker pull sinawic/phomber:latest
docker run --rm -it sinawic/phomber:latest
```

---

## Uso

PH0MBER se ejecuta desde la línea de comandos. La sintaxis general es:

```bash
phomber <opciones> <objetivo>
```

### Ejemplos de uso

* **Escaneo de un número de teléfono:**

```bash
phomber --phone +1234567890
```

* **Recopilación de información de un dominio:**

```bash
phomber --domain ejemplo.com
```

* **Búsqueda de dirección IP:**

```bash
phomber --ip 192.168.0.1
```

* **Ver todas las opciones disponibles:**

```bash
phomber --help
```

> Estas opciones permiten ajustar el tipo de información que deseas recopilar y explorar diferentes fuentes públicas disponibles.

---

## Repositorio oficial

Para más información, consulta el [repositorio oficial en GitHub](https://github.com/s41r4j/phomber "Framework PH0MBER de OSINT"), donde podrás clonar el proyecto, acceder a documentación adicional y ejemplos de uso.