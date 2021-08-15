{
  allowUnfree = true;

  segger-jlink.acceptLicense = true;

  packageOverrides = pkgs: {
    swaylock-effects = pkgs.swaylock-effects.overrideAttrs (old: {
      src = pkgs.fetchFromGitHub {
        owner = "mortie";
        repo = "swaylock-effects";
        rev = "80421107675e8cc9eb24502339dad079b83818e4";
        sha256 = "0arkvdwidww3pl89hkl13lii9pj14rslx7lh5wc9sssbymp6qijy";
      };
    });

    workstyle = pkgs.workstyle.overrideAttrs (old: {
      src = pkgs.fetchFromGitHub {
        owner = "pierrechevalier83";
        repo = old.pname;
        rev = "f2023750d802259ab3ee7d7d1762631ec157a0b1";
        sha256 = "04xds691sw4pi2nq8xvdhn0312wwia60gkd8b1bjqy11zrqbivbx";
      };
      cargoSha256 = "0xwv8spr96z4aimjlr15bhwl6i3zqp7jr45d9zr3sbi9d8dbdja2";
    });

    mako = pkgs.mako.overrideAttrs (old: rec {
      name = "mako-${version}";
      version = "1.6";

      src = pkgs.fetchFromGitHub {
        owner = "emersion";
        repo = old.pname;
        rev = "v${version}";
        sha256 = "sha256-RcPwZ5NeO9vxwPWfgj5x3wVdCYGKumnYT3ngHEAWfW0=";
      };
    });

    ncmpcppWithEyeCandy = pkgs.ncmpcpp.override { visualizerSupport = true; };

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
