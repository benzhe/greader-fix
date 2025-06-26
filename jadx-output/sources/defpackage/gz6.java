package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Handler;

/* loaded from: classes2.dex */
public final class gz6 {
    public final int a;
    public final int b;
    public final int c;
    public final Drawable d;
    public final Drawable e;
    public final Drawable f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final tz6 j;
    public final BitmapFactory.Options k;
    public final int l;
    public final boolean m;
    public final Object n;
    public final m07 o;
    public final m07 p;
    public final d07 q;
    public final Handler r;
    public final boolean s;

    public static class b {
        public int a = 0;
        public int b = 0;
        public int c = 0;
        public Drawable d = null;
        public Drawable e = null;
        public Drawable f = null;
        public boolean g = false;
        public boolean h = false;
        public boolean i = false;
        public tz6 j = tz6.IN_SAMPLE_POWER_OF_2;
        public BitmapFactory.Options k = new BitmapFactory.Options();
        public int l = 0;
        public boolean m = false;
        public Object n = null;
        public m07 o = null;
        public m07 p = null;
        public d07 q = new d07();
        public Handler r = null;
        public boolean s = false;

        public b a(Bitmap.Config config) {
            if (config == null) {
                throw new IllegalArgumentException("bitmapConfig can't be null");
            }
            this.k.inPreferredConfig = config;
            return this;
        }

        public gz6 b() {
            return new gz6(this, null);
        }
    }

    public gz6(b bVar, a aVar) {
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
    }
}
