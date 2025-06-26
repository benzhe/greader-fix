package defpackage;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public class cp6 {
    public String a;
    public String b;

    public cp6() {
        this.a = null;
        this.b = null;
    }

    public void a() {
        this.a = null;
        this.b = null;
    }

    public String toString() {
        return jo.s(jo.z("Media(source="), this.a, ")");
    }

    public cp6(String str, String str2) {
        this.a = null;
        this.b = null;
        this.a = str;
        this.b = str2;
    }

    public cp6(String str) {
        this.a = null;
        this.b = null;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String[] strArrSplit = str.split(";");
            if (strArrSplit.length == 6) {
                this.a = strArrSplit[0];
                this.b = strArrSplit[1];
                Integer.valueOf(strArrSplit[2]).intValue();
                Integer.valueOf(strArrSplit[3]).intValue();
                Integer.valueOf(strArrSplit[4]).intValue();
                Integer.valueOf(strArrSplit[5]).intValue();
            } else if (strArrSplit.length == 4) {
                this.a = strArrSplit[0];
                this.b = strArrSplit[1];
                Integer.valueOf(strArrSplit[2]).intValue();
                Integer.valueOf(strArrSplit[3]).intValue();
            } else if (strArrSplit.length == 2) {
                this.a = strArrSplit[0];
                this.b = strArrSplit[1];
            }
        } catch (Exception unused) {
        }
    }
}
