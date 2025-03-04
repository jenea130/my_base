c-client for php83-mysql

```sh
diff --git a/PKGBUILD b/PKGBUILD
index 635a4ad..8cdddeb 100644
--- a/PKGBUILD
+++ b/PKGBUILD
@@ -26,7 +26,7 @@ prepare() {
 
 build() {
   cd "$srcdir/$_pkgbase-src"
-  CFLAGS+=" -ffat-lto-objects"
+  CFLAGS+=" -ffat-lto-objects -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types"
```

в файле PKGBUILD заменить строку 
CFLAGS+=" -ffat-lto-objects"

на строку
CFLAGS+=" -ffat-lto-objects -Wno-error=implicit-function-declaration -Wno-error=incompatible-pointer-types"