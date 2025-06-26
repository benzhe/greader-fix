package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes2.dex */
public abstract class j58 implements Comparable<j58> {
    public static final ConcurrentHashMap<String, j58> e = new ConcurrentHashMap<>();
    public static final ConcurrentHashMap<String, j58> f = new ConcurrentHashMap<>();

    static {
        try {
            Locale.class.getMethod("getUnicodeLocaleType", String.class);
        } catch (Throwable unused) {
        }
    }

    public static void K(j58 j58Var) {
        e.putIfAbsent(j58Var.D(), j58Var);
        String strC = j58Var.C();
        if (strC != null) {
            f.putIfAbsent(strC, j58Var);
        }
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new w58((byte) 11, this);
    }

    public static j58 y(u68 u68Var) {
        kt7.o(u68Var, "temporal");
        j58 j58Var = (j58) u68Var.w(z68.b);
        return j58Var != null ? j58Var : o58.g;
    }

    public abstract String C();

    public abstract String D();

    public f58<?> I(u68 u68Var) {
        try {
            return k(u68Var).K(r48.M(u68Var));
        } catch (l48 e2) {
            StringBuilder sbZ = jo.z("Unable to obtain ChronoLocalDateTime from TemporalAccessor: ");
            sbZ.append(u68Var.getClass());
            throw new l48(sbZ.toString(), e2);
        }
    }

    public h58<?> L(o48 o48Var, z48 z48Var) {
        return i58.X(this, o48Var, z48Var);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof j58) && compareTo((j58) obj) == 0;
    }

    public int hashCode() {
        return getClass().hashCode() ^ D().hashCode();
    }

    @Override // java.lang.Comparable
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public int compareTo(j58 j58Var) {
        return D().compareTo(j58Var.D());
    }

    public abstract e58 k(u68 u68Var);

    public <D extends e58> D l(t68 t68Var) {
        D d = (D) t68Var;
        if (equals(d.M())) {
            return d;
        }
        StringBuilder sbZ = jo.z("Chrono mismatch, expected: ");
        sbZ.append(D());
        sbZ.append(", actual: ");
        sbZ.append(d.M().D());
        throw new ClassCastException(sbZ.toString());
    }

    public <D extends e58> g58<D> t(t68 t68Var) {
        g58<D> g58Var = (g58) t68Var;
        if (equals(g58Var.e.M())) {
            return g58Var;
        }
        StringBuilder sbZ = jo.z("Chrono mismatch, required: ");
        sbZ.append(D());
        sbZ.append(", supplied: ");
        sbZ.append(g58Var.e.M().D());
        throw new ClassCastException(sbZ.toString());
    }

    public String toString() {
        return D();
    }

    public <D extends e58> i58<D> w(t68 t68Var) {
        i58<D> i58Var = (i58) t68Var;
        if (equals(i58Var.Q().M())) {
            return i58Var;
        }
        StringBuilder sbZ = jo.z("Chrono mismatch, required: ");
        sbZ.append(D());
        sbZ.append(", supplied: ");
        sbZ.append(i58Var.Q().M().D());
        throw new ClassCastException(sbZ.toString());
    }

    public abstract k58 x(int i);
}
