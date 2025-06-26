package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class sj7<T> implements Serializable {

    public static final class a implements Serializable {
        public final Throwable e;

        public a(Throwable th) {
            im7.e(th, "exception");
            this.e = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && im7.a(this.e, ((a) obj).e);
        }

        public int hashCode() {
            return this.e.hashCode();
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Failure(");
            sbZ.append(this.e);
            sbZ.append(')');
            return sbZ.toString();
        }
    }

    public static final Throwable a(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).e;
        }
        return null;
    }
}
