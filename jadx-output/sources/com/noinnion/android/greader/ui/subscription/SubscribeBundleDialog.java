package com.noinnion.android.greader.ui.subscription;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.greader.ui.subscription.SubscribeBundleDialog;
import com.noinnion.android.reader.common.subscription.BundleItem;
import com.noinnion.android.reader.common.subscription.BundleUtils;
import com.noinnion.android.reader.webservice.feedly.FeedlyService;
import com.noinnion.android.reader.webservice.feedly.model.Feed;
import defpackage.bn6;
import defpackage.ev6;
import defpackage.gw6;
import defpackage.ip6;
import defpackage.n56;
import defpackage.qw6;
import defpackage.t75;
import defpackage.zu6;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubscribeBundleDialog extends qw6 {
    public static final /* synthetic */ int k = 0;
    public ProgressDialog e;
    public zu6 f;
    public String g;
    public String h;
    public int i;
    public ev6 j;

    @BindView(R.id.empty_message)
    public TextView vEmptyMessage;

    @BindView(R.id.v_empty)
    public View vEmptyView;

    @BindView(R.id.v_list_view)
    public ListView vListView;

    @BindView(R.id.loading)
    public View vLoading;

    public class b extends AsyncTask<Void, Void, List<BundleItem.Subscription>> {
        public b(a aVar) {
        }

        public final List<BundleItem.Subscription> a(String str) throws gw6, IOException {
            ArrayList arrayList = new ArrayList();
            for (Feed feed : FeedlyService.getService().findFeeds(str, 50).execute().body().results) {
                BundleItem.Subscription subscription = new BundleItem.Subscription();
                subscription.title = feed.title;
                subscription.description = feed.description;
                subscription.image = feed.visualUrl;
                subscription.url = feed.getFeedUrl();
                arrayList.add(subscription);
            }
            return arrayList;
        }

        @Override // android.os.AsyncTask
        public List<BundleItem.Subscription> doInBackground(Void[] voidArr) {
            if (SubscribeBundleDialog.this.getActivity() == null) {
                return null;
            }
            Context applicationContext = SubscribeBundleDialog.this.getActivity().getApplicationContext();
            ArrayList arrayList = new ArrayList();
            try {
                SubscribeBundleDialog subscribeBundleDialog = SubscribeBundleDialog.this;
                int i = subscribeBundleDialog.i;
                return i > 0 ? BundleUtils.parseSubscription(applicationContext, i, subscribeBundleDialog.g) : a(subscribeBundleDialog.h);
            } catch (Exception e) {
                e.printStackTrace();
                return arrayList;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.AsyncTask
        public void onPostExecute(List<BundleItem.Subscription> list) {
            List<BundleItem.Subscription> list2 = list;
            if (SubscribeBundleDialog.this.getActivity() == null) {
                return;
            }
            zu6 zu6Var = SubscribeBundleDialog.this.f;
            zu6Var.f = list2;
            zu6Var.notifyDataSetChanged();
            SubscribeBundleDialog.this.vLoading.setVisibility(8);
            if (list2.size() == 0) {
                SubscribeBundleDialog.this.vEmptyMessage.setText(R.string.msg_load_items_failed);
            }
        }
    }

    public class c implements bn6 {
        public c(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof String) {
                String str = (String) obj;
                zu6 zu6Var = SubscribeBundleDialog.this.f;
                Objects.requireNonNull(zu6Var);
                if (str != null) {
                    zu6Var.i.add(str);
                    zu6Var.notifyDataSetChanged();
                }
            }
            ProgressDialog progressDialog = SubscribeBundleDialog.this.e;
            if (progressDialog == null || !progressDialog.isShowing()) {
                return;
            }
            SubscribeBundleDialog.this.e.dismiss();
        }
    }

    public class d implements bn6 {
        public d(a aVar) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof com.noinnion.android.reader.common.subscription.Feed) {
                SubscribeBundleDialog subscribeBundleDialog = SubscribeBundleDialog.this;
                subscribeBundleDialog.e = ProgressDialog.show(subscribeBundleDialog.getActivity(), null, subscribeBundleDialog.getText(R.string.msg_subscribe_feed_running), true, true);
                subscribeBundleDialog.j.a();
                subscribeBundleDialog.j.e((com.noinnion.android.reader.common.subscription.Feed) obj);
            }
        }
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
        List<ip6> listE = ip6.e(getContext());
        HashSet hashSet = new HashSet();
        Iterator it = ((ArrayList) listE).iterator();
        while (it.hasNext()) {
            hashSet.add(((ip6) it.next()).f);
        }
        zu6 zu6Var = new zu6(getActivity(), this.i, new ArrayList());
        this.f = zu6Var;
        zu6Var.j.a("EVENT_SUBSCRIBE", new d(null));
        this.vListView.setAdapter((ListAdapter) this.f);
        new b(null).execute(new Void[0]);
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.j = new ev6(getActivity());
        n56.y2(getActivity(), R.string.ga_screen_subscribe_bundle);
    }

    @Override // defpackage.qw6, defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) throws NoSuchMethodException, SecurityException {
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.g = arguments.getString("itemId");
            this.h = arguments.getString("title");
            this.i = arguments.getInt("url");
        }
        setRetainInstance(true);
        t75 t75Var = new t75(getActivity());
        t75Var.a.e = TextUtils.isEmpty(this.h) ? this.g : this.h;
        t75 t75VarJ = t75Var.j(R.string.txt_close, new DialogInterface.OnClickListener() { // from class: zt6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                int i2 = SubscribeBundleDialog.k;
            }
        });
        View viewInflate = getActivity().getLayoutInflater().inflate(R.layout.subscribe_browse_bundle, (ViewGroup) null);
        t75VarJ.n(viewInflate);
        ButterKnife.bind(this, viewInflate);
        this.vListView.setEmptyView(this.vEmptyView);
        return t75VarJ.a();
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        ev6 ev6Var = this.j;
        ev6Var.b.b("DEFAULT_FINISHED_EVENT", new c(null));
        ev6 ev6Var2 = this.j;
        ev6Var2.b.b("DEFAULT_ERROR_EVENT", new c(null));
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.j.b();
    }
}
