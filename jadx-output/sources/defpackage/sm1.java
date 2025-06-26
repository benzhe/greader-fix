package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzbar;
import defpackage.vv2;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class sm1 {
    public final Context a;
    public final im1 b;
    public final d23 c;
    public final zzbar d;
    public final zzb e;
    public final ep3 f;
    public final Executor g;
    public final zzaei h;
    public final fn1 i;
    public final ScheduledExecutorService j;

    public sm1(Context context, im1 im1Var, d23 d23Var, zzbar zzbarVar, zzb zzbVar, ep3 ep3Var, Executor executor, ll2 ll2Var, fn1 fn1Var, ScheduledExecutorService scheduledExecutorService) {
        this.a = context;
        this.b = im1Var;
        this.c = d23Var;
        this.d = zzbarVar;
        this.e = zzbVar;
        this.f = ep3Var;
        this.g = executor;
        this.h = ll2Var.i;
        this.i = fn1Var;
        this.j = scheduledExecutorService;
    }

    public static aw2 c(boolean z, final aw2 aw2Var) {
        return z ? vt2.m(aw2Var, new cv2(aw2Var) { // from class: xm1
            public final aw2 a;

            {
                this.a = aw2Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                return obj != null ? this.a : new vv2.a(new z22(dm2.INTERNAL_ERROR, "Retrieve required value in native ad response failed."));
            }
        }, ms0.f) : vt2.n(aw2Var, Exception.class, new ym1(), ms0.f);
    }

    public static Integer d(JSONObject jSONObject, String str) throws JSONException {
        try {
            JSONObject jSONObject2 = jSONObject.getJSONObject(str);
            return Integer.valueOf(Color.rgb(jSONObject2.getInt("r"), jSONObject2.getInt("g"), jSONObject2.getInt("b")));
        } catch (JSONException unused) {
            return null;
        }
    }

    public static lv3 e(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        String strOptString = jSONObject.optString("reason");
        String strOptString2 = jSONObject.optString("ping_url");
        if (TextUtils.isEmpty(strOptString) || TextUtils.isEmpty(strOptString2)) {
            return null;
        }
        return new lv3(strOptString, strOptString2);
    }

    public final aw2<List<h70>> a(JSONArray jSONArray, boolean z, boolean z2) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return vt2.j(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = z2 ? jSONArray.length() : 1;
        for (int i = 0; i < length; i++) {
            arrayList.add(b(jSONArray.optJSONObject(i), z));
        }
        return vt2.l(new ev2(nt2.y(arrayList)), rm1.a, this.g);
    }

    public final aw2<h70> b(JSONObject jSONObject, boolean z) {
        if (jSONObject == null) {
            return vt2.j(null);
        }
        final String strOptString = jSONObject.optString("url");
        if (TextUtils.isEmpty(strOptString)) {
            return vt2.j(null);
        }
        final double dOptDouble = jSONObject.optDouble("scale", 1.0d);
        boolean zOptBoolean = jSONObject.optBoolean("is_transparent", true);
        final int iOptInt = jSONObject.optInt("width", -1);
        final int iOptInt2 = jSONObject.optInt("height", -1);
        if (z) {
            return vt2.j(new h70(null, Uri.parse(strOptString), dOptDouble, iOptInt, iOptInt2));
        }
        im1 im1Var = this.b;
        Objects.requireNonNull(im1Var);
        return c(jSONObject.optBoolean("require"), vt2.l(vt2.l(zzay.zzeq(strOptString), new lm1(im1Var, dOptDouble, zOptBoolean), im1Var.b), new vs2(strOptString, dOptDouble, iOptInt, iOptInt2) { // from class: um1
            public final String a;
            public final double b;
            public final int c;
            public final int d;

            {
                this.a = strOptString;
                this.b = dOptDouble;
                this.c = iOptInt;
                this.d = iOptInt2;
            }

            @Override // defpackage.vs2
            public final Object apply(Object obj) {
                String str = this.a;
                return new h70(new BitmapDrawable(Resources.getSystem(), (Bitmap) obj), Uri.parse(str), this.b, this.c, this.d);
            }
        }, this.g));
    }
}
