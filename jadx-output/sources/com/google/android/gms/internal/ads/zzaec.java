package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzr;
import defpackage.g70;
import defpackage.h70;
import defpackage.is0;
import defpackage.os3;
import defpackage.y20;
import defpackage.zr0;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zzaec extends RelativeLayout {
    public static final float[] f = {5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f};
    public AnimationDrawable e;

    public zzaec(Context context, g70 g70Var, RelativeLayout.LayoutParams layoutParams) {
        super(context);
        Objects.requireNonNull(g70Var, "null reference");
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(f, null, null));
        shapeDrawable.getPaint().setColor(g70Var.h);
        setLayoutParams(layoutParams);
        zzr.zzkx();
        setBackground(shapeDrawable);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        if (!TextUtils.isEmpty(g70Var.e)) {
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
            TextView textView = new TextView(context);
            textView.setLayoutParams(layoutParams3);
            textView.setId(1195835393);
            textView.setTypeface(Typeface.DEFAULT);
            textView.setText(g70Var.e);
            textView.setTextColor(g70Var.i);
            textView.setTextSize(g70Var.j);
            zr0 zr0Var = os3.j.a;
            int iA = zr0.a(context.getResources().getDisplayMetrics(), 4);
            zr0 zr0Var2 = os3.j.a;
            textView.setPadding(iA, 0, zr0.a(context.getResources().getDisplayMetrics(), 4), 0);
            addView(textView);
            layoutParams2.addRule(1, textView.getId());
        }
        ImageView imageView = new ImageView(context);
        imageView.setLayoutParams(layoutParams2);
        imageView.setId(1195835394);
        List<h70> list = g70Var.f;
        if (list != null && list.size() > 1) {
            this.e = new AnimationDrawable();
            Iterator<h70> it = list.iterator();
            while (it.hasNext()) {
                try {
                    this.e.addFrame((Drawable) y20.l0(it.next().q2()), g70Var.k);
                } catch (Exception e) {
                    is0.zzc("Error while getting drawable.", e);
                }
            }
            zzr.zzkx();
            imageView.setBackground(this.e);
        } else if (list.size() == 1) {
            try {
                imageView.setImageDrawable((Drawable) y20.l0(list.get(0).q2()));
            } catch (Exception e2) {
                is0.zzc("Error while getting drawable.", e2);
            }
        }
        addView(imageView);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        AnimationDrawable animationDrawable = this.e;
        if (animationDrawable != null) {
            animationDrawable.start();
        }
        super.onAttachedToWindow();
    }
}
