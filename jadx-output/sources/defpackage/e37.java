package defpackage;

/* loaded from: classes2.dex */
public abstract class e37 extends a57 {

    public static abstract class a {
        public e37 a(b bVar, i47 i47Var) {
            throw new UnsupportedOperationException("Not implemented");
        }
    }

    public static final class b {
        public final v27 a;
        public final x27 b;

        public b(v27 v27Var, x27 x27Var) {
            c50.A(v27Var, "transportAttrs");
            this.a = v27Var;
            c50.A(x27Var, "callOptions");
            this.b = x27Var;
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("transportAttrs", this.a);
            nd5VarK0.d("callOptions", this.b);
            return nd5VarK0.toString();
        }
    }
}
