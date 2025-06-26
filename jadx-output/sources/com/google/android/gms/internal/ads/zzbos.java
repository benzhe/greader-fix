package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzr;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import defpackage.ft0;
import defpackage.os3;
import defpackage.sk2;
import defpackage.zr0;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbos extends FrameLayout implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener {
    public final Context e;
    public View f;

    public zzbos(Context context) {
        super(context);
        this.e = context;
    }

    public static zzbos a(Context context, View view, sk2 sk2Var) {
        Resources resources;
        DisplayMetrics displayMetrics;
        zzbos zzbosVar = new zzbos(context);
        if (!sk2Var.t.isEmpty() && (resources = zzbosVar.e.getResources()) != null && (displayMetrics = resources.getDisplayMetrics()) != null) {
            float f = sk2Var.t.get(0).a;
            float f2 = displayMetrics.density;
            zzbosVar.setLayoutParams(new FrameLayout.LayoutParams((int) (f * f2), (int) (r1.b * f2)));
        }
        zzbosVar.f = view;
        zzbosVar.addView(view);
        zzr.zzls();
        ft0.b(zzbosVar, zzbosVar);
        zzr.zzls();
        ft0.a(zzbosVar, zzbosVar);
        JSONObject jSONObject = sk2Var.c0;
        if (jSONObject != null) {
            RelativeLayout relativeLayout = new RelativeLayout(zzbosVar.e);
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("header");
            if (jSONObjectOptJSONObject != null) {
                zzbosVar.b(jSONObjectOptJSONObject, relativeLayout, 10);
            }
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("footer");
            if (jSONObjectOptJSONObject2 != null) {
                zzbosVar.b(jSONObjectOptJSONObject2, relativeLayout, 12);
            }
            zzbosVar.addView(relativeLayout);
        }
        return zzbosVar;
    }

    public final void b(JSONObject jSONObject, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(this.e);
        textView.setTextColor(-1);
        textView.setBackgroundColor(-16777216);
        textView.setGravity(17);
        textView.setText(jSONObject.optString(AtomText.TYPE_TEXT, ""));
        textView.setTextSize((float) jSONObject.optDouble("text_size", 11.0d));
        double dOptDouble = jSONObject.optDouble("padding", 0.0d);
        zr0 zr0Var = os3.j.a;
        int iK = zr0.k(this.e, (int) dOptDouble);
        textView.setPadding(0, iK, 0, iK);
        double dOptDouble2 = jSONObject.optDouble("height", 15.0d);
        zr0 zr0Var2 = os3.j.a;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, zr0.k(this.e, (int) dOptDouble2));
        layoutParams.addRule(i);
        relativeLayout.addView(textView, layoutParams);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        getLocationInWindow(new int[2]);
        this.f.setY(-r0[1]);
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        getLocationInWindow(new int[2]);
        this.f.setY(-r0[1]);
    }
}
