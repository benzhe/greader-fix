package defpackage;

import android.net.Uri;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.internal.zzr;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class lw0 extends zv0 implements sk3<ek3> {
    public String h;
    public final fu0 i;
    public boolean j;
    public final iw0 k;
    public final rv0 l;
    public ByteBuffer m;
    public boolean n;
    public final Object o;
    public final String p;
    public final int q;
    public boolean r;

    public lw0(iu0 iu0Var, fu0 fu0Var) {
        super(iu0Var);
        this.i = fu0Var;
        this.k = new iw0();
        this.l = new rv0();
        this.o = new Object();
        this.p = iu0Var.t0();
        this.q = iu0Var.O();
    }

    @Override // defpackage.zv0
    public final void a() {
        this.j = true;
    }

    @Override // defpackage.sk3
    public final /* bridge */ /* synthetic */ void e(ek3 ek3Var) {
    }

    @Override // defpackage.sk3
    public final void f(ek3 ek3Var, jk3 jk3Var) {
        ek3 ek3Var2 = ek3Var;
        if (ek3Var2 instanceof lk3) {
            this.k.a.add((lk3) ek3Var2);
        }
    }

    @Override // defpackage.sk3
    public final /* bridge */ /* synthetic */ void h(ek3 ek3Var, int i) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.zv0
    public final boolean r(String str) throws IOException {
        String str2;
        String str3;
        ek3 ek3Var;
        this.h = str;
        String strS = s(str);
        int i = 0;
        try {
            String str4 = this.f;
            fu0 fu0Var = this.i;
            ek3 lk3Var = new lk3(str4, this, fu0Var.d, fu0Var.e);
            if (this.i.i) {
                lk3Var = new zu0(this.e, lk3Var, this.p, this.q, null, null);
            }
            lk3Var.b(new jk3(Uri.parse(str), null, 0L, 0L, -1L, null, 0));
            iu0 iu0Var = this.g.get();
            if (iu0Var != null) {
                iu0Var.h(strS, this);
            }
            b20 b20VarZzlc = zzr.zzlc();
            long jA = b20VarZzlc.a();
            long jLongValue = ((Long) os3.j.f.a(y40.r)).longValue();
            long jLongValue2 = ((Long) os3.j.f.a(y40.q)).longValue();
            this.m = ByteBuffer.allocate(this.i.c);
            int i2 = RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
            byte[] bArr = new byte[RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
            long j = jA;
            str2 = "error";
            while (true) {
                try {
                    int i3 = lk3Var.read(bArr, i, Math.min(this.m.remaining(), i2));
                    if (i3 == -1) {
                        this.r = true;
                        zr0.b.post(new cw0(this, str, strS, (int) this.l.a(this.m)));
                        return true;
                    }
                    synchronized (this.o) {
                        if (this.j) {
                            ek3Var = lk3Var;
                        } else {
                            ek3Var = lk3Var;
                            this.m.put(bArr, 0, i3);
                        }
                    }
                    if (this.m.remaining() <= 0) {
                        t();
                        return true;
                    }
                    try {
                        if (this.j) {
                            int iLimit = this.m.limit();
                            StringBuilder sb = new StringBuilder(35);
                            sb.append("Precache abort at ");
                            sb.append(iLimit);
                            sb.append(" bytes");
                            throw new IOException(sb.toString());
                        }
                        long jA2 = b20VarZzlc.a();
                        if (jA2 - j >= jLongValue) {
                            t();
                            j = jA2;
                        }
                        if (jA2 - jA > 1000 * jLongValue2) {
                            StringBuilder sb2 = new StringBuilder(49);
                            sb2.append("Timeout exceeded. Limit: ");
                            sb2.append(jLongValue2);
                            sb2.append(" sec");
                            throw new IOException(sb2.toString());
                        }
                        i = 0;
                        i2 = RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
                        lk3Var = ek3Var;
                    } catch (Exception e) {
                        e = e;
                        str3 = b20VarZzlc;
                        String canonicalName = e.getClass().getCanonicalName();
                        String message = e.getMessage();
                        String strC = jo.c(jo.x(message, jo.x(canonicalName, 1)), canonicalName, ":", message);
                        StringBuilder sb3 = new StringBuilder(jo.x(strC, jo.x(str, 34)));
                        sb3.append("Failed to preload url ");
                        sb3.append(str);
                        sb3.append(" Exception: ");
                        sb3.append(strC);
                        is0.zzez(sb3.toString());
                        l(str, strS, str3, strC);
                        return false;
                    }
                } catch (Exception e2) {
                    e = e2;
                    str3 = str2;
                    String canonicalName2 = e.getClass().getCanonicalName();
                    String message2 = e.getMessage();
                    String strC2 = jo.c(jo.x(message2, jo.x(canonicalName2, 1)), canonicalName2, ":", message2);
                    StringBuilder sb32 = new StringBuilder(jo.x(strC2, jo.x(str, 34)));
                    sb32.append("Failed to preload url ");
                    sb32.append(str);
                    sb32.append(" Exception: ");
                    sb32.append(strC2);
                    is0.zzez(sb32.toString());
                    l(str, strS, str3, strC2);
                    return false;
                }
            }
        } catch (Exception e3) {
            e = e3;
            str2 = "error";
        }
    }

    @Override // defpackage.zv0
    public final String s(String str) {
        String strValueOf = String.valueOf(zr0.l(str));
        return strValueOf.length() != 0 ? "cache:".concat(strValueOf) : new String("cache:");
    }

    public final void t() {
        iw0 iw0Var = this.k;
        Iterator<lk3> it = iw0Var.a.iterator();
        while (it.hasNext()) {
            HttpURLConnection httpURLConnection = it.next().h;
            Map<String, List<String>> headerFields = httpURLConnection == null ? null : httpURLConnection.getHeaderFields();
            if (headerFields != null) {
                for (Map.Entry<String, List<String>> entry : headerFields.entrySet()) {
                    try {
                        if ("content-length".equalsIgnoreCase(entry.getKey())) {
                            iw0Var.b = Math.max(iw0Var.b, Long.parseLong(entry.getValue().get(0)));
                        }
                    } catch (RuntimeException unused) {
                    }
                }
                it.remove();
            }
        }
        int i = (int) iw0Var.b;
        int iA = (int) this.l.a(this.m);
        int iPosition = this.m.position();
        int iRound = Math.round((iPosition / i) * iA);
        boolean z = iRound > 0;
        int i2 = cv0.x;
        int i3 = cv0.y;
        String str = this.h;
        zr0.b.post(new aw0(this, str, s(str), iPosition, i, iRound, iA, z, i2, i3));
    }
}
