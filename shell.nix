{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [

    # Python with packages
    (python3.withPackages (ps: with ps; [

      # Installed packages
      pygame
      numpy
      pillow
    ]))
    
    # Development tools
    python3Packages.pip
    python3Packages.setuptools
    
    # For debugging and development
    gdb
    valgrind
  ];

  # Environment variables
  shellHook = ''
    echo "=================================="
    echo ""
    echo "Starting python virtual environment"
    echo ""
    echo "=================================="
    echo "Python version: $(python --version)"
    echo ""
    echo "Available packages:"
    echo "  - pygame (for game development)"
    echo "  - numpy (for advanced math operations)"
    echo "  - pillow (for image processing)"
    echo ""
    echo "=================================="
  '';

  # Set environment variables for better pygame performance
  PYGAME_HIDE_SUPPORT_PROMPT = "1";
  
  # Ensure proper display for GUI applications
  NIX_ENFORCE_PURITY = "0";
}
