package com.google.android.gms.internal.ads;

import android.R;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbbz;
import com.google.android.gms.internal.ads.zzbcb;
import defpackage.au0;
import defpackage.fu0;
import defpackage.hu0;
import defpackage.iu0;
import defpackage.ju0;
import defpackage.ku0;
import defpackage.ms0;
import defpackage.o40;
import defpackage.o50;
import defpackage.os3;
import defpackage.rt0;
import defpackage.vt0;
import defpackage.y40;
import defpackage.yt0;
import defpackage.zv2;
import java.util.HashMap;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zzbcb extends FrameLayout implements rt0 {
    public static final /* synthetic */ int v = 0;
    public final iu0 e;
    public final FrameLayout f;
    public final o50 g;
    public final ku0 h;
    public final long i;
    public zzbbz j;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public long o;
    public long p;
    public String q;
    public String[] r;
    public Bitmap s;
    public ImageView t;
    public boolean u;

    public zzbcb(Context context, iu0 iu0Var, int i, boolean z, o50 o50Var, fu0 fu0Var) {
        zzbbz zzbcvVar;
        super(context);
        this.e = iu0Var;
        this.g = o50Var;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f = frameLayout;
        if (((Boolean) os3.j.f.a(y40.E)).booleanValue()) {
            frameLayout.setBackgroundResource(R.color.black);
        }
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Objects.requireNonNull(iu0Var.m(), "null reference");
        Objects.requireNonNull((au0) iu0Var.m().zzbov);
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        if (applicationInfo == null || applicationInfo.targetSdkVersion >= 11) {
            zzbcvVar = i == 2 ? new zzbcv(context, new hu0(context, iu0Var.b(), iu0Var.getRequestId(), o50Var, iu0Var.U()), iu0Var, z, iu0Var.c().b(), fu0Var) : new zzbbq(context, iu0Var, z, iu0Var.c().b(), new hu0(context, iu0Var.b(), iu0Var.getRequestId(), o50Var, iu0Var.U()));
        } else {
            zzbcvVar = null;
        }
        this.j = zzbcvVar;
        if (zzbcvVar != null) {
            frameLayout.addView(zzbcvVar, new FrameLayout.LayoutParams(-1, -1, 17));
            if (((Boolean) os3.j.f.a(y40.v)).booleanValue()) {
                d();
            }
        }
        this.t = new ImageView(context);
        this.i = ((Long) os3.j.f.a(y40.z)).longValue();
        boolean zBooleanValue = ((Boolean) os3.j.f.a(y40.x)).booleanValue();
        this.n = zBooleanValue;
        if (o50Var != null) {
            o50Var.b("spinner_used", zBooleanValue ? "1" : "0");
        }
        this.h = new ku0(this);
        zzbbz zzbbzVar = this.j;
        if (zzbbzVar != null) {
            zzbbzVar.l(this);
        }
        if (this.j == null) {
            j("AdVideoUnderlay Error", "Allocating player failed.");
        }
    }

    public final void a() {
        h("pause", new String[0]);
        f();
        this.k = false;
    }

    public final void b() {
        if (this.e.a() != null && !this.l) {
            boolean z = (this.e.a().getWindow().getAttributes().flags & 128) != 0;
            this.m = z;
            if (!z) {
                this.e.a().getWindow().addFlags(128);
                this.l = true;
            }
        }
        this.k = true;
    }

    public final void c() {
        if (this.u && this.s != null) {
            if (!(this.t.getParent() != null)) {
                this.t.setImageBitmap(this.s);
                this.t.invalidate();
                this.f.addView(this.t, new FrameLayout.LayoutParams(-1, -1));
                this.f.bringChildToFront(this.t);
            }
        }
        this.h.a();
        this.p = this.o;
        zzj.zzegq.post(new vt0(this));
    }

    public final void d() {
        zzbbz zzbbzVar = this.j;
        if (zzbbzVar == null) {
            return;
        }
        TextView textView = new TextView(zzbbzVar.getContext());
        String strValueOf = String.valueOf(this.j.m());
        textView.setText(strValueOf.length() != 0 ? "AdMob - ".concat(strValueOf) : new String("AdMob - "));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        this.f.addView(textView, new FrameLayout.LayoutParams(-2, -2, 17));
        this.f.bringChildToFront(textView);
    }

    public final void e() {
        zzbbz zzbbzVar = this.j;
        if (zzbbzVar == null) {
            return;
        }
        long currentPosition = zzbbzVar.getCurrentPosition();
        if (this.o == currentPosition || currentPosition <= 0) {
            return;
        }
        float f = currentPosition / 1000.0f;
        if (((Boolean) os3.j.f.a(y40.l1)).booleanValue()) {
            h("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(this.j.getTotalBytes()), "qoeCachedBytes", String.valueOf(this.j.v()), "qoeLoadedBytes", String.valueOf(this.j.n()), "droppedFrames", String.valueOf(this.j.o()), "reportTime", String.valueOf(zzr.zzlc().a()));
        } else {
            h("timeupdate", "time", String.valueOf(f));
        }
        this.o = currentPosition;
    }

    public final void f() {
        if (this.e.a() == null || !this.l || this.m) {
            return;
        }
        this.e.a().getWindow().clearFlags(128);
        this.l = false;
    }

    public final void finalize() throws Throwable {
        try {
            this.h.a();
            final zzbbz zzbbzVar = this.j;
            if (zzbbzVar != null) {
                zv2 zv2Var = ms0.e;
                zzbbzVar.getClass();
                zv2Var.execute(new Runnable(zzbbzVar) { // from class: ut0
                    public final zzbbz e;

                    {
                        this.e = zzbbzVar;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.j();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    public final void g(int i, int i2, int i3, int i4) {
        if (i3 == 0 || i4 == 0) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
        layoutParams.setMargins(i, i2, 0, 0);
        this.f.setLayoutParams(layoutParams);
        requestLayout();
    }

    public final void h(String str, String... strArr) {
        HashMap map = new HashMap();
        map.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                map.put(str2, str3);
                str2 = null;
            }
        }
        this.e.x("onVideoEvent", map);
    }

    public final void i() {
        if (this.j != null && this.p == 0) {
            h("canplaythrough", "duration", String.valueOf(r0.getDuration() / 1000.0f), "videoWidth", String.valueOf(this.j.getVideoWidth()), "videoHeight", String.valueOf(this.j.getVideoHeight()));
        }
    }

    public final void j(String str, String str2) {
        h("error", "what", str, "extra", str2);
    }

    public final void k(int i, int i2) {
        if (this.n) {
            o40<Integer> o40Var = y40.y;
            int iMax = Math.max(i / ((Integer) os3.j.f.a(o40Var)).intValue(), 1);
            int iMax2 = Math.max(i2 / ((Integer) os3.j.f.a(o40Var)).intValue(), 1);
            Bitmap bitmap = this.s;
            if (bitmap != null && bitmap.getWidth() == iMax && this.s.getHeight() == iMax2) {
                return;
            }
            this.s = Bitmap.createBitmap(iMax, iMax2, Bitmap.Config.ARGB_8888);
            this.u = false;
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        if (z) {
            this.h.b();
        } else {
            this.h.a();
            this.p = this.o;
        }
        zzj.zzegq.post(new Runnable(this, z) { // from class: tt0
            public final zzbcb e;
            public final boolean f;

            {
                this.e = this;
                this.f = z;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzbcb zzbcbVar = this.e;
                boolean z2 = this.f;
                Objects.requireNonNull(zzbcbVar);
                zzbcbVar.h("windowFocusChanged", "hasWindowFocus", String.valueOf(z2));
            }
        });
    }

    @Override // android.view.View, defpackage.rt0
    public final void onWindowVisibilityChanged(int i) {
        boolean z;
        super.onWindowVisibilityChanged(i);
        if (i == 0) {
            this.h.b();
            z = true;
        } else {
            this.h.a();
            this.p = this.o;
            z = false;
        }
        zzj.zzegq.post(new yt0(this, z));
    }

    public final void setVolume(float f) {
        zzbbz zzbbzVar = this.j;
        if (zzbbzVar == null) {
            return;
        }
        ju0 ju0Var = zzbbzVar.f;
        ju0Var.f = f;
        ju0Var.b();
        zzbbzVar.a();
    }
}
