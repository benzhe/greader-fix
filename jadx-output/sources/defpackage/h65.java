package defpackage;

import androidx.appcompat.widget.ActionMenuView;
import com.google.android.material.bottomappbar.BottomAppBar;

/* loaded from: classes.dex */
public class h65 implements Runnable {
    public final /* synthetic */ ActionMenuView e;
    public final /* synthetic */ int f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ BottomAppBar h;

    public h65(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.h = bottomAppBar;
        this.e = actionMenuView;
        this.f = i;
        this.g = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.e.setTranslationX(this.h.F(r0, this.f, this.g));
    }
}
