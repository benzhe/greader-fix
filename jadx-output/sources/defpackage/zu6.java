package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.noinnion.android.greader.client.rss.RssReaderClient;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.common.subscription.BundleItem;
import com.noinnion.android.reader.common.subscription.Feed;
import defpackage.gz6;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class zu6 extends qm6<BundleItem.Subscription> {
    public Context g;
    public int h;
    public Set<String> i;
    public an6 j;

    public class a implements View.OnClickListener {
        public final /* synthetic */ ImageView e;
        public final /* synthetic */ BundleItem.Subscription f;

        public a(ImageView imageView, BundleItem.Subscription subscription) {
            this.e = imageView;
            this.f = subscription;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.e.setImageResource(R.drawable.ic_confirm);
            BundleItem.Subscription subscription = this.f;
            zu6.this.j.b("EVENT_SUBSCRIBE", new Feed(subscription.title, subscription.url));
        }
    }

    public zu6(Context context, int i, List<BundleItem.Subscription> list) {
        super(context, list);
        this.h = 0;
        this.i = new HashSet();
        this.j = new an6();
        this.g = context;
        this.h = i;
        Iterator it = ((ArrayList) ip6.e(this.e)).iterator();
        while (it.hasNext()) {
            this.i.add(((ip6) it.next()).f);
        }
    }

    @Override // defpackage.qm6
    public View a(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        if (view == null) {
            view = ((LayoutInflater) this.g.getSystemService("layout_inflater")).inflate(R.layout.subscribe_bundle_row, (ViewGroup) null);
        }
        BundleItem.Subscription item = getItem(i);
        if (item != null) {
            ((TextView) view.findViewById(R.id.name)).setText(item.title);
            gz6.b bVar = new gz6.b();
            bVar.c = R.drawable.ic_feed_default;
            bVar.a = R.drawable.ic_feed_default;
            bVar.b = R.drawable.ic_feed_default;
            bVar.g = true;
            bVar.h = true;
            bVar.i = true;
            bVar.a(Bitmap.Config.RGB_565);
            gz6 gz6VarB = bVar.b();
            ImageView imageView = (ImageView) view.findViewById(R.id.icon);
            if (this.h == R.raw.google_news) {
                imageView.setImageResource(R.drawable.ic_google_news);
            } else if (item.image != null) {
                sx6.n().g(item.image, imageView, gz6VarB);
            } else if (item.url != null) {
                sx6 sx6VarN = sx6.n();
                StringBuilder sbZ = jo.z("https://plus.google.com/_/favicon?domain=");
                sbZ.append(item.url);
                sx6VarN.g(sbZ.toString(), imageView, gz6VarB);
            } else {
                imageView.setImageResource(R.drawable.ic_bundle);
            }
            ImageView imageView2 = (ImageView) view.findViewById(R.id.add);
            if (b(item.url)) {
                imageView2.setImageResource(R.drawable.ic_confirm);
                imageView2.setEnabled(false);
            } else {
                imageView2.setOnClickListener(new a(imageView2, item));
                imageView2.setImageResource(R.drawable.btn_subscribe);
                imageView2.setEnabled(true);
            }
        }
        return view;
    }

    public boolean b(String str) {
        return this.i.contains(RssReaderClient.USER_FEED + str);
    }
}
