package defpackage;

import android.net.Uri;
import android.text.TextUtils;
import androidx.recyclerview.widget.RecyclerView;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.net.Socket;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;

/* loaded from: classes.dex */
public final class xu0 implements kk3 {
    public static final Pattern q = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    public static final AtomicReference<byte[]> r = new AtomicReference<>();
    public final int b;
    public final int c;
    public final String d;
    public final nk3 e;
    public final sk3<? super xu0> f;
    public jk3 g;
    public HttpURLConnection h;
    public InputStream i;
    public boolean j;
    public long k;
    public long l;
    public long m;
    public long n;
    public int o;
    public SSLSocketFactory a = new av0(this);
    public Set<Socket> p = new HashSet();

    public xu0(String str, sk3<? super xu0> sk3Var, int i, int i2, int i3) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.d = str;
        this.f = sk3Var;
        this.e = new nk3();
        this.b = i;
        this.c = i2;
        this.o = i3;
    }

    @Override // defpackage.kk3
    public final Map<String, List<String>> a() {
        HttpURLConnection httpURLConnection = this.h;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x024f, code lost:
    
        throw new defpackage.mk3(r0, r25, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0250, code lost:
    
        r3 = r24.h.getHeaderFields();
        c();
        r4 = new defpackage.ok3(r0, r3, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0260, code lost:
    
        if (r0 != 416) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0262, code lost:
    
        r4.initCause(new defpackage.gk3());
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x026a, code lost:
    
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x026b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x026c, code lost:
    
        c();
        r5 = java.lang.String.valueOf(r25.a.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0280, code lost:
    
        if (r5.length() != 0) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0282, code lost:
    
        r3 = "Unable to connect to ".concat(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0287, code lost:
    
        r3 = new java.lang.String("Unable to connect to ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0290, code lost:
    
        throw new defpackage.mk3(r3, r0, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:?, code lost:
    
        throw r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0127, code lost:
    
        r24.h = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0129, code lost:
    
        r0 = r13.getResponseCode();
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x012f, code lost:
    
        if (r0 < 200) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0133, code lost:
    
        if (r0 <= 299) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0137, code lost:
    
        if (r0 != 200) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0139, code lost:
    
        r3 = r25.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x013f, code lost:
    
        if (r3 == 0) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0142, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0144, code lost:
    
        r24.k = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x014a, code lost:
    
        if (r25.a() != false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x014c, code lost:
    
        r3 = r25.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0152, code lost:
    
        if (r3 == (-1)) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0154, code lost:
    
        r24.l = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0158, code lost:
    
        r0 = r24.h;
        r3 = r0.getHeaderField("Content-Length");
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0166, code lost:
    
        if (android.text.TextUtils.isEmpty(r3) != false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0168, code lost:
    
        r7 = java.lang.Long.parseLong(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x016d, code lost:
    
        r7 = new java.lang.StringBuilder(java.lang.String.valueOf(r3).length() + 28);
        r7.append("Unexpected Content-Length [");
        r7.append(r3);
        r7.append("]");
        defpackage.is0.zzex(r7.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x018e, code lost:
    
        r7 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0190, code lost:
    
        r0 = r0.getHeaderField("Content-Range");
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x019a, code lost:
    
        if (android.text.TextUtils.isEmpty(r0) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x019c, code lost:
    
        r4 = defpackage.xu0.q.matcher(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01a6, code lost:
    
        if (r4.find() != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01a9, code lost:
    
        r9 = (java.lang.Long.parseLong(r4.group(2)) - java.lang.Long.parseLong(r4.group(1))) + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c0, code lost:
    
        if (r7 < 0) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x01c2, code lost:
    
        r7 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x01c6, code lost:
    
        if (r7 != r9) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01c8, code lost:
    
        r11 = new java.lang.StringBuilder((java.lang.String.valueOf(r3).length() + 26) + java.lang.String.valueOf(r0).length());
        r11.append("Inconsistent headers [");
        r11.append(r3);
        r11.append("] [");
        r11.append(r0);
        r11.append("]");
        defpackage.is0.zzez(r11.toString());
        r7 = java.lang.Math.max(r7, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x01ff, code lost:
    
        r4 = new java.lang.StringBuilder(java.lang.String.valueOf(r0).length() + 27);
        r4.append("Unexpected Content-Range [");
        r4.append(r0);
        r4.append("]");
        defpackage.is0.zzex(r4.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0221, code lost:
    
        r3 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0225, code lost:
    
        if (r7 != (-1)) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0227, code lost:
    
        r3 = r7 - r24.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x022b, code lost:
    
        r24.l = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x022e, code lost:
    
        r24.l = r25.e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0232, code lost:
    
        r24.i = r24.h.getInputStream();
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x023a, code lost:
    
        r24.j = true;
        r0 = r24.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x023e, code lost:
    
        if (r0 != null) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0240, code lost:
    
        r0.f(r24, r25);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0245, code lost:
    
        return r24.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0246, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0247, code lost:
    
        c();
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0104 A[Catch: IOException -> 0x02fc, TryCatch #4 {IOException -> 0x02fc, blocks: (B:3:0x000e, B:4:0x0024, B:6:0x002a, B:8:0x0034, B:9:0x003c, B:10:0x0054, B:12:0x005a, B:24:0x00cb, B:26:0x00d4, B:27:0x00db, B:31:0x00e5, B:33:0x00ea, B:35:0x00f2, B:37:0x0107, B:51:0x0127, B:113:0x0294, B:115:0x029f, B:117:0x02b0, B:119:0x02b8, B:121:0x02c6, B:123:0x02d0, B:124:0x02d3, B:122:0x02cb, B:126:0x02db, B:127:0x02e2, B:36:0x0104, B:19:0x0088, B:21:0x00a2, B:23:0x00c6, B:128:0x02e3, B:129:0x02fb), top: B:145:0x000e }] */
    @Override // defpackage.ek3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(defpackage.jk3 r25) throws java.io.IOException, java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 798
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xu0.b(jk3):long");
    }

    public final void c() {
        HttpURLConnection httpURLConnection = this.h;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                is0.zzc("Unexpected error while disconnecting", e);
            }
            this.h = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0034 A[Catch: Exception -> 0x0065, all -> 0x008d, TryCatch #0 {Exception -> 0x0065, blocks: (B:14:0x001e, B:16:0x0026, B:21:0x0034, B:23:0x0044, B:25:0x004c), top: B:47:0x001e }] */
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
            java.io.InputStream r2 = r9.i     // Catch: java.lang.Throwable -> L8d
            if (r2 == 0) goto L75
            java.net.HttpURLConnection r2 = r9.h     // Catch: java.lang.Throwable -> L8d
            long r3 = r9.l     // Catch: java.lang.Throwable -> L8d
            r5 = -1
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L11
            goto L14
        L11:
            long r7 = r9.n     // Catch: java.lang.Throwable -> L8d
            long r3 = r3 - r7
        L14:
            int r7 = defpackage.el3.a     // Catch: java.lang.Throwable -> L8d
            r8 = 19
            if (r7 == r8) goto L1e
            r8 = 20
            if (r7 != r8) goto L65
        L1e:
            java.io.InputStream r2 = r2.getInputStream()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 != 0) goto L2e
            int r3 = r2.read()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            r4 = -1
            if (r3 != r4) goto L34
            goto L65
        L2e:
            r5 = 2048(0x800, double:1.012E-320)
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 <= 0) goto L65
        L34:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            java.lang.String r3 = r3.getName()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"
            boolean r4 = r3.equals(r4)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            if (r4 != 0) goto L4c
            java.lang.String r4 = "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            if (r3 == 0) goto L65
        L4c:
            java.lang.Class r3 = r2.getClass()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            java.lang.Class r3 = r3.getSuperclass()     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            java.lang.String r4 = "unexpectedEndOfInput"
            java.lang.Class[] r5 = new java.lang.Class[r1]     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            r4 = 1
            r3.setAccessible(r4)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            java.lang.Object[] r4 = new java.lang.Object[r1]     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
            r3.invoke(r2, r4)     // Catch: java.lang.Exception -> L65 java.lang.Throwable -> L8d
        L65:
            java.io.InputStream r2 = r9.i     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L8d
            r2.close()     // Catch: java.io.IOException -> L6b java.lang.Throwable -> L8d
            goto L75
        L6b:
            r2 = move-exception
            mk3 r3 = new mk3     // Catch: java.lang.Throwable -> L8d
            jk3 r4 = r9.g     // Catch: java.lang.Throwable -> L8d
            r5 = 3
            r3.<init>(r2, r4, r5)     // Catch: java.lang.Throwable -> L8d
            throw r3     // Catch: java.lang.Throwable -> L8d
        L75:
            r9.i = r0
            r9.c()
            boolean r0 = r9.j
            if (r0 == 0) goto L87
            r9.j = r1
            sk3<? super xu0> r0 = r9.f
            if (r0 == 0) goto L87
            r0.e(r9)
        L87:
            java.util.Set<java.net.Socket> r0 = r9.p
            r0.clear()
            return
        L8d:
            r2 = move-exception
            r9.i = r0
            r9.c()
            boolean r0 = r9.j
            if (r0 == 0) goto La0
            r9.j = r1
            sk3<? super xu0> r0 = r9.f
            if (r0 == 0) goto La0
            r0.e(r9)
        La0:
            java.util.Set<java.net.Socket> r0 = r9.p
            r0.clear()
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xu0.close():void");
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
                byte[] andSet = r.getAndSet(null);
                if (andSet == null) {
                    andSet = new byte[RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT];
                }
                while (true) {
                    long j = this.m;
                    long j2 = this.k;
                    if (j == j2) {
                        r.set(andSet);
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
                    sk3<? super xu0> sk3Var = this.f;
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
            sk3<? super xu0> sk3Var2 = this.f;
            if (sk3Var2 != null) {
                sk3Var2.h(this, i4);
            }
            return i4;
        } catch (IOException e) {
            throw new mk3(e, this.g, 2);
        }
    }
}
