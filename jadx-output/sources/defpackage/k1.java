package defpackage;

import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import defpackage.h1;
import defpackage.p1;

/* loaded from: classes.dex */
public class k1 implements DialogInterface.OnKeyListener, DialogInterface.OnClickListener, DialogInterface.OnDismissListener, p1.a {
    public j1 e;
    public a0 f;
    public h1 g;

    public k1(j1 j1Var) {
        this.e = j1Var;
    }

    @Override // p1.a
    public void b(j1 j1Var, boolean z) {
        a0 a0Var;
        if ((z || j1Var == this.e) && (a0Var = this.f) != null) {
            a0Var.dismiss();
        }
    }

    @Override // p1.a
    public boolean c(j1 j1Var) {
        return false;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        this.e.r(((h1.a) this.g.a()).getItem(i), 0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        h1 h1Var = this.g;
        j1 j1Var = this.e;
        p1.a aVar = h1Var.j;
        if (aVar != null) {
            aVar.b(j1Var, true);
        }
    }

    @Override // android.content.DialogInterface.OnKeyListener
    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        Window window;
        View decorView;
        KeyEvent.DispatcherState keyDispatcherState;
        View decorView2;
        KeyEvent.DispatcherState keyDispatcherState2;
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window2 = this.f.getWindow();
                if (window2 != null && (decorView2 = window2.getDecorView()) != null && (keyDispatcherState2 = decorView2.getKeyDispatcherState()) != null) {
                    keyDispatcherState2.startTracking(keyEvent, this);
                    return true;
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && (window = this.f.getWindow()) != null && (decorView = window.getDecorView()) != null && (keyDispatcherState = decorView.getKeyDispatcherState()) != null && keyDispatcherState.isTracking(keyEvent)) {
                this.e.c(true);
                dialogInterface.dismiss();
                return true;
            }
        }
        return this.e.performShortcut(i, keyEvent, 0);
    }
}
