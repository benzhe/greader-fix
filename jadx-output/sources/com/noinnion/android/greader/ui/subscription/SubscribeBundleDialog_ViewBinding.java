package com.noinnion.android.greader.ui.subscription;

import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.subscription.SubscribeBundleDialog.d;
import com.noinnion.android.reader.common.subscription.BundleItem;
import com.noinnion.android.reader.common.subscription.Feed;

/* loaded from: classes2.dex */
public class SubscribeBundleDialog_ViewBinding implements Unbinder {
    public SubscribeBundleDialog a;
    public View b;

    public class a implements AdapterView.OnItemClickListener {
        public final /* synthetic */ SubscribeBundleDialog e;

        public a(SubscribeBundleDialog_ViewBinding subscribeBundleDialog_ViewBinding, SubscribeBundleDialog subscribeBundleDialog) {
            this.e = subscribeBundleDialog;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SubscribeBundleDialog subscribeBundleDialog = this.e;
            BundleItem.Subscription item = subscribeBundleDialog.f.getItem(i);
            Feed feed = new Feed(item.title, item.url);
            feed.selected = subscribeBundleDialog.f.b(item.url);
            SubscriptionDetailDialog subscriptionDetailDialog = new SubscriptionDetailDialog(subscribeBundleDialog.getActivity(), feed);
            subscriptionDetailDialog.t.a("EVENT_SUBSCRIBE", subscribeBundleDialog.new d(null));
            subscriptionDetailDialog.show();
        }
    }

    public SubscribeBundleDialog_ViewBinding(SubscribeBundleDialog subscribeBundleDialog, View view) {
        this.a = subscribeBundleDialog;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.v_list_view, "field 'vListView' and method 'onListItemClick'");
        subscribeBundleDialog.vListView = (ListView) Utils.castView(viewFindRequiredView, R.id.v_list_view, "field 'vListView'", ListView.class);
        this.b = viewFindRequiredView;
        ((AdapterView) viewFindRequiredView).setOnItemClickListener(new a(this, subscribeBundleDialog));
        subscribeBundleDialog.vEmptyView = Utils.findRequiredView(view, R.id.v_empty, "field 'vEmptyView'");
        subscribeBundleDialog.vEmptyMessage = (TextView) Utils.findRequiredViewAsType(view, R.id.empty_message, "field 'vEmptyMessage'", TextView.class);
        subscribeBundleDialog.vLoading = Utils.findRequiredView(view, R.id.loading, "field 'vLoading'");
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SubscribeBundleDialog subscribeBundleDialog = this.a;
        if (subscribeBundleDialog == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        subscribeBundleDialog.vListView = null;
        subscribeBundleDialog.vEmptyView = null;
        subscribeBundleDialog.vEmptyMessage = null;
        subscribeBundleDialog.vLoading = null;
        ((AdapterView) this.b).setOnItemClickListener(null);
        this.b = null;
    }
}
