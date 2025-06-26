package defpackage;

import android.content.Intent;

/* loaded from: classes2.dex */
public final class by6 {
    public final String a;
    public String b;
    public int c;
    public Intent d;

    public by6(String str, String str2, int i, Intent intent) {
        im7.e(str, "id");
        im7.e(str2, "label");
        im7.e(intent, "intent");
        this.a = str;
        this.b = str2;
        this.c = i;
        this.d = intent;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof by6)) {
            return false;
        }
        by6 by6Var = (by6) obj;
        return im7.a(this.a, by6Var.a) && im7.a(this.b, by6Var.b) && this.c == by6Var.c && im7.a(this.d, by6Var.d);
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int iHashCode2 = (((iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31) + this.c) * 31;
        Intent intent = this.d;
        return iHashCode2 + (intent != null ? intent.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("Shortcut(id=");
        sbZ.append(this.a);
        sbZ.append(", label=");
        sbZ.append(this.b);
        sbZ.append(", iconResource=");
        sbZ.append(this.c);
        sbZ.append(", intent=");
        sbZ.append(this.d);
        sbZ.append(")");
        return sbZ.toString();
    }
}
