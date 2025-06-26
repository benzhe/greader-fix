package defpackage;

import com.google.firebase.firestore.FirebaseFirestore;

/* loaded from: classes.dex */
public class po5 extends hp5 {
    public po5(iu5 iu5Var, FirebaseFirestore firebaseFirestore) {
        super(yq5.a(iu5Var), firebaseFirestore);
        if (iu5Var.I() % 2 == 1) {
            return;
        }
        StringBuilder sbZ = jo.z("Invalid collection reference. Collection references must have an odd number of segments, but ");
        sbZ.append(iu5Var.l());
        sbZ.append(" has ");
        sbZ.append(iu5Var.I());
        throw new IllegalArgumentException(sbZ.toString());
    }

    public to5 a(String str) {
        c50.B(str, "Provided document path must not be null.");
        iu5 iu5VarI = this.a.e.i(iu5.N(str));
        FirebaseFirestore firebaseFirestore = this.b;
        if (iu5VarI.I() % 2 == 0) {
            return new to5(new bu5(iu5VarI), firebaseFirestore);
        }
        StringBuilder sbZ = jo.z("Invalid document reference. Document references must have an even number of segments, but ");
        sbZ.append(iu5VarI.l());
        sbZ.append(" has ");
        sbZ.append(iu5VarI.I());
        throw new IllegalArgumentException(sbZ.toString());
    }
}
