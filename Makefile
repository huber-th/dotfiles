.PHONY: all bat

all:
	@echo "Installing all"
	@make bat

bat:
	@echo "Installing bat"
	@brew install bat
	@mkdir -p ~/.config/bat/
	@ln -snf $(PWD)/bat/config ~/.config/bat/config
	@ln -snf $(PWD)/bat/themes ~/.config/bat/themes
