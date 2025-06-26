package defpackage;

import android.app.Activity;
import android.content.DialogInterface;

/* loaded from: classes2.dex */
public final class mn6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ Activity e;
    public final /* synthetic */ long f;
    public final /* synthetic */ String g;

    public mn6(Activity activity, long j, String str) {
        this.e = activity;
        this.f = j;
        this.g = str;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == 0) {
            n56.j2(this.e, "com.noinnion.android.greader.reader.action.APPEND", this.f, this.g, null);
        } else if (i == 1) {
            n56.j2(this.e, "com.noinnion.android.greader.reader.action.PlAY_NOW", this.f, this.g, null);
        } else {
            if (i != 2) {
                return;
            }
            n56.j2(this.e, "com.noinnion.android.greader.reader.action.PlAY_NEXT", this.f, this.g, null);
        }
    }
}
