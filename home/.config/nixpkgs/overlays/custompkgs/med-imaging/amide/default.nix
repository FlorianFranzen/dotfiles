{ stdenv, fetchurl, autoconf, gnum4, pkgconfig, intltool, gnome2, gnome_doc_utils, gsl, libxml2, dcmtk, xmedcon }:

stdenv.mkDerivation rec {
  name = "AMIDE-${version}";
  version = "1.0.5";
  
  enableParallelBuilding = true;

  src = fetchurl {
    url = "https://downloads.sourceforge.net/project/amide/amide/${version}/amide-${version}.tgz";
    sha256 = "10aqvs3p8wdq45bsllzx0s51zlgjv1nm6pffrkvaaz5gcciq2knm";
  };

  patches = [ ./missing_bracket.patch ];

  nativeBuildInputs = [ autoconf gnum4 pkgconfig intltool ];
  buildInputs = with gnome2; [ glib gtk GConf gnome_vfs gtk-doc libgnomecanvas 
                               gnome_doc_utils libxml2 dcmtk xmedcon ];
}
