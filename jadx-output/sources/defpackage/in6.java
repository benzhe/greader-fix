package defpackage;

import android.app.Activity;
import android.content.DialogInterface;

/* loaded from: classes2.dex */
public final class in6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ Activity e;

    public in6(Activity activity) {
        this.e = activity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        n56.q0(this.e, i);
    }
}
