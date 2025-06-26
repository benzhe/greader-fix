package com.google.android.material.circularreveal.cardview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import com.google.android.material.card.MaterialCardView;
import defpackage.v65;
import defpackage.w65;
import java.util.Objects;

/* loaded from: classes.dex */
public class CircularRevealCardView extends MaterialCardView implements w65 {
    public final v65 w;

    public CircularRevealCardView(Context context) {
        this(context, null);
    }

    @Override // defpackage.w65
    public void a() {
        Objects.requireNonNull(this.w);
    }

    @Override // defpackage.w65
    public void b() {
        Objects.requireNonNull(this.w);
    }

    @Override // v65.a
    public void c(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // v65.a
    public boolean d() {
        return super.isOpaque();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        v65 v65Var = this.w;
        if (v65Var != null) {
            v65Var.a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.w.g;
    }

    @Override // defpackage.w65
    public int getCircularRevealScrimColor() {
        return this.w.b();
    }

    @Override // defpackage.w65
    public w65.e getRevealInfo() {
        return this.w.d();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        v65 v65Var = this.w;
        return v65Var != null ? v65Var.e() : super.isOpaque();
    }

    @Override // defpackage.w65
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        v65 v65Var = this.w;
        v65Var.g = drawable;
        v65Var.b.invalidate();
    }

    @Override // defpackage.w65
    public void setCircularRevealScrimColor(int i) {
        v65 v65Var = this.w;
        v65Var.e.setColor(i);
        v65Var.b.invalidate();
    }

    @Override // defpackage.w65
    public void setRevealInfo(w65.e eVar) {
        this.w.f(eVar);
    }

    public CircularRevealCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.w = new v65(this);
    }
}
