package defpackage;

import android.content.Context;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.noinnion.android.greader.reader.R;
import com.tr4android.recyclerviewslideitem.SwipeItem;

/* loaded from: classes2.dex */
public class nr6 extends RecyclerView.a0 implements View.OnClickListener, View.OnLongClickListener {
    public long e;
    public int f;
    public int g;
    public boolean h;
    public boolean i;
    public int j;
    public boolean k;
    public Checkable l;
    public an6 m;

    public nr6(Context context, View view) {
        super(view);
        this.e = 0L;
        this.f = -1;
        this.g = 200;
        boolean z = false;
        this.k = false;
        this.m = new an6();
        view.setTag(this);
        view = view instanceof SwipeItem ? ((SwipeItem) view).getContentView() : view;
        view.setOnClickListener(this);
        view.setOnLongClickListener(this);
        this.h = iw6.f(context, "rich_show_snippet", true);
        int iE = iw6.E(context);
        this.j = iE;
        this.i = iE > 0;
        int iH0 = n56.H0(context);
        if (!this.i || iH0 == 0 || (this.j == 2 && iH0 != 2)) {
            z = true;
        }
        this.k = z;
        this.g = lw6.n(context, iw6.a0(context)) ? 400 : 200;
    }

    public void a(ap6 ap6Var, int i, ImageView imageView) {
        switch (i) {
            case 0:
                imageView.setVisibility(8);
                break;
            case 1:
                imageView.setImageResource(R.drawable.ic_qa_read_selector);
                imageView.setSelected(ap6Var.v);
                break;
            case 2:
                imageView.setImageResource(R.drawable.ic_qa_keep_unread_selector);
                imageView.setSelected(ap6Var.u);
                break;
            case 3:
                imageView.setImageResource(R.drawable.ic_qa_star_selector);
                imageView.setSelected(ap6Var.r);
                break;
            case 4:
                imageView.setImageResource(R.drawable.ic_qa_download_selector);
                imageView.setSelected(ap6Var.s);
                break;
            case 5:
                imageView.setImageResource(R.drawable.ic_chrome);
                break;
            case 6:
                imageView.setImageResource(R.drawable.ic_facebook_outline);
                break;
            case 7:
                imageView.setImageResource(R.drawable.ic_twitter_outline);
                break;
            case 10:
                imageView.setImageResource(R.drawable.ic_pocket_outline);
                break;
            case 11:
                imageView.setImageResource(R.drawable.ic_instapaper_outline);
                break;
            case 12:
                imageView.setImageResource(R.drawable.ic_play_outline);
                break;
            case 14:
                imageView.setImageResource(R.drawable.ic_share_outline);
                break;
        }
        imageView.setVisibility(i != 0 ? 0 : 8);
    }

    public void b(t07 t07Var) {
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.e > 0) {
            this.m.b("EVENT_ITEM_CLICK", this);
            this.l.setChecked(true);
        }
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        if (this.e <= 0) {
            return false;
        }
        this.m.b("EVENT_ITEM_LONG_CLICK", this);
        return true;
    }
}
