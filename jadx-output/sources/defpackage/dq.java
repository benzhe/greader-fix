package defpackage;

import com.android.billingclient.api.Purchase;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dq {
    public final int a;
    public final List<Purchase> b;

    public static final class a extends dq {
        public final int c;
        public final List<Purchase> d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(int i, List<? extends Purchase> list) {
            super(i, list, null);
            im7.e(list, "purchases");
            this.c = i;
            this.d = list;
        }

        @Override // defpackage.dq
        public int a() {
            return this.c;
        }

        @Override // defpackage.dq
        public List<Purchase> b() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.c == aVar.c && im7.a(this.d, aVar.d);
        }

        public int hashCode() {
            int i = this.c * 31;
            List<Purchase> list = this.d;
            return i + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Canceled(code=");
            sbZ.append(this.c);
            sbZ.append(", purchases=");
            sbZ.append(this.d);
            sbZ.append(")");
            return sbZ.toString();
        }
    }

    public static final class b extends dq {
        public final int c;
        public final List<Purchase> d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public b(int i, List<? extends Purchase> list) {
            super(i, list, null);
            im7.e(list, "purchases");
            this.c = i;
            this.d = list;
        }

        @Override // defpackage.dq
        public int a() {
            return this.c;
        }

        @Override // defpackage.dq
        public List<Purchase> b() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.c == bVar.c && im7.a(this.d, bVar.d);
        }

        public int hashCode() {
            int i = this.c * 31;
            List<Purchase> list = this.d;
            return i + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Failed(code=");
            sbZ.append(this.c);
            sbZ.append(", purchases=");
            sbZ.append(this.d);
            sbZ.append(")");
            return sbZ.toString();
        }
    }

    public static final class c extends dq {
        public final int c;
        public final List<Purchase> d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(int i, List<? extends Purchase> list) {
            super(i, list, null);
            im7.e(list, "purchases");
            this.c = i;
            this.d = list;
        }

        @Override // defpackage.dq
        public int a() {
            return this.c;
        }

        @Override // defpackage.dq
        public List<Purchase> b() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return this.c == cVar.c && im7.a(this.d, cVar.d);
        }

        public int hashCode() {
            int i = this.c * 31;
            List<Purchase> list = this.d;
            return i + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            StringBuilder sbZ = jo.z("Success(code=");
            sbZ.append(this.c);
            sbZ.append(", purchases=");
            sbZ.append(this.d);
            sbZ.append(")");
            return sbZ.toString();
        }
    }

    public dq(int i, List list, gm7 gm7Var) {
        this.a = i;
        this.b = list;
    }

    public int a() {
        return this.a;
    }

    public List<Purchase> b() {
        return this.b;
    }
}
