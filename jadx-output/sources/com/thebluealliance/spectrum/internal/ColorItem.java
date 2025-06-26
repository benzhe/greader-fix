package com.thebluealliance.spectrum.internal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.thebluealliance.spectrum.R$id;
import com.thebluealliance.spectrum.R$layout;
import defpackage.n56;
import defpackage.r27;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.Subscribe;

/* loaded from: classes2.dex */
public class ColorItem extends FrameLayout implements View.OnClickListener {
    public EventBus e;
    public ImageView f;
    public int g;
    public boolean h;
    public int i;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ColorItem.this.setItemCheckmarkAttributes(1.0f);
        }
    }

    public class b extends AnimatorListenerAdapter {
        public b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ColorItem.this.f.setVisibility(4);
            ColorItem.this.setItemCheckmarkAttributes(0.0f);
        }
    }

    public ColorItem(Context context, int i, boolean z, EventBus eventBus) {
        super(context);
        this.h = false;
        this.i = 0;
        this.g = i;
        this.h = z;
        this.e = eventBus;
        c();
        setChecked(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setItemCheckmarkAttributes(float f) {
        this.f.setAlpha(f);
        this.f.setScaleX(f);
        this.f.setScaleY(f);
    }

    public final Drawable b() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        int i = this.i;
        if (i != 0) {
            gradientDrawable.setStroke(i, n56.k1(this.g) ? -1 : -16777216);
        }
        gradientDrawable.setColor(this.g);
        return gradientDrawable;
    }

    public final void c() {
        d();
        this.e.register(this);
        setOnClickListener(this);
        LayoutInflater.from(getContext()).inflate(R$layout.color_item, (ViewGroup) this, true);
        ImageView imageView = (ImageView) findViewById(R$id.selected_checkmark);
        this.f = imageView;
        imageView.setColorFilter(n56.k1(this.g) ? -1 : -16777216);
    }

    public final void d() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(1);
        gradientDrawable.setColor(-16777216);
        setForeground(new RippleDrawable(ColorStateList.valueOf(n56.V0(this.g)), null, gradientDrawable));
        setBackground(b());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.e.post(new r27(this.g));
    }

    @Subscribe
    public void onSelectedColorChanged(r27 r27Var) {
        setChecked(r27Var.a == this.g);
    }

    public void setChecked(boolean z) {
        boolean z2 = this.h;
        this.h = z;
        if (!z2 && z) {
            setItemCheckmarkAttributes(0.0f);
            this.f.setVisibility(0);
            this.f.animate().alpha(1.0f).scaleX(1.0f).scaleY(1.0f).setDuration(250L).setListener(new a()).start();
        } else if (!z2 || z) {
            this.f.setVisibility(z ? 0 : 4);
            setItemCheckmarkAttributes(1.0f);
        } else {
            this.f.setVisibility(0);
            setItemCheckmarkAttributes(1.0f);
            this.f.animate().alpha(0.0f).scaleX(0.0f).scaleY(0.0f).setDuration(250L).setListener(new b()).start();
        }
    }

    public void setOutlineWidth(int i) {
        this.i = i;
        d();
    }

    public ColorItem(Context context) {
        super(context);
        this.h = false;
        this.i = 0;
        c();
    }

    public ColorItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.h = false;
        this.i = 0;
        c();
    }
}
