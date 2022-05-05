# Sistemas Operativos y Redes

Repositorio de recursos de la materia Sistemas Operativos y Redes de Amerike. Semestre Febrero - Junio 2022.

## Enlaces importantes:

- [_Syllabus_](Syllabus_SistemasOperativosRedes.pdf)
- [Teoría S.O. y Redes](https://www.figma.com/file/HgxwQiIjpPUmd1YXzhAc4m/Sistemas-Operativos-y-Redes)
- [Teoría _Markdown_](TeoriaMarkdown.md)
- [Teoría _Git_](TeoriaGit.md)
- [Prácticas _Git_](PracticasGit.md)
- [Repositorio de Prácticas _Git_](https://github.com/jonmircha/amerike-repaso-git)
- [Prácticas 3er parcial](Practicas3er.md)
- [Teoría _BD_](TeoriaBD.md)

## Comandos vistos en clase

### Comandos Configuración

```bash
  git --version
  git config --global user.name "Nombre"
  git config --global user.email mi@correo.com
  git config --global user.ui true
  git config --global core.editor "code --wait"
  git config --list
  git config --global -e
  git config -h
  # saltos de línea en windows
  git config --global core.autocrlf true
  # saltos de línea en mac/linux
  git config --global core.autocrlf input
  git help config
```

### Comandos Ayuda

```bash
  git comando -h
  git help comando
```

### Comandos Inicialización

```bash
  mkdir carpeta
  cd carpeta
  code .
  touch README.md
  git init
  git add nombre.archivo
  git add .
  git commit
  git commit -m "Primer Commit"
```

### Comandos Cambios

```bash
  git status
  git status -s
  git diff
  git diff --staged
  git log
  git log --all
  git log --oneline
  git log --graph
  git log -n
  git log > commits.txt
  git log --after="2019-07-07 00:00:00"
  git log --before="2019-07-08 00:00:00"
  git log --after="2019-07-07 00:00:00" --before="2019-07-08 00:00:00"
```

### Comandos Línea de Tiempo

```bash
  git checkout id-commit
  git checkout rama
```

### Comandos Ramas

```bash
  git branch
  git checkout -b rama
```

### Comandos Fusión

```bash
  git ckeckout rama-principal
  git merge rama-secundaria
  git reflog
  git log --oneline --graph
```

### Comandos Remotos

```bash
  git remote add origin https://github.com/usuario/repositorio.git
  git remote
  git remote -v
  git branch -M main
  git push -u origin main
  git checkout rama
  git push origin rama
```

### Comandos _GitHub Pages_

```bash
  git clone https://github.com/usuario/repositorio.git
  git branch gh-pages
  git checkout gh-pages
  git remote add origin https://github.com/usuario/repositorio.git
  git push origin gh-pages
  URL del proyecto https://usuario.github.io/repositorio/
```

### Comandos Etiquetas

```bash
  git tag v0.1.0
  git tag
  git add .
  git commit -m "v0.1.0"
  git push origin v0.1.0
```

### Comandos _Pull Request_

```bash
  Forkear repositorio
  git clone https://github.com/usuario/repositorio.git
  git remote -v
  git remote rename old new (origin fork)
  git remote add origin https://github.com/usuario/repositorio.git
  git ckeckout -b rama-nueva
  git push fork rama-nueva
  Solicitar el pull request
  Aceptar el pull request
  git checkout main
  git pull origin main
  git push fork main
  git branch -d rama-nueva
  git push fork --delete rama-nueva
```
