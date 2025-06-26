package com.noinnion.android.greader.ui.subscription;

import android.R;
import android.view.View;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.Utils;

/* loaded from: classes2.dex */
public class SubscriptionSelectionDialog_ViewBinding implements Unbinder {
    public SubscriptionSelectionDialog a;

    public SubscriptionSelectionDialog_ViewBinding(SubscriptionSelectionDialog subscriptionSelectionDialog, View view) {
        this.a = subscriptionSelectionDialog;
        subscriptionSelectionDialog.mListView = (ListView) Utils.findRequiredViewAsType(view, R.id.list, "field 'mListView'", ListView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SubscriptionSelectionDialog subscriptionSelectionDialog = this.a;
        if (subscriptionSelectionDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        subscriptionSelectionDialog.mListView = null;
    }
}
