package com.noinnion.android.greader.ui.subscription;

import android.R;
import android.view.View;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.Utils;

/* loaded from: classes2.dex */
public class ChangeFolderDialog_ViewBinding implements Unbinder {
    public ChangeFolderDialog a;

    public ChangeFolderDialog_ViewBinding(ChangeFolderDialog changeFolderDialog, View view) {
        this.a = changeFolderDialog;
        changeFolderDialog.mListView = (ListView) Utils.findRequiredViewAsType(view, R.id.list, "field 'mListView'", ListView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        ChangeFolderDialog changeFolderDialog = this.a;
        if (changeFolderDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        changeFolderDialog.mListView = null;
    }
}
