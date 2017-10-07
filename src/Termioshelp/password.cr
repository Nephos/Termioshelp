module Termioshelp::Password
  extend self

  def use(io : IO, &block)
      # Init the termios
      told = LibC::Termios.new
      ret = LibC.tcgetattr(io.fd, pointerof(told))
      raise "Failed to get attr" if ret != 0
      # Save current the current state of the termios
      tnew = told
      # Disable password display
      tnew.c_lflag &= ~LibC::ECHO
      ret = LibC.tcsetattr(io.fd, LibC::TCSAFLUSH, pointerof(tnew))
      raise "Failed to set attr" if ret != 0
    begin
      return yield
    ensure
      LibC.tcsetattr(io.fd, LibC::TCSAFLUSH, pointerof(told))
    end
  end
end
