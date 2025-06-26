package defpackage;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.internal.ads.zzti;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zu0 implements ek3 {
    public final sk3<ek3> a;
    public final Context b;
    public final ek3 c;
    public final nv0 d;
    public final String e;
    public final int f;
    public InputStream h;
    public boolean i;
    public Uri j;
    public volatile zzti k;
    public boolean l = false;
    public boolean m = false;
    public boolean n = false;
    public boolean o = false;
    public long p = 0;
    public final AtomicLong r = new AtomicLong(-1);
    public aw2<Long> q = null;
    public final boolean g = ((Boolean) os3.j.f.a(y40.l1)).booleanValue();

    public zu0(Context context, ek3 ek3Var, String str, int i, sk3<ek3> sk3Var, nv0 nv0Var) {
        this.b = context;
        this.c = ek3Var;
        this.a = sk3Var;
        this.d = nv0Var;
        this.e = str;
        this.f = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0236  */
    /* JADX WARN: Type inference failed for: r4v18, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v20, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v10, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.lang.StringBuilder] */
    @Override // defpackage.ek3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long b(defpackage.jk3 r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 608
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zu0.b(jk3):long");
    }

    public final boolean c() {
        if (!this.g) {
            return false;
        }
        if (!((Boolean) os3.j.f.a(y40.r2)).booleanValue() || this.n) {
            return ((Boolean) os3.j.f.a(y40.s2)).booleanValue() && !this.o;
        }
        return true;
    }

    @Override // defpackage.ek3
    public final void close() throws IOException {
        sk3<ek3> sk3Var;
        if (!this.i) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.i = false;
        this.j = null;
        boolean z = (this.g && this.h == null) ? false : true;
        InputStream inputStream = this.h;
        if (inputStream != null) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                }
            }
            this.h = null;
        } else {
            this.c.close();
        }
        if (!z || (sk3Var = this.a) == null) {
            return;
        }
        sk3Var.e(this);
    }

    @Override // defpackage.ek3
    public final Uri i0() {
        return this.j;
    }

    @Override // defpackage.ek3
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        sk3<ek3> sk3Var;
        if (!this.i) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.h;
        int i3 = inputStream != null ? inputStream.read(bArr, i, i2) : this.c.read(bArr, i, i2);
        if ((!this.g || this.h != null) && (sk3Var = this.a) != null) {
            sk3Var.h(this, i3);
        }
        return i3;
    }
}
