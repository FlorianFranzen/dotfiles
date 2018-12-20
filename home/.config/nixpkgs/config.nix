{
  allowUnfree = true;

  packageOverrides = pkgs: {

    opencv3 = pkgs.opencv3.override {
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

    # Use multiarch staging by default
    wine = pkgs.wineWowPackages.staging;

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
