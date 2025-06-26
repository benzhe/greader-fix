package defpackage;

import defpackage.eh7;
import defpackage.gq;

/* loaded from: classes.dex */
public final class fq<T> implements dc7<Integer> {
    public final /* synthetic */ gq.a a;
    public final /* synthetic */ en b;

    public static final class a implements dn {
        public final /* synthetic */ bc7 b;

        public a(bc7 bc7Var) {
            this.b = bc7Var;
        }

        @Override // defpackage.dn
        public final void a(in inVar) {
            im7.e(inVar, "result");
            bc7 bc7Var = this.b;
            im7.d(bc7Var, "it");
            if (((eh7.a) bc7Var).a()) {
                return;
            }
            int i = inVar.a;
            if (gq.f(gq.this, i)) {
                ((eh7.a) this.b).c(Integer.valueOf(i));
            } else {
                ((eh7.a) this.b).b(mq.a(inVar));
            }
        }
    }

    public fq(gq.a aVar, en enVar) {
        this.a = aVar;
        this.b = enVar;
    }

    @Override // defpackage.dc7
    public final void a(bc7<Integer> bc7Var) {
        im7.e(bc7Var, "it");
        this.b.a(this.a.f, new a(bc7Var));
    }
}
