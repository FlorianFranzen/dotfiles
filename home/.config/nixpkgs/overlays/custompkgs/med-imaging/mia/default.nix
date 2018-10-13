{ stdenv, 
  fetchFromGitHub, 
  cmake,
  pkgconfig,
  python,
  boost,
  gsl,
  libxml2,
  openblas,
  fftw,
  fftwFloat,
  eigen,
  libpng,
  libtiff,
  dcmtk
}:
let
  pythonWithXml = python.withPackages (ps: [ ps.lxml ] );
in
stdenv.mkDerivation rec {
  name = "mia-${version}";
  version = "2.4.6";

  enableParallelBuilding = true;

  src = fetchFromGitHub {
    owner = "gerddie";
    repo = "mia";
    rev = "${version}";
    sha256 = "18qz1ihfg1szpyam1x33nv2sai9q3n4585npb5d99s0fsxw5p7hp";
  };

  nativeBuildInputs = [ cmake pkgconfig pythonWithXml ]; 
  buildInputs = [ boost gsl libxml2 openblas fftw fftwFloat eigen dcmtk ];
}
