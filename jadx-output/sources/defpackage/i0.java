package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R$attr;
import defpackage.v0;
import defpackage.y9;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class i0 extends Dialog implements b0 {
    public c0 e;
    public final y9.a f;

    public class a implements y9.a {
        public a() {
        }

        @Override // y9.a
        public boolean j(KeyEvent keyEvent) {
            return i0.this.b(keyEvent);
        }
    }

    public i0(Context context, int i) {
        int i2;
        if (i == 0) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R$attr.dialogTheme, typedValue, true);
            i2 = typedValue.resourceId;
        } else {
            i2 = i;
        }
        super(context, i2);
        this.f = new a();
        c0 c0VarA = a();
        if (i == 0) {
            TypedValue typedValue2 = new TypedValue();
            context.getTheme().resolveAttribute(R$attr.dialogTheme, typedValue2, true);
            i = typedValue2.resourceId;
        }
        c0VarA.y(i);
        c0VarA.l(null);
    }

    public c0 a() {
        if (this.e == null) {
            h4<WeakReference<c0>> h4Var = c0.e;
            this.e = new d0(getContext(), getWindow(), this, this);
        }
        return this.e;
    }

    @Override // android.app.Dialog
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().c(view, layoutParams);
    }

    public boolean b(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    public boolean c(int i) {
        return a().t(i);
    }

    @Override // defpackage.b0
    public void d(v0 v0Var) {
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        a().m();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return y9.b(this.f, getWindow().getDecorView(), this, keyEvent);
    }

    @Override // defpackage.b0
    public void e(v0 v0Var) {
    }

    @Override // android.app.Dialog
    public <T extends View> T findViewById(int i) {
        return (T) a().e(i);
    }

    @Override // defpackage.b0
    public v0 i(v0.a aVar) {
        return null;
    }

    @Override // android.app.Dialog
    public void invalidateOptionsMenu() {
        a().j();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        a().i();
        super.onCreate(bundle);
        a().l(bundle);
    }

    @Override // android.app.Dialog
    public void onStop() {
        super.onStop();
        a().r();
    }

    @Override // android.app.Dialog
    public void setContentView(int i) {
        a().u(i);
    }

    @Override // android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        a().z(charSequence);
    }

    @Override // android.app.Dialog
    public void setContentView(View view) {
        a().v(view);
    }

    @Override // android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        a().w(view, layoutParams);
    }

    @Override // android.app.Dialog
    public void setTitle(int i) {
        super.setTitle(i);
        a().z(getContext().getString(i));
    }
}
