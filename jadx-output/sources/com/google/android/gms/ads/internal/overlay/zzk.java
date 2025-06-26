package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import defpackage.wv;
import defpackage.xw0;

/* loaded from: classes.dex */
public final class zzk {
    public final Context context;
    public final int index;
    public final ViewGroup parent;
    public final ViewGroup.LayoutParams zzdtv;

    public zzk(xw0 xw0Var) throws wv {
        this.zzdtv = xw0Var.getLayoutParams();
        ViewParent parent = xw0Var.getParent();
        this.context = xw0Var.i0();
        if (parent == null || !(parent instanceof ViewGroup)) {
            throw new wv("Could not get the parent of the WebView for an overlay.");
        }
        ViewGroup viewGroup = (ViewGroup) parent;
        this.parent = viewGroup;
        this.index = viewGroup.indexOfChild(xw0Var.getView());
        viewGroup.removeView(xw0Var.getView());
        xw0Var.W(true);
    }
}
