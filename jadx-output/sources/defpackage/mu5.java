package defpackage;

import com.google.firebase.Timestamp;
import defpackage.bd6;
import defpackage.jc6;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public abstract class mu5 implements av5 {
    public final List<bd6> a;

    public static class a extends mu5 {
        public a(List<bd6> list) {
            super(list);
        }

        @Override // defpackage.mu5
        public bd6 d(bd6 bd6Var) {
            jc6.b bVarE = mu5.e(bd6Var);
            for (bd6 bd6Var2 : this.a) {
                int i = 0;
                while (i < ((jc6) bVarE.f).I()) {
                    if (lu5.e(((jc6) bVarE.f).H(i), bd6Var2)) {
                        bVarE.o();
                        jc6.E((jc6) bVarE.f, i);
                    } else {
                        i++;
                    }
                }
            }
            bd6.b bVarZ = bd6.Z();
            bVarZ.r(bVarE);
            return bVarZ.l();
        }
    }

    public static class b extends mu5 {
        public b(List<bd6> list) {
            super(list);
        }

        @Override // defpackage.mu5
        public bd6 d(bd6 bd6Var) {
            jc6.b bVarE = mu5.e(bd6Var);
            for (bd6 bd6Var2 : this.a) {
                if (!lu5.d(bVarE, bd6Var2)) {
                    bVarE.o();
                    jc6.C((jc6) bVarE.f, bd6Var2);
                }
            }
            bd6.b bVarZ = bd6.Z();
            bVarZ.r(bVarE);
            return bVarZ.l();
        }
    }

    public mu5(List<bd6> list) {
        this.a = Collections.unmodifiableList(list);
    }

    public static jc6.b e(bd6 bd6Var) {
        return lu5.f(bd6Var) ? bd6Var.N().d() : jc6.J();
    }

    @Override // defpackage.av5
    public bd6 a(bd6 bd6Var, Timestamp timestamp) {
        return d(bd6Var);
    }

    @Override // defpackage.av5
    public bd6 b(bd6 bd6Var) {
        return null;
    }

    @Override // defpackage.av5
    public bd6 c(bd6 bd6Var, bd6 bd6Var2) {
        return d(bd6Var);
    }

    public abstract bd6 d(bd6 bd6Var);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.a.equals(((mu5) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode() + (getClass().hashCode() * 31);
    }
}
