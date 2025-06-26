package defpackage;

import android.R;
import android.content.DialogInterface;
import android.widget.EditText;
import com.noinnion.android.greader.ui.subscription.ChangeFolderDialog;
import com.noinnion.android.greader.ui.subscription.ChangeFolderDialog.c;

/* loaded from: classes2.dex */
public class ju6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ ChangeFolderDialog e;

    public ju6(ChangeFolderDialog changeFolderDialog) {
        this.e = changeFolderDialog;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i) {
        String string = ((EditText) ((a0) dialogInterface).findViewById(R.id.input)).getText().toString();
        if (string.trim().length() == 0) {
            return;
        }
        this.e.new c(null).execute(string);
    }
}
