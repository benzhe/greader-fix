package defpackage;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;

/* loaded from: classes.dex */
public final class gw implements Runnable {
    public final /* synthetic */ Context e;
    public final /* synthetic */ String f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ boolean h;

    public gw(Context context, String str, boolean z, boolean z2) {
        this.e = context;
        this.f = str;
        this.g = z;
        this.h = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.e);
        builder.setMessage(this.f);
        if (this.g) {
            builder.setTitle("Error");
        } else {
            builder.setTitle("Info");
        }
        if (this.h) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new hw(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
