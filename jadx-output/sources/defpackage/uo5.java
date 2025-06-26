package defpackage;

import com.google.firebase.Timestamp;
import com.google.firebase.firestore.FirebaseFirestore;
import java.util.Objects;

/* loaded from: classes.dex */
public class uo5 {
    public final FirebaseFirestore a;
    public final bu5 b;
    public final yt5 c;
    public final jp5 d;

    public enum a {
        NONE,
        ESTIMATE,
        PREVIOUS
    }

    public uo5(FirebaseFirestore firebaseFirestore, bu5 bu5Var, yt5 yt5Var, boolean z, boolean z2) {
        Objects.requireNonNull(firebaseFirestore);
        this.a = firebaseFirestore;
        Objects.requireNonNull(bu5Var);
        this.b = bu5Var;
        this.c = yt5Var;
        this.d = new jp5(z2, z);
    }

    public final <T> T a(Object obj, String str, Class<T> cls) {
        if (obj == null) {
            return null;
        }
        if (cls.isInstance(obj)) {
            return cls.cast(obj);
        }
        StringBuilder sbC = jo.C("Field '", str, "' is not a ");
        sbC.append(cls.getName());
        throw new RuntimeException(sbC.toString());
    }

    public final Object b(eu5 eu5Var, a aVar) {
        bd6 bd6VarC;
        yt5 yt5Var = this.c;
        if (yt5Var == null || (bd6VarC = yt5Var.d.c(eu5Var)) == null) {
            return null;
        }
        return new np5(this.a, aVar).a(bd6VarC);
    }

    public Long c(String str) {
        Number number = (Number) e(str, Number.class);
        if (number != null) {
            return Long.valueOf(number.longValue());
        }
        return null;
    }

    public Timestamp d(String str) {
        a aVar = a.NONE;
        c50.B(str, "Provided field path must not be null.");
        c50.B(aVar, "Provided serverTimestampBehavior value must not be null.");
        return (Timestamp) a(b(xo5.a(str).a, aVar), str, Timestamp.class);
    }

    public final <T> T e(String str, Class<T> cls) {
        c50.B(str, "Provided field must not be null.");
        a aVar = a.NONE;
        xo5 xo5VarA = xo5.a(str);
        c50.B(xo5VarA, "Provided field path must not be null.");
        c50.B(aVar, "Provided serverTimestampBehavior value must not be null.");
        return (T) a(b(xo5VarA.a, aVar), str, cls);
    }

    public boolean equals(Object obj) {
        yt5 yt5Var;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof uo5)) {
            return false;
        }
        uo5 uo5Var = (uo5) obj;
        return this.a.equals(uo5Var.a) && this.b.equals(uo5Var.b) && ((yt5Var = this.c) != null ? yt5Var.equals(uo5Var.c) : uo5Var.c == null) && this.d.equals(uo5Var.d);
    }

    public int hashCode() {
        int iHashCode = (this.b.hashCode() + (this.a.hashCode() * 31)) * 31;
        yt5 yt5Var = this.c;
        return this.d.hashCode() + ((iHashCode + (yt5Var != null ? yt5Var.hashCode() : 0)) * 31);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("DocumentSnapshot{key=");
        sbZ.append(this.b);
        sbZ.append(", metadata=");
        sbZ.append(this.d);
        sbZ.append(", doc=");
        sbZ.append(this.c);
        sbZ.append('}');
        return sbZ.toString();
    }
}
