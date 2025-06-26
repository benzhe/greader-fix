package defpackage;

import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ve6 implements ee6, Cloneable {
    public static final ve6 g = new ve6();
    public List<gd6> e = Collections.emptyList();
    public List<gd6> f = Collections.emptyList();

    /* JADX INFO: Add missing generic type declarations: [T] */
    public class a<T> extends de6<T> {
        public de6<T> a;
        public final /* synthetic */ boolean b;
        public final /* synthetic */ boolean c;
        public final /* synthetic */ od6 d;
        public final /* synthetic */ dg6 e;

        public a(boolean z, boolean z2, od6 od6Var, dg6 dg6Var) {
            this.b = z;
            this.c = z2;
            this.d = od6Var;
            this.e = dg6Var;
        }

        @Override // defpackage.de6
        public T a(eg6 eg6Var) throws IOException {
            if (this.b) {
                eg6Var.g0();
                return null;
            }
            de6<T> de6VarE = this.a;
            if (de6VarE == null) {
                de6VarE = this.d.e(ve6.this, this.e);
                this.a = de6VarE;
            }
            return de6VarE.a(eg6Var);
        }

        @Override // defpackage.de6
        public void b(gg6 gg6Var, T t) throws IOException {
            if (this.c) {
                gg6Var.m();
                return;
            }
            de6<T> de6VarE = this.a;
            if (de6VarE == null) {
                de6VarE = this.d.e(ve6.this, this.e);
                this.a = de6VarE;
            }
            de6VarE.b(gg6Var, t);
        }
    }

    @Override // defpackage.ee6
    public <T> de6<T> b(od6 od6Var, dg6<T> dg6Var) {
        Class<? super T> cls = dg6Var.a;
        boolean zD = d(cls);
        boolean z = zD || c(cls, true);
        boolean z2 = zD || c(cls, false);
        if (z || z2) {
            return new a(z2, z, od6Var, dg6Var);
        }
        return null;
    }

    public final boolean c(Class<?> cls, boolean z) {
        Iterator<gd6> it = (z ? this.e : this.f).iterator();
        while (it.hasNext()) {
            if (it.next().b(cls)) {
                return true;
            }
        }
        return false;
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            return (ve6) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new AssertionError(e);
        }
    }

    public final boolean d(Class<?> cls) {
        return !Enum.class.isAssignableFrom(cls) && (cls.isAnonymousClass() || cls.isLocalClass());
    }
}
