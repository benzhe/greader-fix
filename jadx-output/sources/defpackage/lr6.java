package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.view.CheckableItemCardLayout;

/* loaded from: classes2.dex */
public class lr6 extends nr6 {
    public ImageView A;
    public TextView n;
    public TextView o;
    public TextView p;
    public TextView q;
    public ImageView r;
    public View s;
    public ImageView t;
    public View u;
    public ImageView v;
    public ImageView w;
    public ImageView x;
    public ImageView y;
    public ImageView z;

    public lr6(Context context, View view, int i) throws Resources.NotFoundException {
        super(context, view);
        int iN = iw6.n(context);
        int integer = context.getResources().getInteger(R.integer.item_card_font_size_plus);
        this.l = (CheckableItemCardLayout) view.findViewById(R.id.row);
        this.n = (TextView) view.findViewById(R.id.time);
        this.o = (TextView) view.findViewById(R.id.channel);
        TextView textView = (TextView) view.findViewById(R.id.title);
        this.p = textView;
        float f = iN + integer;
        textView.setTextSize(f);
        TextView textView2 = (TextView) view.findViewById(R.id.summary);
        this.q = textView2;
        textView2.setTextSize(f);
        this.v = (ImageView) view.findViewById(R.id.icon_unread);
        this.w = (ImageView) view.findViewById(R.id.icon_starred);
        this.x = (ImageView) view.findViewById(R.id.icon_cached);
        this.y = (ImageView) view.findViewById(R.id.icon_podcast);
        this.z = (ImageView) view.findViewById(R.id.thumb);
        ImageView imageView = (ImageView) view.findViewById(R.id.badge);
        this.A = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: ir6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.e.itemView.performClick();
            }
        });
        this.r = (ImageView) view.findViewById(R.id.left_action);
        this.s = view.findViewById(R.id.left_filler);
        this.t = (ImageView) view.findViewById(R.id.right_action);
        this.u = view.findViewById(R.id.right_filler);
        hw6 hw6VarG = on6.g(context);
        if (hw6VarG.q == 0) {
            this.r.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(n56.o0(context, 10.0f), 0);
            layoutParams.addRule(1, R.id.left_action);
            layoutParams.addRule(9);
            this.s.setLayoutParams(layoutParams);
        } else {
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(0, 0);
            layoutParams2.addRule(1, R.id.left_action);
            this.s.setLayoutParams(layoutParams2);
            this.r.setVisibility(0);
            this.r.setOnClickListener(new View.OnClickListener() { // from class: kr6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.e.m.b("EVENT_ITEM_LEFT_ACTION", view2);
                }
            });
        }
        if (hw6VarG.r == 0) {
            this.t.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(n56.o0(context, 10.0f), 0);
            layoutParams3.addRule(0, R.id.right_action);
            layoutParams3.addRule(11);
            this.u.setLayoutParams(layoutParams3);
        } else {
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(0, 0);
            layoutParams4.addRule(0, R.id.right_action);
            this.u.setLayoutParams(layoutParams4);
            this.t.setVisibility(0);
            this.t.setOnClickListener(new View.OnClickListener() { // from class: jr6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    this.e.m.b("EVENT_ITEM_RIGHT_ACTION", view2);
                }
            });
        }
        this.z.setBackgroundResource(lw6.c(i));
    }

    @Override // defpackage.nr6
    public void b(t07 t07Var) {
        if (t07Var != null) {
            t07Var.a(this.A, this.f);
        }
    }
}
