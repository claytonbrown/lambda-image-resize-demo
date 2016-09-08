lambda:
	npm install .
	@echo "Factory package files..."
	@if [ ! -d build ] ;then mkdir build; fi
	@cp index.js build/index.js
	@if [ -d build/node_modules ] ;then rm -rf build/node_modules; fi
	@cp -R node_modules/ build/node_modules/
	@cp -R config/ build/config/
	@echo "Create package archive..."
	@cd build && zip -rq aws-lambda-image.zip .
	@mv build/aws-lambda-image.zip ./

clean:
	@echo "clean up package files"
	@if [ -f aws-lambda-image.zip ]; then rm aws-lambda-image.zip; fi
	@rm -rf build
