package defpackage;

import android.app.Dialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.widget.TouchListView;
import defpackage.jv6;
import java.util.List;

/* loaded from: classes2.dex */
public class jv6 extends Dialog implements View.OnClickListener, AdapterView.OnItemClickListener {
    public e e;
    public d f;
    public List<String> g;
    public long h;
    public BroadcastReceiver i;
    public TouchListView.c j;
    public TouchListView.d k;

    public class a extends BroadcastReceiver {
        public a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.noinnion.android.greader.reader.action.NEW_ITEM")) {
                jv6.this.h = intent.getLongExtra("itemId", 0L);
                jv6.this.f.notifyDataSetChanged();
            }
        }
    }

    public class b implements TouchListView.c {
        public b() {
        }

        @Override // com.noinnion.android.widget.TouchListView.c
        public void m(int i, int i2) {
            String item = jv6.this.f.getItem(i);
            jv6.this.f.remove(item);
            jv6.this.f.insert(item, i2);
            jv6.this.e.m(i, i2);
        }
    }

    public class c implements TouchListView.d {
        public c() {
        }

        @Override // com.noinnion.android.widget.TouchListView.d
        public void remove(int i) {
            d dVar = jv6.this.f;
            dVar.remove(dVar.getItem(i));
            jv6.this.e.remove(i);
        }
    }

    public class d extends ArrayAdapter<String> {
        public d(Context context, a aVar) {
            super(context, R.layout.tts_playlist_row, jv6.this.g);
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(final int i, View view, ViewGroup viewGroup) throws NumberFormatException {
            if (view == null) {
                view = ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(R.layout.tts_playlist_row, (ViewGroup) null);
            }
            long j = Long.parseLong(jv6.this.g.get(i));
            if (j > 0) {
                ap6 ap6VarL = ap6.l(getContext(), j, true);
                if (ap6VarL != null) {
                    ((TextView) view.findViewById(R.id.title)).setText(ap6VarL.h);
                    ImageView imageView = (ImageView) view.findViewById(R.id.icon);
                    if (j == jv6.this.h) {
                        imageView.setImageResource(R.drawable.ic_media_play);
                    } else {
                        imageView.setImageResource(R.drawable.ic_media_playlist);
                    }
                    view.findViewById(R.id.delete).setOnClickListener(new View.OnClickListener() { // from class: fv6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            jv6.d dVar = this.e;
                            int i2 = i;
                            jv6.this.g.remove(i2);
                            jv6.this.e.remove(i2);
                            jv6.this.f.notifyDataSetChanged();
                        }
                    });
                }
                view.setTag(Long.valueOf(j));
            }
            return view;
        }
    }

    public interface e {
        void J();

        void a(int i);

        void m(int i, int i2);

        void remove(int i);
    }

    public jv6(Context context, List<String> list, long j, e eVar) {
        super(context);
        this.h = 0L;
        this.i = new a();
        this.j = new b();
        this.k = new c();
        this.g = list;
        this.h = j;
        this.e = eVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() != R.id.ok_button) {
            return;
        }
        dismiss();
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().requestFeature(1);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.noinnion.android.greader.reader.action.NEW_ITEM");
        yd.a(getContext()).b(this.i, intentFilter);
        setContentView(R.layout.tts_playlist_dialog);
        getWindow().setLayout(-1, -2);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        if (toolbar != null) {
            toolbar.setTitle(R.string.tts_play_list);
            toolbar.setNavigationIcon(R.drawable.abc_ic_ab_back_mtrl_am_alpha);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: gv6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.e.dismiss();
                }
            });
        }
        TouchListView touchListView = (TouchListView) findViewById(android.R.id.list);
        touchListView.setOnItemClickListener(this);
        touchListView.setDropListener(this.j);
        touchListView.setRemoveListener(this.k);
        d dVar = new d(getContext(), null);
        this.f = dVar;
        touchListView.setAdapter((ListAdapter) dVar);
        findViewById(R.id.ok_button).setOnClickListener(this);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
        Object tag = view.getTag();
        if (tag instanceof Long) {
            long jLongValue = ((Long) tag).longValue();
            if (this.h == jLongValue) {
                this.e.J();
                return;
            }
            this.e.a(i);
            this.h = jLongValue;
            this.f.notifyDataSetChanged();
        }
    }

    @Override // android.app.Dialog
    public void onStop() {
        yd.a(getContext()).d(this.i);
        super.onStop();
    }
}
