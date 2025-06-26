package com.noinnion.android.greader.ui.item;

import android.R;
import android.view.View;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.Utils;

/* loaded from: classes2.dex */
public class EditTagDialog_ViewBinding implements Unbinder {
    public EditTagDialog a;

    public EditTagDialog_ViewBinding(EditTagDialog editTagDialog, View view) {
        this.a = editTagDialog;
        editTagDialog.mListView = (ListView) Utils.findRequiredViewAsType(view, R.id.list, "field 'mListView'", ListView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        EditTagDialog editTagDialog = this.a;
        if (editTagDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        editTagDialog.mListView = null;
    }
}
