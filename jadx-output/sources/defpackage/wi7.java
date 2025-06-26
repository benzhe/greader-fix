package defpackage;

import java.io.Serializable;

/* loaded from: classes2.dex */
public enum wi7 {
    COMPLETE;

    public static final class a implements Serializable {
        public final Throwable e;

        public a(Throwable th) {
            this.e = th;
        }

        public boolean equals(Object obj) {
            Throwable th;
            Throwable th2;
            return (obj instanceof a) && ((th = this.e) == (th2 = ((a) obj).e) || (th != null && th.equals(th2)));
        }

        public int hashCode() {
            return this.e.hashCode();
        }

        public String toString() {
            StringBuilder sbZ = jo.z("NotificationLite.Error[");
            sbZ.append(this.e);
            sbZ.append("]");
            return sbZ.toString();
        }
    }

    public static final class b implements Serializable {
        public final y38 e;

        public b(y38 y38Var) {
            this.e = y38Var;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("NotificationLite.Subscription[");
            sbZ.append(this.e);
            sbZ.append("]");
            return sbZ.toString();
        }
    }

    @Override // java.lang.Enum
    public String toString() {
        return "NotificationLite.Complete";
    }
}
