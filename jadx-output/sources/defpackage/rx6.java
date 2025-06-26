package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

/* loaded from: classes2.dex */
public final class rx6 {
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final Integer l;
    public final List<String> m;
    public final List<Object> n;

    public rx6() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383);
    }

    public rx6(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, Integer num, List list, List list2, int i) {
        str = (i & 1) != 0 ? null : str;
        int i2 = i & 2;
        int i3 = i & 4;
        int i4 = i & 8;
        int i5 = i & 16;
        int i6 = i & 32;
        int i7 = i & 64;
        int i8 = i & 128;
        int i9 = i & RecyclerView.a0.FLAG_TMP_DETACHED;
        str10 = (i & 512) != 0 ? null : str10;
        str11 = (i & 1024) != 0 ? null : str11;
        int i10 = i & RecyclerView.a0.FLAG_MOVED;
        int i11 = i & RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT;
        int i12 = i & RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
        this.a = str;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = str10;
        this.k = str11;
        this.l = null;
        this.m = null;
        this.n = null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rx6)) {
            return false;
        }
        rx6 rx6Var = (rx6) obj;
        return im7.a(this.a, rx6Var.a) && im7.a(this.b, rx6Var.b) && im7.a(this.c, rx6Var.c) && im7.a(this.d, rx6Var.d) && im7.a(this.e, rx6Var.e) && im7.a(this.f, rx6Var.f) && im7.a(this.g, rx6Var.g) && im7.a(this.h, rx6Var.h) && im7.a(this.i, rx6Var.i) && im7.a(this.j, rx6Var.j) && im7.a(this.k, rx6Var.k) && im7.a(this.l, rx6Var.l) && im7.a(this.m, rx6Var.m) && im7.a(this.n, rx6Var.n);
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 != null ? str4.hashCode() : 0)) * 31;
        String str5 = this.e;
        int iHashCode5 = (iHashCode4 + (str5 != null ? str5.hashCode() : 0)) * 31;
        String str6 = this.f;
        int iHashCode6 = (iHashCode5 + (str6 != null ? str6.hashCode() : 0)) * 31;
        String str7 = this.g;
        int iHashCode7 = (iHashCode6 + (str7 != null ? str7.hashCode() : 0)) * 31;
        String str8 = this.h;
        int iHashCode8 = (iHashCode7 + (str8 != null ? str8.hashCode() : 0)) * 31;
        String str9 = this.i;
        int iHashCode9 = (iHashCode8 + (str9 != null ? str9.hashCode() : 0)) * 31;
        String str10 = this.j;
        int iHashCode10 = (iHashCode9 + (str10 != null ? str10.hashCode() : 0)) * 31;
        String str11 = this.k;
        int iHashCode11 = (iHashCode10 + (str11 != null ? str11.hashCode() : 0)) * 31;
        Integer num = this.l;
        int iHashCode12 = (iHashCode11 + (num != null ? num.hashCode() : 0)) * 31;
        List<String> list = this.m;
        int iHashCode13 = (iHashCode12 + (list != null ? list.hashCode() : 0)) * 31;
        List<Object> list2 = this.n;
        return iHashCode13 + (list2 != null ? list2.hashCode() : 0);
    }

    public String toString() {
        StringBuilder sbZ = jo.z("HtmlPage(title=");
        sbZ.append(this.a);
        sbZ.append(", description=");
        sbZ.append(this.b);
        sbZ.append(", siteName=");
        sbZ.append(this.c);
        sbZ.append(", themeColor=");
        sbZ.append(this.d);
        sbZ.append(", ampUrl=");
        sbZ.append(this.e);
        sbZ.append(", imageUrl=");
        sbZ.append(this.f);
        sbZ.append(", videoUrl=");
        sbZ.append(this.g);
        sbZ.append(", feedUrl=");
        sbZ.append(this.h);
        sbZ.append(", faviconUrl=");
        sbZ.append(this.i);
        sbZ.append(", htmlContent=");
        sbZ.append(this.j);
        sbZ.append(", textContent=");
        sbZ.append(this.k);
        sbZ.append(", estimatedReadingTimeMinutes=");
        sbZ.append(this.l);
        sbZ.append(", keywords=");
        sbZ.append(this.m);
        sbZ.append(", images=");
        sbZ.append(this.n);
        sbZ.append(")");
        return sbZ.toString();
    }
}
