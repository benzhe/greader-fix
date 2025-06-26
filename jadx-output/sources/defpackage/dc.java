package defpackage;

import androidx.fragment.app.Fragment;
import defpackage.ad;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class dc {
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public boolean h;
    public String j;
    public int k;
    public CharSequence l;
    public int m;
    public CharSequence n;
    public ArrayList<String> o;
    public ArrayList<String> p;
    public ArrayList<a> a = new ArrayList<>();
    public boolean i = true;
    public boolean q = false;

    public static final class a {
        public int a;
        public Fragment b;
        public int c;
        public int d;
        public int e;
        public int f;
        public ad.b g;
        public ad.b h;

        public a() {
        }

        public a(int i, Fragment fragment) {
            this.a = i;
            this.b = fragment;
            ad.b bVar = ad.b.RESUMED;
            this.g = bVar;
            this.h = bVar;
        }

        public a(int i, Fragment fragment, ad.b bVar) {
            this.a = i;
            this.b = fragment;
            this.g = fragment.mMaxState;
            this.h = bVar;
        }
    }

    public void b(a aVar) {
        this.a.add(aVar);
        aVar.c = this.b;
        aVar.d = this.c;
        aVar.e = this.d;
        aVar.f = this.e;
    }

    public abstract int c();

    public abstract int d();

    public abstract dc e(Fragment fragment);

    public abstract void f(int i, Fragment fragment, String str, int i2);

    public dc g(int i, Fragment fragment, String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        f(i, fragment, str, 2);
        return this;
    }

    public abstract dc h(Fragment fragment, ad.b bVar);
}
