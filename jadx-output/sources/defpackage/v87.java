package defpackage;

import defpackage.b87;
import defpackage.m37;
import defpackage.s87;
import defpackage.w67;
import defpackage.x27;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class v87 implements b37 {
    public static final x27.a<s87.a> d = x27.a.a("internal-retry-policy");
    public static final x27.a<w67.a> e = x27.a.a("internal-hedging-policy");
    public final AtomicReference<b87> a = new AtomicReference<>();
    public final boolean b;
    public volatile boolean c;

    public final class a implements w67.a {
        public final /* synthetic */ j47 a;

        public a(j47 j47Var) {
            this.a = j47Var;
        }

        @Override // w67.a
        public w67 get() {
            if (!v87.this.c) {
                return w67.d;
            }
            b87.a aVarB = v87.this.b(this.a);
            w67 w67Var = aVarB == null ? w67.d : aVarB.f;
            sd5.a(w67Var.equals(w67.d) || v87.this.c(this.a).equals(s87.f), "Can not apply both retry and hedging policy for the method '%s'", this.a);
            return w67Var;
        }
    }

    public final class b implements s87.a {
        public final /* synthetic */ j47 a;

        public b(j47 j47Var) {
            this.a = j47Var;
        }

        @Override // s87.a
        public s87 get() {
            return !v87.this.c ? s87.f : v87.this.c(this.a);
        }
    }

    public final class c implements w67.a {
        public final /* synthetic */ w67 a;

        public c(v87 v87Var, w67 w67Var) {
            this.a = w67Var;
        }

        @Override // w67.a
        public w67 get() {
            return this.a;
        }
    }

    public final class d implements s87.a {
        public final /* synthetic */ s87 a;

        public d(v87 v87Var, s87 s87Var) {
            this.a = s87Var;
        }

        @Override // s87.a
        public s87 get() {
            return this.a;
        }
    }

    public v87(boolean z) {
        this.b = z;
    }

    @Override // defpackage.b37
    public <ReqT, RespT> a37<ReqT, RespT> a(j47<ReqT, RespT> j47Var, x27 x27Var, y27 y27Var) {
        x27 x27Var2;
        if (this.b) {
            if (this.c) {
                b87.a aVarB = b(j47Var);
                s87 s87Var = aVarB == null ? s87.f : aVarB.e;
                b87.a aVarB2 = b(j47Var);
                w67 w67Var = aVarB2 == null ? w67.d : aVarB2.f;
                sd5.a(s87Var.equals(s87.f) || w67Var.equals(w67.d), "Can not apply both retry and hedging policy for the method '%s'", j47Var);
                x27Var = x27Var.e(d, new d(this, s87Var)).e(e, new c(this, w67Var));
            } else {
                x27Var = x27Var.e(d, new b(j47Var)).e(e, new a(j47Var));
            }
        }
        b87.a aVarB3 = b(j47Var);
        if (aVarB3 == null) {
            return y27Var.h(j47Var, x27Var);
        }
        Long l = aVarB3.a;
        if (l != null) {
            long jLongValue = l.longValue();
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            m37.b bVar = m37.h;
            Objects.requireNonNull(timeUnit, "units");
            m37 m37Var = new m37(bVar, timeUnit.toNanos(jLongValue), true);
            m37 m37Var2 = x27Var.a;
            if (m37Var2 == null || m37Var.compareTo(m37Var2) < 0) {
                x27 x27Var3 = new x27(x27Var);
                x27Var3.a = m37Var;
                x27Var = x27Var3;
            }
        }
        Boolean bool = aVarB3.b;
        if (bool != null) {
            if (bool.booleanValue()) {
                Objects.requireNonNull(x27Var);
                x27Var2 = new x27(x27Var);
                x27Var2.h = Boolean.TRUE;
            } else {
                Objects.requireNonNull(x27Var);
                x27Var2 = new x27(x27Var);
                x27Var2.h = Boolean.FALSE;
            }
            x27Var = x27Var2;
        }
        Integer num = aVarB3.c;
        if (num != null) {
            Integer num2 = x27Var.i;
            x27Var = num2 != null ? x27Var.c(Math.min(num2.intValue(), aVarB3.c.intValue())) : x27Var.c(num.intValue());
        }
        Integer num3 = aVarB3.d;
        if (num3 != null) {
            Integer num4 = x27Var.j;
            x27Var = num4 != null ? x27Var.d(Math.min(num4.intValue(), aVarB3.d.intValue())) : x27Var.d(num3.intValue());
        }
        return y27Var.h(j47Var, x27Var);
    }

    public final b87.a b(j47<?, ?> j47Var) {
        b87 b87Var = this.a.get();
        b87.a aVar = b87Var != null ? b87Var.a.get(j47Var.b) : null;
        if (aVar != null || b87Var == null) {
            return aVar;
        }
        return b87Var.b.get(j47Var.c);
    }

    public s87 c(j47<?, ?> j47Var) {
        b87.a aVarB = b(j47Var);
        return aVarB == null ? s87.f : aVarB.e;
    }
}
