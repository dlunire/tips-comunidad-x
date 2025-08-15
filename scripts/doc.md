# Guía de uso de OONI desde la terminal

## Probar sitios Webs

Después de haber ejecutado el script [insta-onni.sh](../scripts/install-ooni.sh "Script de instalación de OONI") puede ejecutar el siguiente comando para probar un sitio Web:

```bash
ooniprobe run websites --input https://sitioweb.com
```

O múltiples sitios Web:

```bash
ooniprobe run websites --input-file websites-example.txt
```

Después que hayas realizado varias pruebas o experimentos, puedes ejecutar el siguiente comando:

```bash
ooniprobe list
```

## Ampliar información de uso

Puede consultar la documentación oficial de [onni.org][0]

[0]: https://ooni.org/support/ooni-probe-cli/ "Guía de uso - Web Oficial"