package defpackage;

import android.R;
import android.content.DialogInterface;
import android.widget.EditText;
import com.noinnion.android.greader.ui.item.EditTagDialog;
import com.noinnion.android.greader.ui.item.EditTagDialog.c;

/* loaded from: classes2.dex */
public class lq6 implements DialogInterface.OnClickListener {
    public final /* synthetic */ EditTagDialog e;

    public lq6(EditTagDialog editTagDialog) {
        this.e = editTagDialog;
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
