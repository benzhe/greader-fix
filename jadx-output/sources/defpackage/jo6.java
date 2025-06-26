package defpackage;

import com.google.firebase.firestore.FirebaseFirestore;

/* loaded from: classes2.dex */
public final class jo6 extends jm7 implements tl7<o18, j18, FirebaseFirestore> {
    public static final jo6 e = new jo6();

    public jo6() {
        super(2);
    }

    @Override // defpackage.tl7
    public FirebaseFirestore b(o18 o18Var, j18 j18Var) {
        FirebaseFirestore firebaseFirestoreB;
        im7.e(o18Var, "$receiver");
        im7.e(j18Var, "it");
        pe5 pe5VarB = pe5.b();
        c50.B(pe5VarB, "Provided FirebaseApp must not be null.");
        pe5VarB.a();
        bp5 bp5Var = (bp5) pe5VarB.d.a(bp5.class);
        c50.B(bp5Var, "Firestore component is not present.");
        synchronized (bp5Var) {
            firebaseFirestoreB = bp5Var.a.get("(default)");
            if (firebaseFirestoreB == null) {
                firebaseFirestoreB = FirebaseFirestore.b(bp5Var.c, bp5Var.b, bp5Var.d, "(default)", bp5Var, bp5Var.e);
                bp5Var.a.put("(default)", firebaseFirestoreB);
            }
        }
        return firebaseFirestoreB;
    }
}
