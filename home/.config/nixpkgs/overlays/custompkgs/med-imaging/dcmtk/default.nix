{ stdenv, fetchurl, cmake, libtiff, libpng, openssl, libxml2, libsndfile, doxygen }:

stdenv.mkDerivation rec {
  name = "dcmtk-${version}";
  version = "3.6.3";

  enableParallelBuilding = true;

  src = fetchurl {
    url = "ftp://dicom.offis.de/pub/dicom/offis/software/dcmtk/dcmtk363/dcmtk-3.6.3.tar.gz";
    sha256 = "0c6m3vd2g8j65ffqils2z33fw11qckn1i0mv1kqm61k1ky977hv3";
  };

  cmakeFlags = [ "-DDCMTK_SHARED_LIBRARIES=ON" ];

  nativeBuildInputs = [ cmake doxygen ];
  buildInputs  = [ libtiff libpng openssl libxml2 libsndfile ];
}
