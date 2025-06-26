package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.c68;
import defpackage.x20;
import java.io.File;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* compiled from: outline */
/* loaded from: classes.dex */
public class jo {
    public static StringBuilder A(String str, int i, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder B(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        return sb;
    }

    public static StringBuilder C(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb;
    }

    public static StringBuilder D(String str, u68 u68Var, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(u68Var);
        sb.append(str2);
        return sb;
    }

    public static HashMap E(String str, String str2, String str3, String str4) {
        HashMap map = new HashMap();
        map.put(str, str2);
        map.put(str3, str4);
        return map;
    }

    public static void F(char c, int i, c68 c68Var) {
        c68Var.b(new c68.q(c, i));
    }

    public static void G(String str, String str2, ah5 ah5Var) {
        ah5Var.b(str + str2);
    }

    public static void H(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
    }

    public static Intent I(Context context, Class cls, int i) {
        Intent intent = new Intent(context, (Class<?>) cls);
        intent.addFlags(i);
        return intent;
    }

    public static void J(StringBuilder sb, String str, String str2, String str3, String str4) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
    }

    public static RemoteException K(String str, Throwable th) {
        is0.zzc(str, th);
        return new RemoteException();
    }

    public static x20 L(Parcel parcel) {
        x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
        parcel.recycle();
        return x20VarG0;
    }

    public static String M(int i, String str, int i2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        return sb.toString();
    }

    public static String N(int i, String str, int i2, String str2, int i3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(i2);
        sb.append(str2);
        sb.append(i3);
        return sb.toString();
    }

    public static String O(int i, String str, String str2) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static float a(float f, float f2, float f3, float f4) {
        return ((f - f2) * f3) + f4;
    }

    public static int b(int i, int i2, int i3, int i4) {
        return ((i + i2) * i3) + i4;
    }

    public static String c(int i, String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static String d(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb.toString();
    }

    public static String e(RecyclerView recyclerView, StringBuilder sb) {
        sb.append(recyclerView.A());
        return sb.toString();
    }

    public static String f(String str, char c) {
        return str + c;
    }

    public static String g(String str, int i) {
        return str + i;
    }

    public static String h(String str, int i, String str2) {
        return str + i + str2;
    }

    public static String i(String str, int i, String str2, int i2) {
        return str + i + str2 + i2;
    }

    public static String j(String str, long j) {
        return str + j;
    }

    public static String k(String str, Fragment fragment, String str2) {
        return str + fragment + str2;
    }

    public static String l(String str, File file, String str2) {
        return str + file + str2;
    }

    public static int m(int i, int i2, int i3, int i4) {
        return ((i * i2) / i3) + i4;
    }

    public static String n(String str, String str2) {
        return str + str2;
    }

    public static String o(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String p(String str, y68 y68Var) {
        return str + y68Var;
    }

    public static String q(StringBuilder sb, int i, String str) {
        sb.append(i);
        sb.append(str);
        return sb.toString();
    }

    public static String r(StringBuilder sb, long j, String str) {
        sb.append(j);
        sb.append(str);
        return sb.toString();
    }

    public static String s(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String t(StringBuilder sb, String str, String str2, String str3) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        return sb.toString();
    }

    public static String u(u68 u68Var, StringBuilder sb) {
        sb.append(u68Var.getClass().getName());
        return sb.toString();
    }

    public static String v(XmlPullParser xmlPullParser, StringBuilder sb, String str) {
        sb.append(xmlPullParser.getPositionDescription());
        sb.append(str);
        return sb.toString();
    }

    public static StringBuilder w(int i, String str) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        return sb;
    }

    public static int x(String str, int i) {
        return String.valueOf(str).length() + i;
    }

    public static StringBuilder y(int i, String str, String str2, String str3, String str4) {
        StringBuilder sb = new StringBuilder(i);
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        return sb;
    }

    public static StringBuilder z(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }
}
