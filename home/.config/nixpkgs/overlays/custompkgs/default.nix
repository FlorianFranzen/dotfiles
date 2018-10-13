self: super: let
  callPackage = super.lib.callPackageWith self;
in {
  dcmtk = callPackage ./med-imaging/dcmtk { };
  
  aeskulap    = callPackage ./med-imaging/aeskulap { };
  amide       = callPackage ./med-imaging/amide    { };
  #ginkgo-cadx = callPackage ./ginkgo-cadx.nix       { };
  mia         = callPackage ./med-imaging/mia      { };
  xmedcon     = callPackage ./med-imaging/xmedcon  { };

  #eeshow = callPackage ./eda/eeshow { };

  #fig2dev      = callPackage ./gui/fig2dev { };
  #libqglviewer = callPackage ./gui/libqglviewer { };
 
  #liblsdslam = callPackage ./slam/lsd { };

  #g2o    = callPackage ./science/g2o { };
  #kwiver = callPackage ./science/kwiver { };
  #sophus = callPackage ./science/sophus { };
  #vxl    = callPackage ./science/vxl { };
}
