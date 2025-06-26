package defpackage;

import android.text.style.ClickableSpan;
import android.view.View;

/* loaded from: classes.dex */
public class gm6 extends ClickableSpan {
    public final /* synthetic */ Runnable e;

    public gm6(hm6 hm6Var, Runnable runnable) {
        this.e = runnable;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        this.e.run();
    }
}
