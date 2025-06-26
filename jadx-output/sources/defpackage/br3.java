package defpackage;

import android.text.TextUtils;

/* loaded from: classes.dex */
public final class br3 {
    public final String a;
    public final String b;

    public br3(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && br3.class == obj.getClass()) {
            br3 br3Var = (br3) obj;
            if (TextUtils.equals(this.a, br3Var.a) && TextUtils.equals(this.b, br3Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    public final String toString() {
        String str = this.a;
        String str2 = this.b;
        StringBuilder sbY = jo.y(jo.x(str2, jo.x(str, 20)), "Header[name=", str, ",value=", str2);
        sbY.append("]");
        return sbY.toString();
    }
}
