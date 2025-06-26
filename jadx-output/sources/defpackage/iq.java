package defpackage;

import com.android.billingclient.api.SkuDetails;
import defpackage.eh7;
import defpackage.gq;
import java.util.List;

/* loaded from: classes.dex */
public final class iq<T> implements dc7<List<? extends SkuDetails>> {
    public final /* synthetic */ gq.b a;
    public final /* synthetic */ en b;

    public static final class a implements ln {
        public final /* synthetic */ bc7 b;

        public a(bc7 bc7Var) {
            this.b = bc7Var;
        }

        @Override // defpackage.ln
        public final void a(in inVar, List<SkuDetails> list) {
            im7.e(inVar, "billingResult");
            bc7 bc7Var = this.b;
            im7.d(bc7Var, "it");
            if (((eh7.a) bc7Var).a()) {
                return;
            }
            if (!gq.f(gq.this, inVar.a)) {
                ((eh7.a) this.b).b(mq.a(inVar));
            } else {
                bc7 bc7Var2 = this.b;
                if (list == null) {
                    list = hk7.e;
                }
                ((eh7.a) bc7Var2).c(list);
            }
        }
    }

    public iq(gq.b bVar, en enVar) {
        this.a = bVar;
        this.b = enVar;
    }

    @Override // defpackage.dc7
    public final void a(bc7<List<? extends SkuDetails>> bc7Var) {
        im7.e(bc7Var, "it");
        this.b.f(this.a.f, new a(bc7Var));
    }
}
