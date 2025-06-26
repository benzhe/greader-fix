package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class ap5 {
    public final String a = "firestore.googleapis.com";
    public final boolean b = true;
    public final boolean c = true;
    public final long d = 104857600;

    public static final class b {
    }

    public ap5(b bVar, a aVar) {
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ap5.class != obj.getClass()) {
            return false;
        }
        ap5 ap5Var = (ap5) obj;
        return this.a.equals(ap5Var.a) && this.b == ap5Var.b && this.c == ap5Var.c && this.d == ap5Var.d;
    }

    public int hashCode() {
        return (((((this.a.hashCode() * 31) + (this.b ? 1 : 0)) * 31) + (this.c ? 1 : 0)) * 31) + ((int) this.d);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("FirebaseFirestoreSettings{host=");
        sbZ.append(this.a);
        sbZ.append(", sslEnabled=");
        sbZ.append(this.b);
        sbZ.append(", persistenceEnabled=");
        sbZ.append(this.c);
        sbZ.append(", cacheSizeBytes=");
        return jo.r(sbZ, this.d, StringSubstitutor.DEFAULT_VAR_END);
    }
}
