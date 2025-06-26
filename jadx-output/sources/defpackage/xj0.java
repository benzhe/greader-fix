package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class xj0 extends yj0 implements kb0<xw0> {
    public final xw0 c;
    public final Context d;
    public final WindowManager e;
    public final l40 f;
    public DisplayMetrics g;
    public float h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;

    public xj0(xw0 xw0Var, Context context, l40 l40Var) {
        super(xw0Var);
        this.i = -1;
        this.j = -1;
        this.l = -1;
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.c = xw0Var;
        this.d = context;
        this.f = l40Var;
        this.e = (WindowManager) context.getSystemService("window");
    }

    @Override // defpackage.kb0
    public final void a(xw0 xw0Var, Map map) throws JSONException {
        JSONObject jSONObjectPut;
        this.g = new DisplayMetrics();
        Display defaultDisplay = this.e.getDefaultDisplay();
        defaultDisplay.getMetrics(this.g);
        this.h = this.g.density;
        this.k = defaultDisplay.getRotation();
        zr0 zr0Var = os3.j.a;
        DisplayMetrics displayMetrics = this.g;
        this.i = zr0.g(displayMetrics, displayMetrics.widthPixels);
        zr0 zr0Var2 = os3.j.a;
        DisplayMetrics displayMetrics2 = this.g;
        this.j = zr0.g(displayMetrics2, displayMetrics2.heightPixels);
        Activity activityA = this.c.a();
        if (activityA == null || activityA.getWindow() == null) {
            this.l = this.i;
            this.m = this.j;
        } else {
            zzr.zzkv();
            int[] iArrZzf = zzj.zzf(activityA);
            zr0 zr0Var3 = os3.j.a;
            this.l = zr0.g(this.g, iArrZzf[0]);
            zr0 zr0Var4 = os3.j.a;
            this.m = zr0.g(this.g, iArrZzf[1]);
        }
        if (this.c.c().b()) {
            this.n = this.i;
            this.o = this.j;
        } else {
            this.c.measure(0, 0);
        }
        b(this.i, this.j, this.l, this.m, this.h, this.k);
        l40 l40Var = this.f;
        Objects.requireNonNull(l40Var);
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        boolean zA = l40Var.a(intent);
        l40 l40Var2 = this.f;
        Objects.requireNonNull(l40Var2);
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        boolean zA2 = l40Var2.a(intent2);
        boolean zC = this.f.c();
        boolean zB = this.f.b();
        xw0 xw0Var2 = this.c;
        try {
            jSONObjectPut = new JSONObject().put("sms", zA2).put("tel", zA).put("calendar", zC).put("storePicture", zB).put("inlineVideo", true);
        } catch (JSONException e) {
            is0.zzc("Error occured while obtaining the MRAID capabilities.", e);
            jSONObjectPut = null;
        }
        xw0Var2.d0("onDeviceFeaturesReceived", jSONObjectPut);
        int[] iArr = new int[2];
        this.c.getLocationOnScreen(iArr);
        f(os3.j.a.j(this.d, iArr[0]), os3.j.a.j(this.d, iArr[1]));
        if (is0.isLoggable(2)) {
            is0.zzey("Dispatching Ready Event.");
        }
        try {
            this.a.d0("onReadyEventReceived", new JSONObject().put("js", this.c.b().e));
        } catch (JSONException e2) {
            is0.zzc("Error occurred while dispatching ready Event.", e2);
        }
    }

    public final void f(int i, int i2) {
        int i3 = 0;
        if (this.d instanceof Activity) {
            zzr.zzkv();
            i3 = zzj.zzh((Activity) this.d)[0];
        }
        if (this.c.c() == null || !this.c.c().b()) {
            int width = this.c.getWidth();
            int height = this.c.getHeight();
            if (((Boolean) os3.j.f.a(y40.K)).booleanValue()) {
                if (width == 0 && this.c.c() != null) {
                    width = this.c.c().c;
                }
                if (height == 0 && this.c.c() != null) {
                    height = this.c.c().b;
                }
            }
            this.n = os3.j.a.j(this.d, width);
            this.o = os3.j.a.j(this.d, height);
        }
        int i4 = i2 - i3;
        int i5 = this.n;
        try {
            this.a.d0("onDefaultPositionReceived", new JSONObject().put("x", i).put("y", i4).put("width", i5).put("height", this.o));
        } catch (JSONException e) {
            is0.zzc("Error occurred while dispatching default position.", e);
        }
        sj0 sj0Var = ((ww0) this.c.I()).v;
        if (sj0Var != null) {
            sj0Var.e = i;
            sj0Var.f = i2;
        }
    }
}
