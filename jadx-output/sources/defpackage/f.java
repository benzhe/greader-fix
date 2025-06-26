package defpackage;

import com.google.firebase.firestore.FirebaseFirestore;
import java.util.List;

/* loaded from: classes2.dex */
public final class f {
    public static final i18 a;
    public static final i18 b;
    public static final i18 c;
    public static final List<i18> d;
    public static final f e = new f();

    /* compiled from: kotlin-style lambda group */
    /* loaded from: classes.dex */
    public static final class a extends jm7 implements pl7<i18, yj7> {
        public static final a f = new a(0);
        public static final a g = new a(1);
        public static final a h = new a(2);
        public final /* synthetic */ int e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(int i) {
            super(1);
            this.e = i;
        }

        @Override // defpackage.pl7
        public final yj7 invoke(i18 i18Var) throws u08 {
            q08 q08Var = q08.Single;
            int i = this.e;
            if (i == 0) {
                i18 i18Var2 = i18Var;
                im7.e(i18Var2, "$receiver");
                jo6 jo6Var = jo6.e;
                r08 r08VarA = i18Var2.a(false, false);
                k18 k18Var = i18Var2.a;
                hk7 hk7Var = hk7.e;
                kt7.a(i18Var2.d, new p08(k18Var, sm7.a(FirebaseFirestore.class), null, jo6Var, q08Var, hk7Var, r08VarA, null, 128));
                kt7.a(i18Var2.d, new p08(i18Var2.a, sm7.a(eq.class), null, ko6.e, q08Var, hk7Var, i18Var2.a(false, false), null, 128));
                return yj7.a;
            }
            if (i == 1) {
                i18 i18Var3 = i18Var;
                im7.e(i18Var3, "$receiver");
                lo6 lo6Var = lo6.e;
                r08 r08VarA2 = i18Var3.a(false, false);
                k18 k18Var2 = i18Var3.a;
                hk7 hk7Var2 = hk7.e;
                kt7.a(i18Var3.d, new p08(k18Var2, sm7.a(go6.class), null, lo6Var, q08Var, hk7Var2, r08VarA2, null, 128));
                kt7.a(i18Var3.d, new p08(i18Var3.a, sm7.a(yn6.class), null, mo6.e, q08Var, hk7Var2, i18Var3.a(false, false), null, 128));
                return yj7.a;
            }
            if (i != 2) {
                throw null;
            }
            i18 i18Var4 = i18Var;
            im7.e(i18Var4, "$receiver");
            no6 no6Var = no6.e;
            r08 r08VarA3 = i18Var4.a(false, false);
            k18 k18Var3 = i18Var4.a;
            hk7 hk7Var3 = hk7.e;
            kt7.a(i18Var4.d, new p08(k18Var3, sm7.a(wo6.class), null, no6Var, q08Var, hk7Var3, r08VarA3, null, 128));
            kt7.a(i18Var4.d, new p08(i18Var4.a, sm7.a(uo6.class), null, oo6.e, q08Var, hk7Var3, i18Var4.a(false, false), null, 128));
            return yj7.a;
        }
    }

    static {
        i18 i18VarN = kt7.n(false, false, a.f, 3);
        a = i18VarN;
        i18 i18VarN2 = kt7.n(false, false, a.h, 3);
        b = i18VarN2;
        i18 i18VarN3 = kt7.n(false, false, a.g, 3);
        c = i18VarN3;
        d = ek7.l(i18VarN, i18VarN2, i18VarN3);
    }
}
