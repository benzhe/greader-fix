package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class lk3 implements kk3 {
    public static final Pattern o = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    public static final AtomicReference<byte[]> p = new AtomicReference<>();
    public final boolean a;
    public final int b;
    public final int c;
    public final String d;
    public final nk3 e;
    public final sk3<? super lk3> f;
    public jk3 g;
    public HttpURLConnection h;
    public InputStream i;
    public boolean j;
    public long k;
    public long l;
    public long m;
    public long n;

    public lk3(String str, sk3 sk3Var, int i, int i2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.d = str;
        this.f = sk3Var;
        this.e = new nk3();
        this.b = i;
        this.c = i2;
        this.a = true;
    }

    @Override // defpackage.kk3
    public final Map<String, List<String>> a() {
        HttpURLConnection httpURLConnection = this.h;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0071, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x017b  */
    @Override // defpackage.ek3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(defpackage.jk3 r24) throws java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 627
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lk3.b(jk3):long");
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.net.HttpURLConnection c(java.net.URL r6, byte[] r7, long r8, long r10, boolean r12, boolean r13) throws java.io.IOException {
        /*
            r5 = this;
            java.net.URLConnection r6 = r6.openConnection()
            java.net.HttpURLConnection r6 = (java.net.HttpURLConnection) r6
            int r0 = r5.b
            r6.setConnectTimeout(r0)
            int r0 = r5.c
            r6.setReadTimeout(r0)
            nk3 r0 = r5.e
            java.util.Map r0 = r0.a()
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
        L1e:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L3a
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r6.setRequestProperty(r2, r1)
            goto L1e
        L3a:
            r0 = 0
            r2 = -1
            int r4 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r4 != 0) goto L46
            int r0 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r0 == 0) goto L84
        L46:
            r0 = 27
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>(r0)
            java.lang.String r0 = "bytes="
            r1.append(r0)
            r1.append(r8)
            java.lang.String r0 = "-"
            r1.append(r0)
            java.lang.String r0 = r1.toString()
            int r1 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r1 == 0) goto L7f
            java.lang.String r0 = java.lang.String.valueOf(r0)
            long r8 = r8 + r10
            r10 = 1
            long r8 = r8 - r10
            int r10 = r0.length()
            int r10 = r10 + 20
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>(r10)
            r11.append(r0)
            r11.append(r8)
            java.lang.String r0 = r11.toString()
        L7f:
            java.lang.String r8 = "Range"
            r6.setRequestProperty(r8, r0)
        L84:
            java.lang.String r8 = r5.d
            java.lang.String r9 = "User-Agent"
            r6.setRequestProperty(r9, r8)
            if (r12 != 0) goto L94
            java.lang.String r8 = "Accept-Encoding"
            java.lang.String r9 = "identity"
            r6.setRequestProperty(r8, r9)
        L94:
            r6.setInstanceFollowRedirects(r13)
            if (r7 == 0) goto L9b
            r8 = 1
            goto L9c
        L9b:
            r8 = 0
        L9c:
            r6.setDoOutput(r8)
            if (r7 == 0) goto Lbb
            java.lang.String r8 = "POST"
            r6.setRequestMethod(r8)
            int r8 = r7.length
            if (r8 == 0) goto Lbb
            int r8 = r7.length
            r6.setFixedLengthStreamingMode(r8)
            r6.connect()
            java.io.OutputStream r8 = r6.getOutputStream()
            r8.write(r7)
            r8.close()
            goto Lbe
        Lbb:
            r6.connect()
        Lbe:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lk3.c(java.net.URL, byte[], long, long, boolean, boolean):java.net.HttpURLConnection");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0034 A[Catch: Exception -> 0x0065, all -> 0x0088, TryCatch #0 {all -> 0x0088, blocks: (B:3:0x0002, B:5:0x0006, B:9:0x0014, B:26:0x0065, B:29:0x006c, B:30:0x0074, B:14:0x001e, B:16:0x0026, B:21:0x0034, B:23:0x0044, B:25:0x004c, B:8:0x0011), top: B:45:0x0002, inners: #2 }] */
    @Override // defpackage.ek3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() throws defpackage.mk3 {
        /*
            r9 = this;
            r0 = 0
            r1 = 0
            java.io.InputStream r2 = r9.i     // Catch: java.lang.Throwable -> L88
            if (r2 == 0) goto L75
            java.net.HttpURLConnection r2 = r9.h     // Catch: java.lang.Throwable -> L88
            long r3 = r9.l     // Catch: java.lang.Throwable -> L88
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L11
            goto L14
        L11:
            long r7 = r9.n     // Catch: java.lang.Throwable -> L88
            long r3 = r3 - r7
        L14:
            int r7 = defpackage.el3.a     // Catch: java.lang.Throwable -> L88
            r8 = 19
            if (r7 == r8) goto L1e
            r8 = 20
            if (r7 != r8) goto L65
        L1e:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L2e
            int r3 = r2.read()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            r4 = -1
            if (r3 != r4) goto L34
            goto L65
        L2e:
            r5 = 2048(0x800, double:1.012E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L65
        L34:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            if (r4 != 0) goto L4c
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            if (r3 == 0) goto L65
        L4c:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L88
        L65:
            java.io.InputStream r2 = r9.i     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            r2.close()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L88
            goto L75
        L6b:
            r2 = move-exception
            mk3 r3 = new mk3     // Catch: java.lang.Throwable -> L88
            jk3 r4 = r9.g     // Catch: java.lang.Throwable -> L88
            r5 = 3
            r3.<init>(r2, r4, r5)     // Catch: java.lang.Throwable -> L88
            throw r3     // Catch: java.lang.Throwable -> L88
        L75:
            r9.i = r0
            r9.d()
            boolean r0 = r9.j
            if (r0 == 0) goto L87
            r9.j = r1
            sk3<? super lk3> r0 = r9.f
            if (r0 == 0) goto L87
            r0.e(r9)
        L87:
            return
        L88:
            r2 = move-exception
            r9.i = r0
            r9.d()
            boolean r0 = r9.j
            if (r0 == 0) goto L9b
            r9.j = r1
            sk3<? super lk3> r0 = r9.f
            if (r0 == 0) goto L9b
            r0.e(r9)
        L9b:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.lk3.close():void");
    }

    public final void d() {
        HttpURLConnection httpURLConnection = this.h;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                Log.e("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
            this.h = null;
        }
    }

    @Override // defpackage.ek3
    public final Uri i0() {
        HttpURLConnection httpURLConnection = this.h;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // defpackage.ek3
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            if (this.m != this.k) {
                byte[] andSet = p.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT];
                }
                while (true) {
                    long j = this.m;
                    long j2 = this.k;
                    if (j == j2) {
                        p.set(andSet);
                        break;
                    }
                    int i3 = this.i.read(andSet, 0, (int) Math.min(j2 - j, andSet.length));
                    if (Thread.interrupted()) {
                        throw new InterruptedIOException();
                    }
                    if (i3 == -1) {
                        throw new EOFException();
                    }
                    this.m += i3;
                    sk3<? super lk3> sk3Var = this.f;
                    if (sk3Var != null) {
                        sk3Var.h(this, i3);
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.l;
            if (j3 != -1) {
                long j4 = j3 - this.n;
                if (j4 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j4);
            }
            int i4 = this.i.read(bArr, i, i2);
            if (i4 == -1) {
                if (this.l == -1) {
                    return -1;
                }
                throw new EOFException();
            }
            this.n += i4;
            sk3<? super lk3> sk3Var2 = this.f;
            if (sk3Var2 != null) {
                sk3Var2.h(this, i4);
            }
            return i4;
        } catch (IOException e) {
            throw new mk3(e, this.g, 2);
        }
    }
}
