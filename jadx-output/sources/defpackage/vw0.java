package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;
import android.widget.EditText;

/* loaded from: classes.dex */
public final class vw0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ JsPromptResult e;
    public final /* synthetic */ EditText f;

    public vw0(JsPromptResult jsPromptResult, EditText editText) {
        this.e = jsPromptResult;
        this.f = editText;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.e.confirm(this.f.getText().toString());
    }
}
