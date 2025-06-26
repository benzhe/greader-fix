package defpackage;

import android.content.DialogInterface;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class vj0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ uj0 e;

    public vj0(uj0 uj0Var) {
        this.e = uj0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) throws JSONException {
        this.e.d("User canceled the download.");
    }
}
