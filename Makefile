all:
	@if [ ! -d './out' ]; then mkdir out; fi
	$(MAKE) -C src/

release:
	$(MAKE) -C src/
	@qpdf --encrypt $(DISCRET_PASS) $(DISCRET_PASS) 256 -- out/main.pdf out/main_enc.pdf
	@echo "[+] Done encryption"
	@rm -rf out/main.pdf
	@mv out/main_enc.pdf out/main.pdf

clean:
	rm -rf out/main.{aux,log,toc}
