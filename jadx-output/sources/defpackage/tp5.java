package defpackage;

/* loaded from: classes.dex */
public final class tp5 {
    public static final tp5 b = new tp5(null);
    public final String a;

    public tp5(String str) {
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || tp5.class != obj.getClass()) {
            return false;
        }
        String str = this.a;
        String str2 = ((tp5) obj).a;
        return str != null ? str.equals(str2) : str2 == null;
    }

    public int hashCode() {
        String str = this.a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return jo.s(jo.z("User(uid:"), this.a, ")");
    }
}
