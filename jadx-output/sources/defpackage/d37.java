package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class d37 {

    public static class a extends y27 {
        public final y27 a;
        public final b37 b;

        public a(y27 y27Var, b37 b37Var, c37 c37Var) {
            this.a = y27Var;
            c50.A(b37Var, "interceptor");
            this.b = b37Var;
        }

        @Override // defpackage.y27
        public String a() {
            return this.a.a();
        }

        @Override // defpackage.y27
        public <ReqT, RespT> a37<ReqT, RespT> h(j47<ReqT, RespT> j47Var, x27 x27Var) {
            return this.b.a(j47Var, x27Var, this.a);
        }
    }

    public static y27 a(y27 y27Var, List<? extends b37> list) {
        c50.A(y27Var, NSRSS20.CHANNEL);
        Iterator<? extends b37> it = list.iterator();
        while (it.hasNext()) {
            y27Var = new a(y27Var, it.next(), null);
        }
        return y27Var;
    }
}
