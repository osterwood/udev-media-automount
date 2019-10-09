install:
	install -Dm644 media-automount.rules $(DESTDIR)/lib/udev/rules.d/99-media-automount.rules
	install -D media-automount $(DESTDIR)/usr/bin/media-automount
	install -Dm644 media-automount@.service $(DESTDIR)/lib/systemd/system/media-automount@.service
	
clean:
	rm $(DESTDIR)/lib/udev/rules.d/99-media-automount.rules
	rm $(DESTDIR)/usr/bin/media-automount
	rm $(DESTDIR)/lib/systemd/system/media-automount@.service