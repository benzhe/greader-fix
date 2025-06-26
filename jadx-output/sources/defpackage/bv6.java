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
import com.noinnion.android.reader.common.subscription.Feed;
import defpackage.gz6;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public class bv6 extends qm6<Feed> {
    public Context g;
    public Set<String> h;
    public Set<String> i;
    public an6 j;

    public class a implements View.OnClickListener {
        public final /* synthetic */ int e;
        public final /* synthetic */ ImageView f;

        public a(int i, ImageView imageView) {
            this.e = i;
            this.f = imageView;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int count = bv6.this.getCount();
            if (count == 0 || this.e > count - 1) {
                return;
            }
            this.f.setImageResource(R.drawable.ic_confirm);
            bv6.this.j.b("EVENT_SUBSCRIBE", bv6.this.getItem(this.e));
        }
    }

    public bv6(Context context, List<Feed> list) {
        super(context, list);
        this.h = new HashSet();
        this.i = new HashSet();
        this.j = new an6();
        this.g = context;
        Iterator it = ((ArrayList) ip6.e(this.e)).iterator();
        while (it.hasNext()) {
            this.h.add(((ip6) it.next()).f);
        }
    }

    @Override // defpackage.qm6
    public View a(int i, View view, ViewGroup viewGroup) throws Resources.NotFoundException {
        Feed item = null;
        if (view == null) {
            view = ((LayoutInflater) this.g.getSystemService("layout_inflater")).inflate(R.layout.subscribe_search_row, (ViewGroup) null);
        }
        try {
            item = getItem(i);
        } catch (Exception unused) {
        }
        if (item != null) {
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
            if (item.image != null) {
                sx6.n().g(item.image, imageView, gz6VarB);
            } else if (item.url != null) {
                sx6 sx6VarN = sx6.n();
                StringBuilder sbZ = jo.z("https://plus.google.com/_/favicon?domain=");
                sbZ.append(item.url);
                sx6VarN.g(sbZ.toString(), imageView, gz6VarB);
            } else {
                imageView.setImageResource(R.drawable.ic_bundle);
            }
            ((TextView) view.findViewById(R.id.name)).setText(item.title);
            ((TextView) view.findViewById(R.id.url)).setText(item.url);
            ImageView imageView2 = (ImageView) view.findViewById(R.id.add_button);
            if (b(item.url)) {
                imageView2.setImageResource(R.drawable.ic_confirm);
                imageView2.setEnabled(false);
            } else {
                imageView2.setOnClickListener(new a(i, imageView2));
                imageView2.setImageResource(R.drawable.btn_subscribe);
                imageView2.setEnabled(true);
            }
        }
        return view;
    }

    public boolean b(String str) {
        return this.h.contains(RssReaderClient.USER_FEED + str);
    }

    public void c(List<Feed> list) {
        this.f.clear();
        this.i.clear();
        for (Feed feed : list) {
            if (!this.i.contains(feed.url)) {
                this.f.add(feed);
                this.i.add(feed.url);
            }
        }
        notifyDataSetChanged();
    }
}
