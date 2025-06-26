package com.noinnion.android.greader.ui.subscription;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import com.noinnion.android.greader.client.rss.syndication.feed.FeedItem;
import com.noinnion.android.greader.client.rss.syndication.handler.FeedHandler;
import com.noinnion.android.greader.client.rss.syndication.handler.FeedHandlerResult;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.common.subscription.Feed;
import defpackage.an6;
import defpackage.bn6;
import defpackage.h07;
import defpackage.hz6;
import defpackage.o65;
import defpackage.pu6;
import defpackage.qm6;
import defpackage.vm6;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public class SubscriptionDetailDialog extends o65 {
    public Feed q;
    public c r;
    public d s;
    public an6 t;

    @BindView(R.id.v_description)
    public TextView vDescription;

    @BindView(R.id.v_empty)
    public View vEmpty;

    @BindView(R.id.v_image)
    public ImageView vImage;

    @BindView(R.id.v_image_container)
    public View vImageContainer;

    @BindView(R.id.v_list_view)
    public ListView vListView;

    @BindView(R.id.v_loading)
    public ProgressBar vProgress;

    @BindView(R.id.v_subscribe)
    public Button vSubscribe;

    @BindView(R.id.v_title)
    public TextView vTitle;

    public class a implements bn6 {
        public a(pu6 pu6Var) {
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            SubscriptionDetailDialog.this.vProgress.setVisibility(8);
        }
    }

    public class b implements bn6 {
        public Context a;

        public b(Context context) {
            this.a = context;
        }

        @Override // defpackage.bn6
        public void a(Object obj) {
            if (obj instanceof FeedHandlerResult) {
                com.noinnion.android.greader.client.rss.syndication.feed.Feed feed = ((FeedHandlerResult) obj).feed;
                SubscriptionDetailDialog.this.r = new c(SubscriptionDetailDialog.this, this.a, feed.getItems());
                SubscriptionDetailDialog subscriptionDetailDialog = SubscriptionDetailDialog.this;
                subscriptionDetailDialog.vListView.setAdapter((ListAdapter) subscriptionDetailDialog.r);
                SubscriptionDetailDialog.this.vProgress.setVisibility(8);
            }
        }
    }

    public class c extends qm6<FeedItem> {
        public c(SubscriptionDetailDialog subscriptionDetailDialog, Context context, List<FeedItem> list) {
            super(context, list);
        }

        @Override // defpackage.qm6
        public View a(int i, View view, ViewGroup viewGroup) {
            if (view == null) {
                view = LayoutInflater.from(this.e).inflate(R.layout.subscription_detail_row, (ViewGroup) null);
            }
            FeedItem item = getItem(i);
            TextView textView = (TextView) view.findViewById(R.id.time);
            Date pubDate = item.getPubDate();
            textView.setText(DateFormat.getDateInstance().format(new Date(pubDate != null ? pubDate.getTime() : 0L)));
            ((TextView) view.findViewById(R.id.title)).setText(item.getTitle());
            view.setTag(item.getLink());
            return view;
        }
    }

    public class d extends vm6<String, FeedHandlerResult> {
        public d(SubscriptionDetailDialog subscriptionDetailDialog, Context context) {
            super(context);
        }

        @Override // defpackage.vm6
        public FeedHandlerResult c(String str) throws Exception {
            return new FeedHandler().parseFeed(new com.noinnion.android.greader.client.rss.syndication.feed.Feed(str, null));
        }
    }

    public SubscriptionDetailDialog(Context context, Feed feed) {
        super(context, 0);
        this.t = new an6();
        this.q = feed;
    }

    @Override // defpackage.o65, defpackage.i0, android.app.Dialog
    public void onCreate(Bundle bundle) throws Resources.NotFoundException {
        super.onCreate(bundle);
        this.s = new d(this, getContext());
        setContentView(R.layout.subscription_detail);
        ButterKnife.bind(this);
        this.vTitle.setText(this.q.title);
        this.vDescription.setText(this.q.content);
        this.vListView.setEmptyView(this.vEmpty);
        if (!TextUtils.isEmpty(this.q.image)) {
            hz6 hz6VarJ = hz6.j();
            String str = this.q.image;
            ImageView imageView = this.vImage;
            pu6 pu6Var = new pu6(this);
            Objects.requireNonNull(hz6VarJ);
            hz6VarJ.h(str, new h07(imageView), null, pu6Var, null);
        }
        if (this.q.selected) {
            this.vSubscribe.setVisibility(8);
        }
        this.s.a();
        this.s.e(this.q.url);
    }

    @Override // defpackage.o65, android.app.Dialog
    public void onStart() {
        super.onStart();
        d dVar = this.s;
        dVar.b.b("DEFAULT_FINISHED_EVENT", new b(getContext()));
        d dVar2 = this.s;
        dVar2.b.b("DEFAULT_ERROR_EVENT", new a(null));
    }

    @Override // defpackage.i0, android.app.Dialog
    public void onStop() {
        super.onStop();
        this.s.b();
    }
}
