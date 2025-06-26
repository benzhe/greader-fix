package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.textclassifier.TextClassifier;
import android.widget.EditText;
import androidx.appcompat.R$attr;
import defpackage.d0;
import defpackage.h2;
import defpackage.i2;
import defpackage.x2;
import defpackage.z1;
import defpackage.z2;

/* loaded from: classes.dex */
public class AppCompatEditText extends EditText {
    public final z1 e;
    public final i2 f;
    public final h2 g;

    public AppCompatEditText(Context context) {
        this(context, null);
    }

    @Override // android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.a();
        }
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.e;
        if (z1Var != null) {
            return z1Var.b();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.e;
        if (z1Var != null) {
            return z1Var.c();
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextClassifier getTextClassifier() {
        h2 h2Var;
        return (Build.VERSION.SDK_INT >= 28 || (h2Var = this.g) == null) ? super.getTextClassifier() : h2Var.a();
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        d0.h.S(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.e();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.f(i);
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d0.h.m0(this, callback));
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.h(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.e;
        if (z1Var != null) {
            z1Var.i(mode);
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        i2 i2Var = this.f;
        if (i2Var != null) {
            i2Var.f(context, i);
        }
    }

    @Override // android.widget.TextView
    public void setTextClassifier(TextClassifier textClassifier) {
        h2 h2Var;
        if (Build.VERSION.SDK_INT >= 28 || (h2Var = this.g) == null) {
            super.setTextClassifier(textClassifier);
        } else {
            h2Var.b = textClassifier;
        }
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R$attr.editTextStyle);
    }

    @Override // android.widget.EditText, android.widget.TextView
    public Editable getText() {
        return Build.VERSION.SDK_INT >= 28 ? super.getText() : super.getEditableText();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        z2.a(context);
        x2.a(this, getContext());
        z1 z1Var = new z1(this);
        this.e = z1Var;
        z1Var.d(attributeSet, i);
        i2 i2Var = new i2(this);
        this.f = i2Var;
        i2Var.e(attributeSet, i);
        i2Var.b();
        this.g = new h2(this);
    }
}
