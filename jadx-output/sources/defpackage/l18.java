package defpackage;

/* loaded from: classes2.dex */
public final class l18 implements k18 {
    public final String a;

    public l18(String str) {
        im7.e(str, "value");
        this.a = str;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof l18) && im7.a(this.a, ((l18) obj).a);
        }
        return true;
    }

    @Override // defpackage.k18
    public String getValue() {
        return this.a;
    }

    public int hashCode() {
        String str = this.a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public String toString() {
        return this.a;
    }
}
