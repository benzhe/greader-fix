package defpackage;

import android.content.DialogInterface;
import com.noinnion.android.greader.ui.home.HomeBaseActivity;

/* loaded from: classes2.dex */
public final class zp6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ HomeBaseActivity e;

    public zp6(HomeBaseActivity homeBaseActivity) {
        this.e = homeBaseActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.e.H();
    }
}
