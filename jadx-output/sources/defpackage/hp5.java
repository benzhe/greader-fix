package defpackage;

import com.google.firebase.firestore.FirebaseFirestore;
import java.util.Objects;

/* loaded from: classes.dex */
public class hp5 {
    public final yq5 a;
    public final FirebaseFirestore b;

    public hp5(yq5 yq5Var, FirebaseFirestore firebaseFirestore) {
        this.a = yq5Var;
        Objects.requireNonNull(firebaseFirestore);
        this.b = firebaseFirestore;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hp5)) {
            return false;
        }
        hp5 hp5Var = (hp5) obj;
        return this.a.equals(hp5Var.a) && this.b.equals(hp5Var.b);
    }

    public int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }
}
