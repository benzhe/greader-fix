package defpackage;

import defpackage.a37;
import defpackage.s37;

/* loaded from: classes2.dex */
public final class za7 implements b37 {
    public final i47 a;

    public final class a<ReqT, RespT> extends s37.a<ReqT, RespT> {
        public a(a37<ReqT, RespT> a37Var) {
            super(a37Var);
        }

        @Override // defpackage.s37, defpackage.a37
        public void e(a37.a<RespT> aVar, i47 i47Var) {
            i47Var.f(za7.this.a);
            super.e(aVar, i47Var);
        }
    }

    public za7(i47 i47Var) {
        c50.A(i47Var, "extraHeaders");
        this.a = i47Var;
    }

    @Override // defpackage.b37
    public <ReqT, RespT> a37<ReqT, RespT> a(j47<ReqT, RespT> j47Var, x27 x27Var, y27 y27Var) {
        return new a(y27Var.h(j47Var, x27Var));
    }
}
