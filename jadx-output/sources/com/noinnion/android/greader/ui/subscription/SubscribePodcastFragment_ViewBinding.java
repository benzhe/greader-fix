package com.noinnion.android.greader.ui.subscription;

import android.app.ProgressDialog;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ListView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.common.subscription.Feed;
import defpackage.n56;
import defpackage.nu6;

/* loaded from: classes2.dex */
public class SubscribePodcastFragment_ViewBinding implements Unbinder {
    public SubscribePodcastFragment a;
    public View b;
    public View c;

    public class a implements AdapterView.OnItemClickListener {
        public final /* synthetic */ SubscribePodcastFragment e;

        public a(SubscribePodcastFragment_ViewBinding subscribePodcastFragment_ViewBinding, SubscribePodcastFragment subscribePodcastFragment) {
            this.e = subscribePodcastFragment;
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
            SubscribePodcastFragment subscribePodcastFragment = this.e;
            Feed item = subscribePodcastFragment.e.getItem(i);
            item.selected = subscribePodcastFragment.e.b(item.url);
            SubscriptionDetailDialog subscriptionDetailDialog = new SubscriptionDetailDialog(subscribePodcastFragment.getActivity(), item);
            subscriptionDetailDialog.t.a("EVENT_SUBSCRIBE", new nu6(subscribePodcastFragment));
            subscriptionDetailDialog.show();
        }
    }

    public class b extends DebouncingOnClickListener {
        public final /* synthetic */ SubscribePodcastFragment e;

        public b(SubscribePodcastFragment_ViewBinding subscribePodcastFragment_ViewBinding, SubscribePodcastFragment subscribePodcastFragment) {
            this.e = subscribePodcastFragment;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            SubscribePodcastFragment subscribePodcastFragment = this.e;
            n56.d1(subscribePodcastFragment.getActivity(), view);
            String strTrim = subscribePodcastFragment.vQueryText.getText().toString().trim();
            if (TextUtils.isEmpty(strTrim)) {
                return;
            }
            subscribePodcastFragment.f = ProgressDialog.show(subscribePodcastFragment.getActivity(), null, subscribePodcastFragment.getText(R.string.msg_finding_feeds), true, true);
            subscribePodcastFragment.h.a();
            subscribePodcastFragment.h.e(strTrim.trim());
        }
    }

    public SubscribePodcastFragment_ViewBinding(SubscribePodcastFragment subscribePodcastFragment, View view) {
        this.a = subscribePodcastFragment;
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.v_list_view, "field 'vListView' and method 'onListItemClick'");
        subscribePodcastFragment.vListView = (ListView) Utils.castView(viewFindRequiredView, R.id.v_list_view, "field 'vListView'", ListView.class);
        this.b = viewFindRequiredView;
        ((AdapterView) viewFindRequiredView).setOnItemClickListener(new a(this, subscribePodcastFragment));
        subscribePodcastFragment.vEmpty = Utils.findRequiredView(view, R.id.v_empty, "field 'vEmpty'");
        subscribePodcastFragment.vQueryText = (EditText) Utils.findRequiredViewAsType(view, R.id.query, "field 'vQueryText'", EditText.class);
        View viewFindRequiredView2 = Utils.findRequiredView(view, R.id.search_button, "method 'searchFeeds'");
        this.c = viewFindRequiredView2;
        viewFindRequiredView2.setOnClickListener(new b(this, subscribePodcastFragment));
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SubscribePodcastFragment subscribePodcastFragment = this.a;
        if (subscribePodcastFragment == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.a = null;
        subscribePodcastFragment.vListView = null;
        subscribePodcastFragment.vEmpty = null;
        subscribePodcastFragment.vQueryText = null;
        ((AdapterView) this.b).setOnItemClickListener(null);
        this.b = null;
        this.c.setOnClickListener(null);
        this.c = null;
    }
}
