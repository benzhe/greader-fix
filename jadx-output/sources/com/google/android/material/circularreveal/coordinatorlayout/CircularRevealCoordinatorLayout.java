package com.google.android.material.circularreveal.coordinatorlayout;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.v65;
import defpackage.w65;
import java.util.Objects;

/* loaded from: classes.dex */
public class CircularRevealCoordinatorLayout extends CoordinatorLayout implements w65 {
    public final v65 D;

    public CircularRevealCoordinatorLayout(Context context) {
        this(context, null);
    }

    @Override // defpackage.w65
    public void a() {
        Objects.requireNonNull(this.D);
    }

    @Override // defpackage.w65
    public void b() {
        Objects.requireNonNull(this.D);
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
        v65 v65Var = this.D;
        if (v65Var != null) {
            v65Var.a(canvas);
        } else {
            super.draw(canvas);
        }
    }

    public Drawable getCircularRevealOverlayDrawable() {
        return this.D.g;
    }

    @Override // defpackage.w65
    public int getCircularRevealScrimColor() {
        return this.D.b();
    }

    @Override // defpackage.w65
    public w65.e getRevealInfo() {
        return this.D.d();
    }

    @Override // android.view.View
    public boolean isOpaque() {
        v65 v65Var = this.D;
        return v65Var != null ? v65Var.e() : super.isOpaque();
    }

    @Override // defpackage.w65
    public void setCircularRevealOverlayDrawable(Drawable drawable) {
        v65 v65Var = this.D;
        v65Var.g = drawable;
        v65Var.b.invalidate();
    }

    @Override // defpackage.w65
    public void setCircularRevealScrimColor(int i) {
        v65 v65Var = this.D;
        v65Var.e.setColor(i);
        v65Var.b.invalidate();
    }

    @Override // defpackage.w65
    public void setRevealInfo(w65.e eVar) {
        this.D.f(eVar);
    }

    public CircularRevealCoordinatorLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.D = new v65(this);
    }
}
