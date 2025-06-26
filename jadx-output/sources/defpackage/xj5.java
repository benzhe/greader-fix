package defpackage;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public class xj5 implements tj5 {
    public static final Charset d = Charset.forName("UTF-8");
    public final File a;
    public final int b;
    public vj5 c;

    public class a {
        public final byte[] a;
        public final int b;

        public a(xj5 xj5Var, byte[] bArr, int i) {
            this.a = bArr;
            this.b = i;
        }
    }

    public xj5(File file, int i) {
        this.a = file;
        this.b = i;
    }

    @Override // defpackage.tj5
    public void a() throws IOException {
        vh5.c(this.c, "There was a problem closing the Crashlytics log file.");
        this.c = null;
    }

    @Override // defpackage.tj5
    public String b() {
        byte[] bArrC = c();
        if (bArrC != null) {
            return new String(bArrC, d);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x000a  */
    @Override // defpackage.tj5
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public byte[] c() {
        /*
            r7 = this;
            java.io.File r0 = r7.a
            boolean r0 = r0.exists()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto Lc
        La:
            r4 = r1
            goto L42
        Lc:
            r7.f()
            vj5 r0 = r7.c
            if (r0 != 0) goto L14
            goto La
        L14:
            r3 = 1
            int[] r3 = new int[r3]
            r3[r2] = r2
            int r0 = r0.t()
            byte[] r0 = new byte[r0]
            vj5 r4 = r7.c     // Catch: java.io.IOException -> L2a
            wj5 r5 = new wj5     // Catch: java.io.IOException -> L2a
            r5.<init>(r7, r0, r3)     // Catch: java.io.IOException -> L2a
            r4.f(r5)     // Catch: java.io.IOException -> L2a
            goto L3b
        L2a:
            r4 = move-exception
            ah5 r5 = defpackage.ah5.a
            r6 = 6
            boolean r5 = r5.a(r6)
            if (r5 == 0) goto L3b
            java.lang.String r5 = "FirebaseCrashlytics"
            java.lang.String r6 = "A problem occurred while reading the Crashlytics log file."
            android.util.Log.e(r5, r6, r4)
        L3b:
            xj5$a r4 = new xj5$a
            r3 = r3[r2]
            r4.<init>(r7, r0, r3)
        L42:
            if (r4 != 0) goto L45
            return r1
        L45:
            int r0 = r4.b
            byte[] r1 = new byte[r0]
            byte[] r3 = r4.a
            java.lang.System.arraycopy(r3, r2, r1, r2, r0)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xj5.c():byte[]");
    }

    @Override // defpackage.tj5
    public void d() throws IOException {
        vh5.c(this.c, "There was a problem closing the Crashlytics log file.");
        this.c = null;
        this.a.delete();
    }

    @Override // defpackage.tj5
    public void e(long j, String str) {
        f();
        if (this.c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            int i = this.b / 4;
            if (str.length() > i) {
                str = "..." + str.substring(str.length() - i);
            }
            this.c.b(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str.replaceAll(StringUtils.CR, StringUtils.SPACE).replaceAll("\n", StringUtils.SPACE)).getBytes(d));
            while (!this.c.g() && this.c.t() > this.b) {
                this.c.m();
            }
        } catch (IOException e) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "There was a problem writing to the Crashlytics log.", e);
            }
        }
    }

    public final void f() {
        if (this.c == null) {
            try {
                this.c = new vj5(this.a);
            } catch (IOException e) {
                ah5 ah5Var = ah5.a;
                StringBuilder sbZ = jo.z("Could not open log file: ");
                sbZ.append(this.a);
                ah5Var.e(sbZ.toString(), e);
            }
        }
    }
}
