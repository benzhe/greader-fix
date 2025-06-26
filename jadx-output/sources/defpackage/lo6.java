package defpackage;

import com.google.firebase.firestore.FirebaseFirestore;

/* loaded from: classes2.dex */
public final class lo6 extends jm7 implements tl7<o18, j18, go6> {
    public static final lo6 e = new lo6();

    public lo6() {
        super(2);
    }

    @Override // defpackage.tl7
    public go6 b(o18 o18Var, j18 j18Var) {
        o18 o18Var2 = o18Var;
        im7.e(o18Var2, "$receiver");
        im7.e(j18Var, "it");
        return new go6((FirebaseFirestore) o18Var2.a(sm7.a(FirebaseFirestore.class), null, null));
    }
}
