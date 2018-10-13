{ stdenv, 
  fetchFromGitHub, 
  wrapGAppsHook, 
  autoconf, 
  automake, 
  intltool, 
  pkgconfig, 
  libtool, 
  gnome2, 
  gsettings_desktop_schemas,
  dcmtk, 
  openssl
}:

stdenv.mkDerivation rec {
  name = "aeskulap-${version}";
  version = "0.2.2b2";

  enableParallelBuilding = true;
  
  src = fetchFromGitHub {
    owner = "jenslody";
    repo = "aeskulap";
    rev = "release-0-2-2-beta2";
    sha256 = "0858i8bm6gfjiawijxd7g1xxlwz3k7qs4kg2iwx8vjbfsfz0nlg5";
  };

  preConfigurePhases = "autoconfPhase";

  autoconfPhase = "./autogen.sh";

  nativeBuildInputs = [ wrapGAppsHook autoconf automake intltool libtool pkgconfig ]; 
  buildInputs = with gnome2; [ gtkmm GConf libglademm gsettings_desktop_schemas dcmtk openssl ];
}
