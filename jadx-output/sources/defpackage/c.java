package defpackage;

import android.content.DialogInterface;

/* compiled from: java-style lambda group */
/* loaded from: classes.dex */
public final class c implements DialogInterface.OnClickListener {
    public static final c f = new c(0);
    public static final c g = new c(1);
    public final /* synthetic */ int e;

    public c(int i) {
        this.e = i;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.e;
        if (i2 != 0 && i2 != 1) {
            throw null;
        }
    }
}
