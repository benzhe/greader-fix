package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.view.CheckableItemGridLayout;

/* loaded from: classes2.dex */
public class mr6 extends nr6 {
    public TextView n;
    public ImageView o;
    public ImageView p;
    public View q;
    public View r;
    public View s;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            mr6.this.itemView.performClick();
        }
    }

    public mr6(Context context, View view, int i) throws Resources.NotFoundException {
        super(context, view);
        int iN = iw6.n(context);
        int integer = context.getResources().getInteger(R.integer.item_grid_font_size_plus);
        this.l = (CheckableItemGridLayout) view.findViewById(R.id.row);
        TextView textView = (TextView) view.findViewById(R.id.title);
        this.n = textView;
        textView.setTextSize(iN + integer);
        this.o = (ImageView) view.findViewById(R.id.thumb);
        ImageView imageView = (ImageView) view.findViewById(R.id.badge);
        this.p = imageView;
        imageView.setOnClickListener(new a());
        this.q = view.findViewById(R.id.icon_starred);
        this.r = view.findViewById(R.id.icon_cached);
        this.s = view.findViewById(R.id.icon_podcast);
        this.o.setBackgroundResource(lw6.c(i));
    }

    @Override // defpackage.nr6
    public void b(t07 t07Var) {
        if (t07Var != null) {
            t07Var.a(this.p, this.f);
        }
    }
}
