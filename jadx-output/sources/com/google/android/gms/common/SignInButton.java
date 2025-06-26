package com.google.android.gms.common;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.base.R$color;
import com.google.android.gms.base.R$drawable;
import com.google.android.gms.base.R$styleable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.SignInButtonImpl;
import defpackage.bi;
import defpackage.d0;
import defpackage.jo;
import defpackage.x00;
import defpackage.z20;
import java.util.Objects;

/* loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public int e;
    public int f;
    public View g;
    public View.OnClickListener h;

    public SignInButton(Context context) {
        this(context, null);
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View.OnClickListener onClickListener = this.h;
        if (onClickListener == null || view != this.g) {
            return;
        }
        onClickListener.onClick(this);
    }

    public final void setColorScheme(int i) throws Resources.NotFoundException {
        setStyle(this.e, i);
    }

    @Override // android.view.View
    public final void setEnabled(boolean z) {
        super.setEnabled(z);
        this.g.setEnabled(z);
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.h = onClickListener;
        View view = this.g;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public final void setScopes(Scope[] scopeArr) throws Resources.NotFoundException {
        setStyle(this.e, this.f);
    }

    public final void setSize(int i) throws Resources.NotFoundException {
        setStyle(i, this.f);
    }

    public final void setStyle(int i, int i2) throws Resources.NotFoundException {
        this.e = i;
        this.f = i2;
        Context context = getContext();
        View view = this.g;
        if (view != null) {
            removeView(view);
        }
        try {
            this.g = x00.c(context, this.e, this.f);
        } catch (z20.a unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i3 = this.e;
            int i4 = this.f;
            SignInButtonImpl signInButtonImpl = new SignInButtonImpl(context);
            Resources resources = context.getResources();
            signInButtonImpl.setTypeface(Typeface.DEFAULT_BOLD);
            signInButtonImpl.setTextSize(14.0f);
            int i5 = (int) ((resources.getDisplayMetrics().density * 48.0f) + 0.5f);
            signInButtonImpl.setMinHeight(i5);
            signInButtonImpl.setMinWidth(i5);
            int i6 = R$drawable.common_google_signin_btn_icon_dark;
            int i7 = R$drawable.common_google_signin_btn_icon_light;
            int iA = SignInButtonImpl.a(i4, i6, i7, i7);
            int i8 = R$drawable.common_google_signin_btn_text_dark;
            int i9 = R$drawable.common_google_signin_btn_text_light;
            int iA2 = SignInButtonImpl.a(i4, i8, i9, i9);
            if (i3 == 0 || i3 == 1) {
                iA = iA2;
            } else if (i3 != 2) {
                throw new IllegalStateException(jo.M(32, "Unknown button size: ", i3));
            }
            Drawable drawableL0 = d0.h.l0(resources.getDrawable(iA));
            drawableL0.setTintList(resources.getColorStateList(R$color.common_google_signin_btn_tint));
            drawableL0.setTintMode(PorterDuff.Mode.SRC_ATOP);
            signInButtonImpl.setBackgroundDrawable(drawableL0);
            int i10 = R$color.common_google_signin_btn_text_dark;
            int i11 = R$color.common_google_signin_btn_text_light;
            ColorStateList colorStateList = resources.getColorStateList(SignInButtonImpl.a(i4, i10, i11, i11));
            Objects.requireNonNull(colorStateList, "null reference");
            signInButtonImpl.setTextColor(colorStateList);
            if (i3 == 0) {
                signInButtonImpl.setText(resources.getString(com.google.android.gms.base.R$string.common_signin_button_text));
            } else if (i3 == 1) {
                signInButtonImpl.setText(resources.getString(com.google.android.gms.base.R$string.common_signin_button_text_long));
            } else {
                if (i3 != 2) {
                    throw new IllegalStateException(jo.M(32, "Unknown button size: ", i3));
                }
                signInButtonImpl.setText((CharSequence) null);
            }
            signInButtonImpl.setTransformationMethod(null);
            if (bi.O(signInButtonImpl.getContext())) {
                signInButtonImpl.setGravity(19);
            }
            this.g = signInButtonImpl;
        }
        addView(this.g);
        this.g.setEnabled(isEnabled());
        this.g.setOnClickListener(this);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException {
        super(context, attributeSet, i);
        this.h = null;
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R$styleable.SignInButton, 0, 0);
        try {
            this.e = typedArrayObtainStyledAttributes.getInt(R$styleable.SignInButton_buttonSize, 0);
            this.f = typedArrayObtainStyledAttributes.getInt(R$styleable.SignInButton_colorScheme, 2);
            typedArrayObtainStyledAttributes.recycle();
            setStyle(this.e, this.f);
        } catch (Throwable th) {
            typedArrayObtainStyledAttributes.recycle();
            throw th;
        }
    }

    @Deprecated
    public final void setStyle(int i, int i2, Scope[] scopeArr) throws Resources.NotFoundException {
        setStyle(i, i2);
    }
}
