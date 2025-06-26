package defpackage;

import defpackage.s63;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
public final class z23 extends s63<z23, a> implements f83 {
    private static volatile l83<z23> zzek;
    private static final z23 zzilv;
    private String zzilt = "";
    private b73<l23> zzilu = p83.h;

    public static final class a extends s63.b<z23, a> implements f83 {
        public a(a33 a33Var) {
            super(z23.zzilv);
        }
    }

    static {
        z23 z23Var = new z23();
        zzilv = z23Var;
        s63.s(z23.class, z23Var);
    }

    public static z23 y() {
        return zzilv;
    }

    @Override // defpackage.s63
    public final Object q(int i, Object obj, Object obj2) {
        switch (a33.a[i - 1]) {
            case 1:
                return new z23();
            case 2:
                return new a(null);
            case 3:
                return new r83(zzilv, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"zzilt", "zzilu", l23.class});
            case 4:
                return zzilv;
            case 5:
                l83<z23> aVar = zzek;
                if (aVar == null) {
                    synchronized (z23.class) {
                        aVar = zzek;
                        if (aVar == null) {
                            aVar = new s63.a<>(zzilv);
                            zzek = aVar;
                        }
                    }
                }
                return aVar;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public final List<l23> x() {
        return this.zzilu;
    }
}
