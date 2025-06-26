package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class tm3 {
    public final int a;
    public final int b;
    public final int c;
    public final boolean d;
    public final in3 e;
    public final on3 f;
    public int n;
    public final Object g = new Object();
    public ArrayList<String> h = new ArrayList<>();
    public ArrayList<String> i = new ArrayList<>();
    public ArrayList<gn3> j = new ArrayList<>();
    public int k = 0;
    public int l = 0;
    public int m = 0;
    public String o = "";
    public String p = "";
    public String q = "";

    public tm3(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = z;
        this.e = new in3(i4);
        this.f = new on3(i5, i6, i7);
    }

    public static String a(ArrayList arrayList) {
        if (arrayList.isEmpty()) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            sb.append((String) obj);
            sb.append(' ');
            if (sb.length() > 100) {
                break;
            }
        }
        sb.deleteCharAt(sb.length() - 1);
        String string = sb.toString();
        return string.length() < 100 ? string : string.substring(0, 100);
    }

    public final void b(String str, boolean z, float f, float f2, float f3, float f4) {
        c(str, z, f, f2, f3, f4);
        synchronized (this.g) {
            if (this.m < 0) {
                is0.zzdz("ActivityContent: negative number of WebViews.");
            }
            d();
        }
    }

    public final void c(String str, boolean z, float f, float f2, float f3, float f4) {
        if (str == null || str.length() < this.c) {
            return;
        }
        synchronized (this.g) {
            this.h.add(str);
            this.k += str.length();
            if (z) {
                this.i.add(str);
                this.j.add(new gn3(f, f2, f3, f4, this.i.size() - 1));
            }
        }
    }

    public final void d() {
        synchronized (this.g) {
            int i = this.d ? this.b : (this.k * this.a) + (this.l * this.b);
            if (i > this.n) {
                this.n = i;
                if (!zzr.zzkz().f().zzzb()) {
                    this.o = this.e.a(this.h);
                    this.p = this.e.a(this.i);
                }
                if (!zzr.zzkz().f().zzzd()) {
                    this.q = this.f.a(this.i, this.j);
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof tm3)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        String str = ((tm3) obj).o;
        return str != null && str.equals(this.o);
    }

    public final int hashCode() {
        return this.o.hashCode();
    }

    public final String toString() {
        int i = this.l;
        int i2 = this.n;
        int i3 = this.k;
        String strA = a(this.h);
        String strA2 = a(this.i);
        String str = this.o;
        String str2 = this.p;
        String str3 = this.q;
        StringBuilder sb = new StringBuilder(jo.x(str3, jo.x(str2, jo.x(str, jo.x(strA2, jo.x(strA, 165))))));
        sb.append("ActivityContent fetchId: ");
        sb.append(i);
        sb.append(" score:");
        sb.append(i2);
        sb.append(" total_length:");
        sb.append(i3);
        sb.append("\n text: ");
        sb.append(strA);
        jo.J(sb, "\n viewableText", strA2, "\n signture: ", str);
        sb.append("\n viewableSignture: ");
        sb.append(str2);
        sb.append("\n viewableSignatureForVertical: ");
        sb.append(str3);
        return sb.toString();
    }
}
