package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
import defpackage.c3;
import defpackage.d0;
import defpackage.i2;
import defpackage.p0;
import defpackage.x2;
import defpackage.z2;

/* loaded from: classes.dex */
public class AppCompatCheckedTextView extends CheckedTextView {
    public static final int[] f = {R.attr.checkMark};
    public final i2 e;

    public AppCompatCheckedTextView(Context context) {
        this(context, null);
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        i2 i2Var = this.e;
        if (i2Var != null) {
            i2Var.b();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection inputConnectionOnCreateInputConnection = super.onCreateInputConnection(editorInfo);
        d0.h.S(inputConnectionOnCreateInputConnection, editorInfo, this);
        return inputConnectionOnCreateInputConnection;
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(p0.b(getContext(), i));
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d0.h.m0(this, callback));
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        i2 i2Var = this.e;
        if (i2Var != null) {
            i2Var.f(context, i);
        }
    }

    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkedTextViewStyle);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AppCompatCheckedTextView(Context context, AttributeSet attributeSet, int i) throws Resources.NotFoundException, IllegalArgumentException {
        super(context, attributeSet, i);
        z2.a(context);
        x2.a(this, getContext());
        i2 i2Var = new i2(this);
        this.e = i2Var;
        i2Var.e(attributeSet, i);
        i2Var.b();
        c3 c3VarR = c3.r(getContext(), attributeSet, f, i, 0);
        setCheckMarkDrawable(c3VarR.g(0));
        c3VarR.b.recycle();
    }
}
