package defpackage;

import defpackage.ap;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public abstract class gp extends hp {
    public long A;
    public double B;
    public BigInteger C;
    public BigDecimal D;
    public boolean E;
    public int F;
    public final lp m;
    public boolean n;
    public int o;
    public int p;
    public long q;
    public int r;
    public int s;
    public int t;
    public int u;
    public rp v;
    public bp w;
    public final aq x;
    public int y;
    public int z;

    public gp(lp lpVar, int i) {
        super(i);
        this.r = 1;
        this.t = 1;
        this.y = 0;
        this.m = lpVar;
        this.x = new aq(lpVar.c);
        this.v = new rp(null, (ap.a.STRICT_DUPLICATE_DETECTION.f & i) != 0 ? new qp(this) : null, 0, 1, 0);
    }

    public abstract void F() throws IOException;

    public Object I() {
        if (ap.a.INCLUDE_SOURCE_IN_LOCATION.i(this.e)) {
            return this.m.a;
        }
        return null;
    }

    public abstract void L() throws IOException;

    public void Q(int i, char c) throws zo {
        rp rpVar = this.v;
        throw new zo(this, String.format("Unexpected close marker '%s': expected '%c' (for %s starting at %s)", Character.valueOf((char) i), Character.valueOf(c), rpVar.f(), new yo(I(), -1L, rpVar.g, rpVar.h)));
    }

    public void S(int i, String str) throws IOException {
        if (i == 1) {
            throw new ip(this, String.format("Numeric value (%s) out of range of int (%d - %s)", n(str), Integer.MIN_VALUE, Integer.MAX_VALUE), this.f, Integer.TYPE);
        }
        D(str);
        throw null;
    }

    public void Z(int i, String str) throws zo {
        if (!f(ap.a.ALLOW_UNQUOTED_CONTROL_CHARS) || i > 32) {
            StringBuilder sbZ = jo.z("Illegal unquoted character (");
            sbZ.append(hp.k((char) i));
            sbZ.append("): has to be escaped using backslash to be included in ");
            sbZ.append(str);
            throw new zo(this, sbZ.toString());
        }
    }

    public final bp a0(String str, double d) {
        aq aqVar = this.x;
        aqVar.b = null;
        aqVar.c = -1;
        aqVar.d = 0;
        aqVar.j = str;
        aqVar.k = null;
        if (aqVar.f) {
            aqVar.b();
        }
        aqVar.i = 0;
        this.B = d;
        this.y = 8;
        return bp.VALUE_NUMBER_FLOAT;
    }

    @Override // defpackage.ap
    public String b() throws IOException {
        rp rpVar;
        bp bpVar = this.f;
        return ((bpVar == bp.START_OBJECT || bpVar == bp.START_ARRAY) && (rpVar = this.v.c) != null) ? rpVar.f : this.v.f;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fa A[Catch: NumberFormatException -> 0x0107, TryCatch #0 {NumberFormatException -> 0x0107, blocks: (B:47:0x00be, B:49:0x00d0, B:51:0x00d4, B:53:0x00d9, B:67:0x00fa, B:68:0x0103, B:60:0x00e6, B:64:0x00f4, B:52:0x00d7), top: B:123:0x00be }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0103 A[Catch: NumberFormatException -> 0x0107, TRY_LEAVE, TryCatch #0 {NumberFormatException -> 0x0107, blocks: (B:47:0x00be, B:49:0x00d0, B:51:0x00d4, B:53:0x00d9, B:67:0x00fa, B:68:0x0103, B:60:0x00e6, B:64:0x00f4, B:52:0x00d7), top: B:123:0x00be }] */
    @Override // defpackage.ap
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long c() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.gp.c():long");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.n) {
            return;
        }
        this.o = Math.max(this.o, this.p);
        this.n = true;
        try {
            F();
        } finally {
            L();
        }
    }

    public final bp d0(boolean z, int i) {
        this.E = z;
        this.F = i;
        this.y = 0;
        return bp.VALUE_NUMBER_INT;
    }

    @Override // defpackage.hp
    public void m() throws zo {
        if (this.v.d()) {
            return;
        }
        String str = this.v.c() ? "Array" : "Object";
        rp rpVar = this.v;
        t(String.format(": expected close marker for %s (start marker at %s)", str, new yo(I(), -1L, rpVar.g, rpVar.h)), null);
        throw null;
    }
}
