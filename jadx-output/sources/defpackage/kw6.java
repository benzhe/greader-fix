package defpackage;

import android.content.Context;
import com.noinnion.android.reader.R$bool;

/* loaded from: classes2.dex */
public class kw6 {
    public kx6 a;
    public boolean b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;
    public int j;
    public boolean k;
    public int l;
    public int m;
    public boolean n;
    public boolean o;
    public int p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public boolean w;

    public static class b {
        public kx6 a = kx6.PHONE;
        public boolean b = false;
        public int c = 1;
        public int d = 0;
        public int e = 16;
        public int f = 1;
        public int g = 0;
        public boolean h = false;
        public boolean i = false;
        public int j = 0;
        public boolean k = true;
        public int l = 0;
        public int m = 2;
        public boolean n = true;
        public boolean o = false;
        public int p = 1;
        public int q = 0;
        public int r = 9;
        public boolean s = true;
        public boolean t = true;
        public boolean u = true;
        public boolean v = true;
        public boolean w = true;
    }

    public kw6(b bVar, a aVar) {
        this.a = bVar.a;
        this.b = bVar.b;
        this.c = bVar.c;
        this.d = bVar.d;
        this.e = bVar.e;
        this.f = bVar.f;
        this.g = bVar.g;
        this.h = bVar.h;
        this.i = bVar.i;
        this.j = bVar.j;
        this.k = bVar.k;
        this.l = bVar.l;
        this.m = bVar.m;
        this.n = bVar.n;
        this.o = bVar.o;
        this.p = bVar.p;
        this.q = bVar.q;
        this.r = bVar.r;
        this.s = bVar.s;
        this.t = bVar.t;
        this.u = bVar.u;
        this.v = bVar.v;
        this.w = bVar.w;
    }

    public static kw6 a(Context context) {
        kx6 kx6Var = kx6.PHONE;
        b bVar = new b();
        if (context.getResources().getBoolean(R$bool.isTablet7Inch)) {
            bVar.a = kx6.TABLET_7;
        } else if (context.getResources().getBoolean(R$bool.isTablet10Inch)) {
            bVar.a = kx6.TABLET_10;
        } else {
            bVar.a = kx6Var;
        }
        bVar.b = lw6.k();
        bVar.c = iw6.t(context);
        bVar.d = iw6.m(context, "item_font_type", 0);
        bVar.e = iw6.m(context, "item_body_font_size", bVar.a == kx6Var ? 16 : 19);
        bVar.f = iw6.m(context, "item_text_align", 1);
        bVar.g = iw6.u(context);
        bVar.i = iw6.f(context, "item_autoload_reading_mode", false);
        bVar.h = iw6.f(context, "item_autoload_link", false);
        bVar.j = iw6.B(context);
        bVar.k = iw6.f(context, "offline_autoload_cache", true);
        bVar.l = iw6.L(context);
        bVar.m = iw6.J(context);
        bVar.n = iw6.f(context, "item_inapp_youtube", true);
        bVar.o = iw6.f(context, "item_pinch_zoom", false);
        bVar.p = iw6.w(context);
        bVar.q = iw6.y(context);
        bVar.r = iw6.h(context);
        bVar.t = iw6.f(context, "show_item_bar", true);
        bVar.s = iw6.f(context, "show_navigation_bar", true);
        bVar.u = iw6.f(context, "show_zoom_button", true);
        bVar.v = iw6.f(context, "auto_hide_item_controls", true);
        bVar.w = iw6.f(context, "item_hardware_accelerated", true);
        return new kw6(bVar, null);
    }

    public void b(Context context) {
        kx6 kx6Var = kx6.PHONE;
        if (context.getResources().getBoolean(R$bool.isTablet7Inch)) {
            this.a = kx6.TABLET_7;
        } else if (context.getResources().getBoolean(R$bool.isTablet10Inch)) {
            this.a = kx6.TABLET_10;
        } else {
            this.a = kx6Var;
        }
        this.b = lw6.k();
        this.c = iw6.t(context);
        this.d = iw6.m(context, "item_font_type", 0);
        this.e = iw6.m(context, "item_body_font_size", this.a == kx6Var ? 16 : 19);
        this.f = iw6.m(context, "item_text_align", 1);
        this.i = iw6.f(context, "item_autoload_reading_mode", false);
        this.h = iw6.f(context, "item_autoload_link", false);
        this.g = iw6.u(context);
        this.k = iw6.f(context, "offline_autoload_cache", true);
        this.j = iw6.B(context);
        this.l = iw6.L(context);
        this.m = iw6.J(context);
        this.n = iw6.f(context, "item_inapp_youtube", true);
        this.o = iw6.f(context, "item_pinch_zoom", false);
        this.p = iw6.w(context);
        this.q = iw6.y(context);
        this.r = iw6.h(context);
        this.t = iw6.f(context, "show_item_bar", true);
        this.s = iw6.f(context, "show_navigation_bar", true);
        this.u = iw6.f(context, "show_zoom_button", true);
        this.v = iw6.f(context, "auto_hide_item_controls", true);
        this.w = iw6.f(context, "item_hardware_accelerated", true);
    }
}
