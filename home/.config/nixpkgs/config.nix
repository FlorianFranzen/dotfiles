{
  allowUnfree = true;

  config = {
    # Preferred wine config
    wine = {
      release = "staging";
      build = "wineWow";
    };
  };

  packageOverrides = pkgs:
  let
    wrapXWayland = drv: pkgs.symlinkJoin { 
      inherit (drv) name version meta;
      nativeBuildInputs = [ pkgs.makeWrapper ];
      paths = [ drv ];

      postBuild = ''
        for bin in $out/bin/*; do
          echo "- wrapping $bin..."
          wrapProgram "$bin" --set GDK_BACKEND x11
        done
      '';
    };
  in {
    # List of application not wayland compatible
    riot-desktop = wrapXWayland pkgs.riot-desktop;

    # Full featured version of opencv3
    opencv3_enterprise = pkgs.opencv3.override {
      enableUnfree = true;
      enablePython = true;
      pythonPackages = pkgs.python3Packages; 
      enableGtk3 = true;
      enableVtk = true;
      enableFfmpeg = true;
      enableGStreamer = true;
      enableTesseract = true;
      enableTbb = true;
      enableOvis = true;
      enableDocs = true;
    };

    # Jupyer Python 3 Compute Enviroment
    jupyterEnv = pkgs.python3.withPackages (
      ps: [
        ps.virtualenvwrapper
        ps.jupyterlab
        ps.ipython
        ps.nbconvert
        ps.numpy
        ps.scipy
        ps.matplotlib
        ps.construct
        ps.opencv3
      ]
    );
  };
}
