package defpackage;

import android.graphics.Bitmap;
import defpackage.wy6;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;

/* loaded from: classes2.dex */
public class xy6 implements ty6 {
    public static final Bitmap.CompressFormat e = Bitmap.CompressFormat.PNG;
    public wy6 a;
    public File b;
    public final az6 c;
    public Bitmap.CompressFormat d = e;

    public xy6(File file, File file2, az6 az6Var, long j, int i) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("cacheMaxSize argument must be positive number");
        }
        if (i < 0) {
            throw new IllegalArgumentException("cacheMaxFileCount argument must be positive number");
        }
        if (az6Var == null) {
            throw new IllegalArgumentException("fileNameGenerator argument must be not null");
        }
        long j2 = j == 0 ? Long.MAX_VALUE : j;
        int i2 = i == 0 ? Integer.MAX_VALUE : i;
        this.b = file2;
        this.c = az6Var;
        c(file, file2, j2, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003b  */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [wy6$e] */
    @Override // defpackage.ty6
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File a(java.lang.String r5) throws java.lang.Throwable {
        /*
            r4 = this;
            r0 = 0
            wy6 r1 = r4.a     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2d
            az6 r2 = r4.c     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L28
            java.util.Objects.requireNonNull(r2)     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L28
            int r5 = r5.hashCode()     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L28
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch: java.io.IOException -> L26 java.lang.Throwable -> L28
            wy6$e r5 = r1.f(r5)     // Catch: java.lang.Throwable -> L28 java.io.IOException -> L2d
            if (r5 != 0) goto L17
            goto L1c
        L17:
            r1 = 0
            java.io.File[] r2 = r5.e     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L38
            r0 = r2[r1]     // Catch: java.io.IOException -> L22 java.lang.Throwable -> L38
        L1c:
            if (r5 == 0) goto L21
            r5.close()
        L21:
            return r0
        L22:
            r1 = move-exception
            goto L2f
        L24:
            r1 = r5
            goto L2e
        L26:
            r5 = move-exception
            goto L24
        L28:
            r5 = move-exception
            r3 = r0
            r0 = r5
            r5 = r3
            goto L39
        L2d:
            r1 = move-exception
        L2e:
            r5 = r0
        L2f:
            defpackage.p07.c(r1)     // Catch: java.lang.Throwable -> L38
            if (r5 == 0) goto L37
            r5.close()
        L37:
            return r0
        L38:
            r0 = move-exception
        L39:
            if (r5 == 0) goto L3e
            r5.close()
        L3e:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xy6.a(java.lang.String):java.io.File");
    }

    @Override // defpackage.ty6
    public boolean b(String str, InputStream inputStream, o07 o07Var) throws IOException {
        wy6 wy6Var = this.a;
        Objects.requireNonNull(this.c);
        wy6.c cVarE = wy6Var.e(String.valueOf(str.hashCode()));
        if (cVarE == null) {
            return false;
        }
        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(cVarE.c(0), 32768);
        try {
            boolean zE = n56.E(inputStream, bufferedOutputStream, o07Var, 32768);
            try {
                bufferedOutputStream.close();
            } catch (Exception unused) {
            }
            if (zE) {
                cVarE.b();
            } else {
                cVarE.a();
            }
            return zE;
        } catch (Throwable th) {
            try {
                bufferedOutputStream.close();
            } catch (Exception unused2) {
            }
            cVarE.a();
            throw th;
        }
    }

    public final void c(File file, File file2, long j, int i) throws IOException {
        try {
            this.a = wy6.i(file, 1, 1, j, i);
        } catch (IOException e2) {
            p07.c(e2);
            if (file2 != null) {
                c(file2, null, j, i);
            }
            if (this.a == null) {
                throw e2;
            }
        }
    }

    @Override // defpackage.ty6
    public void clear() {
        long j;
        int i;
        try {
            wy6 wy6Var = this.a;
            wy6Var.close();
            zy6.b(wy6Var.e);
        } catch (IOException e2) {
            p07.c(e2);
        }
        try {
            wy6 wy6Var2 = this.a;
            File file = wy6Var2.e;
            File file2 = this.b;
            synchronized (wy6Var2) {
                j = wy6Var2.j;
            }
            wy6 wy6Var3 = this.a;
            synchronized (wy6Var3) {
                i = wy6Var3.k;
            }
            c(file, file2, j, i);
        } catch (IOException e3) {
            p07.c(e3);
        }
    }
}
