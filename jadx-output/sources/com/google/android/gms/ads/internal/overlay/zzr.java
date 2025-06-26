package com.google.android.gms.ads.internal.overlay;

import android.R;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import defpackage.os3;
import defpackage.zr0;

/* loaded from: classes.dex */
public final class zzr extends FrameLayout implements View.OnClickListener {
    public final ImageButton e;
    public final zzab f;

    public zzr(Context context, zzq zzqVar, zzab zzabVar) {
        super(context);
        this.f = zzabVar;
        setOnClickListener(this);
        ImageButton imageButton = new ImageButton(context);
        this.e = imageButton;
        imageButton.setImageResource(R.drawable.btn_dialog);
        imageButton.setBackgroundColor(0);
        imageButton.setOnClickListener(this);
        zr0 zr0Var = os3.j.a;
        int iA = zr0.a(context.getResources().getDisplayMetrics(), zzqVar.paddingLeft);
        zr0 zr0Var2 = os3.j.a;
        int iA2 = zr0.a(context.getResources().getDisplayMetrics(), 0);
        zr0 zr0Var3 = os3.j.a;
        int iA3 = zr0.a(context.getResources().getDisplayMetrics(), zzqVar.paddingRight);
        zr0 zr0Var4 = os3.j.a;
        imageButton.setPadding(iA, iA2, iA3, zr0.a(context.getResources().getDisplayMetrics(), zzqVar.paddingBottom));
        imageButton.setContentDescription("Interstitial close button");
        zr0 zr0Var5 = os3.j.a;
        int iA4 = zr0.a(context.getResources().getDisplayMetrics(), zzqVar.size + zzqVar.paddingLeft + zzqVar.paddingRight);
        zr0 zr0Var6 = os3.j.a;
        addView(imageButton, new FrameLayout.LayoutParams(iA4, zr0.a(context.getResources().getDisplayMetrics(), zzqVar.size + zzqVar.paddingBottom), 17));
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzab zzabVar = this.f;
        if (zzabVar != null) {
            zzabVar.zzwg();
        }
    }

    public final void zzap(boolean z) {
        if (z) {
            this.e.setVisibility(8);
        } else {
            this.e.setVisibility(0);
        }
    }
}
