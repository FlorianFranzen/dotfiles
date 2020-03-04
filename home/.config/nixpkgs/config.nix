{
  allowUnfree = true;

  config = {
    # Preffered wine config
    wine = {
      release = "staging";
      build = "wineWow";
    };
  };


  packageOverrides = pkgs: {
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
