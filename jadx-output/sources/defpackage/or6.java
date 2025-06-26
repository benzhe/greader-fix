package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.noinnion.android.greader.reader.R;
import com.noinnion.android.reader.ui.view.CheckableItemCardLayout;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: classes2.dex */
public class or6 extends nr6 {
    public SimpleDateFormat A;
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

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            or6.this.itemView.performClick();
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            or6.this.m.b("EVENT_ITEM_LEFT_ACTION", view);
        }
    }

    public class c implements View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            or6.this.m.b("EVENT_ITEM_RIGHT_ACTION", view);
        }
    }

    public or6(Context context, View view) throws Resources.NotFoundException {
        super(context, view);
        this.A = new SimpleDateFormat("EEEE, dd. MMMM yyyy", Locale.getDefault());
        int iN = iw6.n(context);
        int integer = context.getResources().getInteger(R.integer.item_list_font_size_plus);
        this.l = (CheckableItemCardLayout) view.findViewById(R.id.content);
        this.n = (TextView) view.findViewById(R.id.separator);
        this.o = (TextView) view.findViewById(R.id.time);
        this.p = (TextView) view.findViewById(R.id.channel);
        TextView textView = (TextView) view.findViewById(R.id.summary);
        this.q = textView;
        textView.setTextSize(iN + integer);
        this.v = (ImageView) view.findViewById(R.id.icon_unread);
        this.w = (ImageView) view.findViewById(R.id.icon_starred);
        this.x = (ImageView) view.findViewById(R.id.icon_cached);
        this.y = (ImageView) view.findViewById(R.id.icon_podcast);
        ImageView imageView = (ImageView) view.findViewById(R.id.thumb);
        this.z = imageView;
        imageView.setOnClickListener(new a());
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
            this.r.setOnClickListener(new b());
        }
        if (hw6VarG.r == 0) {
            this.t.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(n56.o0(context, 10.0f), 0);
            layoutParams3.addRule(0, R.id.right_action);
            layoutParams3.addRule(11);
            this.u.setLayoutParams(layoutParams3);
            return;
        }
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(0, 0);
        layoutParams4.addRule(0, R.id.right_action);
        this.u.setLayoutParams(layoutParams4);
        this.t.setVisibility(0);
        this.t.setOnClickListener(new c());
    }

    @Override // defpackage.nr6
    public void b(t07 t07Var) {
        if (t07Var != null) {
            t07Var.a(this.z, this.f);
        }
    }
}
