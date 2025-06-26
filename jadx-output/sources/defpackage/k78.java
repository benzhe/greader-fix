package defpackage;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class k78 {

    public static final class a extends k78 implements Serializable {
        public final a58 e;

        public a(a58 a58Var) {
            this.e = a58Var;
        }

        @Override // defpackage.k78
        public a58 a(o48 o48Var) {
            return this.e;
        }

        @Override // defpackage.k78
        public i78 b(q48 q48Var) {
            return null;
        }

        @Override // defpackage.k78
        public List<a58> c(q48 q48Var) {
            return Collections.singletonList(this.e);
        }

        @Override // defpackage.k78
        public boolean d(o48 o48Var) {
            return false;
        }

        @Override // defpackage.k78
        public boolean e() {
            return true;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof a) {
                return this.e.equals(((a) obj).e);
            }
            if (!(obj instanceof g78)) {
                return false;
            }
            g78 g78Var = (g78) obj;
            return g78Var.e() && this.e.equals(g78Var.a(o48.g));
        }

        @Override // defpackage.k78
        public boolean f(q48 q48Var, a58 a58Var) {
            return this.e.equals(a58Var);
        }

        public int hashCode() {
            int i = this.e.f;
            return ((i + 31) ^ (((i + 31) ^ 1) ^ 1)) ^ 1;
        }

        public String toString() {
            StringBuilder sbZ = jo.z("FixedRules:");
            sbZ.append(this.e);
            return sbZ.toString();
        }
    }

    public abstract a58 a(o48 o48Var);

    public abstract i78 b(q48 q48Var);

    public abstract List<a58> c(q48 q48Var);

    public abstract boolean d(o48 o48Var);

    public abstract boolean e();

    public abstract boolean f(q48 q48Var, a58 a58Var);
}
