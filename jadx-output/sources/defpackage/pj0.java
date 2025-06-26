package defpackage;

import android.content.DialogInterface;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class pj0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ nj0 e;

    public pj0(nj0 nj0Var) {
        this.e = nj0Var;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) throws JSONException {
        this.e.d("Operation denied by user.");
    }
}
