{ stdenv, fetchurl, autoconf, automake, libtool, pkgconfig, glib, gnome2, gdk_pixbuf }:

stdenv.mkDerivation rec {
  name = "xmedcon-${version}";
  version = "0.15.0";

  enableParallelBuilding = true;

  src = fetchurl {
    url = "https://downloads.sourceforge.net/project/xmedcon/XMedCon-Source/${version}/xmedcon-${version}.tar.bz2";
    sha256 = "0jkqj91cgaca91d75x0f2va8wz5ymhghx3n0pa35749znyygsplb";
  };

  buildInputs = [ autoconf automake libtool pkgconfig glib gnome2.gtk gdk_pixbuf ];
}
