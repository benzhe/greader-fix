package defpackage;

/* loaded from: classes2.dex */
public class ky6 {
    public String b;
    public String c;
    public long a = -1;
    public Object d = null;
    public boolean e = false;

    public ky6() {
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.b);
        sb.append("(");
        return jo.s(sb, this.c, ")");
    }

    public ky6(String str, String str2) {
        this.b = (str == null || str.length() == 0) ? "RSS" : str;
        this.c = str2;
    }
}
