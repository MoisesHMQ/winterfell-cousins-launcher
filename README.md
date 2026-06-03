# Winterfell Cousins Launcher

Launcher customizado para o modpack Winterfell Cousins (Minecraft 1.21 + Fabric).

[![Download](https://img.shields.io/badge/BAIXAR_LAUNCHER-v1.2-green?style=for-the-badge)](https://github.com/gustavo-oliveira-rosa/winterfell-cousins-launcher/releases/download/v1.2/minecraft-launcher-1.0.jar)

## Como usar

1. Baixe o `.jar` clicando no botao acima
2. De duplo clique no arquivo
3. Insira seu nickname e clique em **JOGAR**

## Rodar direto no sistema operacional

Nao precisa de Docker nem de Gradle instalado. Tenha o Java instalado e rode:

### Windows

```bat
.\gradlew.bat run
```

### Linux/macOS

```sh
chmod +x ./gradlew
./gradlew run
```

Na primeira execucao o script baixa o Gradle em `~/.gradle/wrapper/dists`. Depois disso ele usa o Gradle local.

## Gerar o jar

```bat
.\gradlew.bat clean jar
```

O arquivo gerado fica em `build/libs/minecraft-launcher-1.0.jar`.

## Requisitos

- Java 21+ instalado
- 4GB+ de RAM
- Linux (Ubuntu/Debian), macOS ou Windows 10/11

---

Made by: koenomatachisan
