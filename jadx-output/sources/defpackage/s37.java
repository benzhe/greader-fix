package defpackage;

import defpackage.a37;

/* loaded from: classes2.dex */
public abstract class s37<ReqT, RespT> extends q47<ReqT, RespT> {

    public static abstract class a<ReqT, RespT> extends s37<ReqT, RespT> {
        public final a37<ReqT, RespT> a;

        public a(a37<ReqT, RespT> a37Var) {
            this.a = a37Var;
        }

        @Override // defpackage.q47
        public a37<ReqT, RespT> f() {
            return this.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.a37
    public void d(ReqT reqt) {
        f().d(reqt);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.a37
    public void e(a37.a<RespT> aVar, i47 i47Var) {
        f().e(aVar, i47Var);
    }
}
