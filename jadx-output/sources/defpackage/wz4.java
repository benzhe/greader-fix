package defpackage;

import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class wz4 implements Runnable {
    public final URL e;
    public final String f;
    public final /* synthetic */ xz4 g;
    public final px4 h;

    public wz4(xz4 xz4Var, String str, URL url, px4 px4Var) {
        this.g = xz4Var;
        bi.g(str);
        Objects.requireNonNull(url, "null reference");
        this.e = url;
        this.h = px4Var;
        this.f = str;
    }

    public final void a(final int i, final Exception exc, final byte[] bArr, final Map<String, List<String>> map) throws IllegalStateException {
        this.g.a.m().q(new Runnable(this, i, exc, bArr, map) { // from class: vz4
            public final wz4 e;
            public final int f;
            public final Exception g;
            public final byte[] h;
            public final Map i;

            {
                this.e = this;
                this.f = i;
                this.g = exc;
                this.h = bArr;
                this.i = map;
            }

            /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() throws java.lang.IllegalStateException {
                /*
                    Method dump skipped, instructions count: 290
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.vz4.run():void");
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x006f  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            r9 = this;
            xz4 r0 = r9.g
            r0.c()
            r0 = 0
            r1 = 0
            xz4 r2 = r9.g     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L68
            java.net.URL r3 = r9.e     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L68
            java.net.HttpURLConnection r2 = r2.n(r3)     // Catch: java.lang.Throwable -> L5a java.io.IOException -> L68
            int r3 = r2.getResponseCode()     // Catch: java.lang.Throwable -> L50 java.io.IOException -> L55
            java.util.Map r4 = r2.getHeaderFields()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4d
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L3e
            r5.<init>()     // Catch: java.lang.Throwable -> L3e
            java.io.InputStream r6 = r2.getInputStream()     // Catch: java.lang.Throwable -> L3e
            r7 = 1024(0x400, float:1.435E-42)
            byte[] r7 = new byte[r7]     // Catch: java.lang.Throwable -> L3c
        L24:
            int r8 = r6.read(r7)     // Catch: java.lang.Throwable -> L3c
            if (r8 <= 0) goto L2e
            r5.write(r7, r0, r8)     // Catch: java.lang.Throwable -> L3c
            goto L24
        L2e:
            byte[] r0 = r5.toByteArray()     // Catch: java.lang.Throwable -> L3c
            r6.close()     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L48
            r2.disconnect()
            r9.a(r3, r1, r0, r4)
            return
        L3c:
            r0 = move-exception
            goto L40
        L3e:
            r0 = move-exception
            r6 = r1
        L40:
            if (r6 == 0) goto L45
            r6.close()     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L48
        L45:
            throw r0     // Catch: java.lang.Throwable -> L46 java.io.IOException -> L48
        L46:
            r0 = move-exception
            goto L5f
        L48:
            r0 = move-exception
            goto L6d
        L4a:
            r0 = move-exception
            r4 = r1
            goto L5f
        L4d:
            r0 = move-exception
            r4 = r1
            goto L6d
        L50:
            r3 = move-exception
            r4 = r1
            r0 = r3
            r3 = 0
            goto L5f
        L55:
            r3 = move-exception
            r4 = r1
            r0 = r3
            r3 = 0
            goto L6d
        L5a:
            r2 = move-exception
            r4 = r1
            r0 = r2
            r3 = 0
            r2 = r4
        L5f:
            if (r2 == 0) goto L64
            r2.disconnect()
        L64:
            r9.a(r3, r1, r1, r4)
            throw r0
        L68:
            r2 = move-exception
            r4 = r1
            r0 = r2
            r3 = 0
            r2 = r4
        L6d:
            if (r2 == 0) goto L72
            r2.disconnect()
        L72:
            r9.a(r3, r0, r1, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.wz4.run():void");
    }
}
