package defpackage;

import android.content.DialogInterface;
import com.noinnion.android.greader.ui.setting.SendLogActivity;

/* loaded from: classes2.dex */
public class tt6 implements DialogInterface.OnCancelListener {
    public final /* synthetic */ SendLogActivity e;

    public tt6(SendLogActivity sendLogActivity) {
        this.e = sendLogActivity;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.e.z();
        this.e.finish();
    }
}
