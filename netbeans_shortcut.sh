#!/bin/bash
FILE_PATH="$HOME/.local/share/applications/Netbeans.desktop"

# -p si no existe crea el directorio
mkdir -p "$HOME/.local/share/applications"

# Crear el archivo
cat <<EOF > "$FILE_PATH"
[Desktop Entry]
Type=Application
Categories=Software
Name=NetBeans
Icon=/opt/netbeans/nb/netbeans.png
Exec=/usr/local/bin/netbeans
EOF

echo "Archivo Netbeans creado en $FILE_PATH"

gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed "s/]$/, 'Netbeans.desktop']/")"

echo "Añadido Netbeans a favoritos"