package defpackage;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes2.dex */
public class hw6 {
    public Context a;
    public boolean b;
    public int c;
    public boolean d;
    public boolean e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public int t;
    public boolean u;

    public static class b {
        public boolean a = false;
        public int b = 0;
        public boolean c = true;
        public boolean d = false;
        public int e = -1;
        public int f = -1;
        public boolean g = false;
        public boolean h = false;
        public boolean i = true;
        public boolean j = false;
        public boolean k = false;
        public boolean l = false;
        public int m = 0;
        public int n = -1;
        public int o = 0;
        public int p = 0;
        public int q = 0;
        public int r = 0;
        public int s = 0;
        public boolean t = false;
    }

    public hw6(Context context, b bVar, a aVar) {
        this.a = context;
        this.b = bVar.a;
        this.c = bVar.b;
        this.d = bVar.c;
        this.e = bVar.d;
        this.f = bVar.e;
        this.g = bVar.f;
        this.h = bVar.g;
        this.i = bVar.h;
        this.j = bVar.i;
        this.k = bVar.j;
        this.l = bVar.k;
        this.m = bVar.l;
        this.n = bVar.m;
        this.o = bVar.n;
        this.p = bVar.o;
        this.q = bVar.p;
        this.r = bVar.q;
        this.s = bVar.r;
        this.t = bVar.s;
        this.u = bVar.t;
    }

    public static hw6 a(Context context) {
        b bVar = new b();
        bVar.a = iw6.f(context, "feed_only", false);
        bVar.b = iw6.m(context, "item_list_view", 0);
        bVar.c = iw6.R(context);
        bVar.d = iw6.f(context, "view_unread_only", true);
        bVar.e = iw6.l(context);
        bVar.f = iw6.x(context);
        bVar.g = iw6.f(context, "item_group_by_feed", false);
        bVar.h = iw6.a0(context);
        bVar.i = iw6.P(context);
        bVar.j = iw6.O(context);
        bVar.k = iw6.f(context, "show_feeds_after_mark_all", false);
        bVar.l = iw6.N(context);
        bVar.m = iw6.j(context);
        bVar.n = iw6.J(context);
        bVar.o = iw6.s(context);
        bVar.p = iw6.o(context);
        bVar.q = iw6.p(context);
        bVar.r = iw6.q(context);
        bVar.s = iw6.r(context);
        bVar.t = iw6.f(context, "offline_save_page_on_star", false);
        return new hw6(context, bVar, null);
    }

    public int b() {
        if (this.f == -1) {
            this.f = iw6.l(this.a);
        }
        return this.f;
    }

    public int c() {
        if (this.g == -1) {
            this.g = iw6.x(this.a);
        }
        return this.g;
    }

    public void d(int i) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.f = i;
        Context context = this.a;
        Method method = iw6.a;
        iw6.V(context, "feed_sort_type", String.valueOf(i));
    }
}
