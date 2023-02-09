#!/bin/sh

install_package() {
  package=$1
  if yay -Qi $package > /dev/null 2>&1; then
    echo "Package '$package' is already installed."
  else
    echo "Installing package '$package'..."
    yay -S --noconfirm $package
  fi
}

packages="spotify visual-studio-code-bin brave onlyoffice-desktopeditors google-chrome zoom minecraft-launcher android-studio virtualbox-ext-oracle whatsapp-nativefier teamviewer woeusb-ng"

for package in $packages; do
  install_package $package
done
