package com.noinnion.android.greader.ui.subscription;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;

/* loaded from: classes2.dex */
public class SubscriptionDetailDialog_ViewBinding implements Unbinder {
    public SubscriptionDetailDialog a;
    public View b;

    public class a extends DebouncingOnClickListener {
        public final /* synthetic */ SubscriptionDetailDialog e;

        public a(SubscriptionDetailDialog_ViewBinding subscriptionDetailDialog_ViewBinding, SubscriptionDetailDialog subscriptionDetailDialog) {
            this.e = subscriptionDetailDialog;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            SubscriptionDetailDialog subscriptionDetailDialog = this.e;
            subscriptionDetailDialog.t.b("EVENT_SUBSCRIBE", subscriptionDetailDialog.q);
            subscriptionDetailDialog.dismiss();
        }
    }

    public SubscriptionDetailDialog_ViewBinding(SubscriptionDetailDialog subscriptionDetailDialog, View view) {
        this.a = subscriptionDetailDialog;
        subscriptionDetailDialog.vListView = (ListView) Utils.findRequiredViewAsType(view, R.id.v_list_view, "field 'vListView'", ListView.class);
        subscriptionDetailDialog.vEmpty = Utils.findRequiredView(view, R.id.v_empty, "field 'vEmpty'");
        subscriptionDetailDialog.vTitle = (TextView) Utils.findRequiredViewAsType(view, R.id.v_title, "field 'vTitle'", TextView.class);
        subscriptionDetailDialog.vDescription = (TextView) Utils.findRequiredViewAsType(view, R.id.v_description, "field 'vDescription'", TextView.class);
        subscriptionDetailDialog.vImage = (ImageView) Utils.findRequiredViewAsType(view, R.id.v_image, "field 'vImage'", ImageView.class);
        subscriptionDetailDialog.vImageContainer = Utils.findRequiredView(view, R.id.v_image_container, "field 'vImageContainer'");
        subscriptionDetailDialog.vProgress = (ProgressBar) Utils.findRequiredViewAsType(view, R.id.v_loading, "field 'vProgress'", ProgressBar.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.v_subscribe, "field 'vSubscribe' and method 'subscribe'");
        subscriptionDetailDialog.vSubscribe = (Button) Utils.castView(viewFindRequiredView, R.id.v_subscribe, "field 'vSubscribe'", Button.class);
        this.b = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new a(this, subscriptionDetailDialog));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SubscriptionDetailDialog subscriptionDetailDialog = this.a;
        if (subscriptionDetailDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        subscriptionDetailDialog.vListView = null;
        subscriptionDetailDialog.vEmpty = null;
        subscriptionDetailDialog.vTitle = null;
        subscriptionDetailDialog.vDescription = null;
        subscriptionDetailDialog.vImage = null;
        subscriptionDetailDialog.vImageContainer = null;
        subscriptionDetailDialog.vProgress = null;
        subscriptionDetailDialog.vSubscribe = null;
        this.b.setOnClickListener(null);
        this.b = null;
    }
}
