package defpackage;

import android.app.Application;
import android.content.Context;
import java.util.List;

/* loaded from: classes2.dex */
public final class j08 extends jm7 implements pl7<i18, yj7> {
    public final /* synthetic */ Context e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j08(Context context) {
        super(1);
        this.e = context;
    }

    @Override // defpackage.pl7
    public yj7 invoke(i18 i18Var) throws u08 {
        i18 i18Var2 = i18Var;
        im7.e(i18Var2, "$receiver");
        i08 i08Var = new i08(this);
        r08 r08VarA = i18Var2.a(false, false);
        p08 p08Var = new p08(i18Var2.a, sm7.a(Context.class), null, i08Var, q08.Single, hk7.e, r08VarA, null, 128);
        kt7.a(i18Var2.d, p08Var);
        hn7 hn7VarA = sm7.a(Application.class);
        im7.e(p08Var, "$this$bind");
        im7.e(hn7VarA, "clazz");
        List<? extends hn7<?>> listP = ek7.p(p08Var.f, hn7VarA);
        im7.e(listP, "<set-?>");
        p08Var.f = listP;
        return yj7.a;
    }
}
