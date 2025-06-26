.class public Lqu6$f;
.super Landroid/widget/ResourceCursorTreeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqu6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public e:Lkp6$a;

.field public f:Lip6;

.field public final synthetic g:Lqu6;


# direct methods
.method public constructor <init>(Lqu6;Landroid/content/Context;Landroid/database/Cursor;Lqu6$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lqu6$f;->g:Lqu6;

    const/4 p1, 0x0

    const p3, 0x7f0c00f1

    const p4, 0x7f0c00f0

    .line 2
    invoke-direct {p0, p2, p1, p3, p4}, Landroid/widget/ResourceCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;II)V

    .line 3
    iput-object p1, p0, Lqu6$f;->e:Lkp6$a;

    .line 4
    iput-object p1, p0, Lqu6$f;->f:Lip6;

    return-void
.end method


# virtual methods
.method public bindChildView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 6

    .line 1
    iget-object p4, p0, Lqu6$f;->f:Lip6;

    if-nez p4, :cond_0

    .line 2
    new-instance p4, Lip6;

    invoke-direct {p4, p3}, Lip6;-><init>(Landroid/database/Cursor;)V

    iput-object p4, p0, Lqu6$f;->f:Lip6;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p4, p3}, Lip6;->g(Landroid/database/Cursor;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lqu6$e;

    .line 5
    iget-object p4, p0, Lqu6$f;->f:Lip6;

    iget-wide v0, p4, Lip6;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    iput-object p4, p3, Lqu6$e;->a:Ljava/lang/Object;

    .line 6
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object p4

    .line 7
    iget-object v0, p3, Lqu6$e;->b:Landroid/widget/ImageView;

    invoke-virtual {p4, v0}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 8
    iget-object v0, p0, Lqu6$f;->f:Lip6;

    invoke-virtual {v0}, Lip6;->a()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 10
    sget-boolean v1, Lon6;->b:Z

    invoke-virtual {p4, v1}, Lhz6;->e(Z)V

    .line 11
    iget-object v1, p3, Lqu6$e;->b:Landroid/widget/ImageView;

    new-instance v3, Lgz6$b;

    invoke-direct {v3}, Lgz6$b;-><init>()V

    const v4, 0x7f0800ff

    .line 12
    iput v4, v3, Lgz6$b;->c:I

    .line 13
    iput v4, v3, Lgz6$b;->a:I

    .line 14
    iput v4, v3, Lgz6$b;->b:I

    .line 15
    iput-boolean v2, v3, Lgz6$b;->g:Z

    .line 16
    iput-boolean v2, v3, Lgz6$b;->h:Z

    .line 17
    iput-boolean v2, v3, Lgz6$b;->i:Z

    .line 18
    invoke-virtual {v3}, Lgz6$b;->b()Lgz6;

    move-result-object v3

    .line 19
    invoke-virtual {p4, v0, v1, v3}, Lhz6;->g(Ljava/lang/String;Landroid/widget/ImageView;Lgz6;)V

    goto :goto_1

    .line 20
    :cond_1
    iget-object p4, p3, Lqu6$e;->b:Landroid/widget/ImageView;

    const v0, 0x7f0800fd

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 21
    :goto_1
    iget-object p4, p3, Lqu6$e;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lqu6$f;->f:Lip6;

    iget-object v0, v0, Lip6;->h:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    iget-object p4, p3, Lqu6$e;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lqu6$f;->f:Lip6;

    iget-boolean v0, v0, Lip6;->p:Z

    if-eqz v0, :cond_2

    invoke-virtual {p4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    or-int/lit8 v0, v0, 0x10

    goto :goto_2

    :cond_2
    invoke-virtual {p4}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    :goto_2
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 23
    iget-object p4, p3, Lqu6$e;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lqu6$f;->f:Lip6;

    iget-wide v0, v0, Lip6;->n:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_3

    const-wide/16 v3, 0x3e8

    mul-long v0, v0, v3

    invoke-static {p2, v0, v1}, Ln56;->y0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    const-string p2, ""

    :goto_3
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p2, p0, Lqu6$f;->f:Lip6;

    iget p2, p2, Lip6;->m:I

    const/4 p4, 0x0

    if-lez p2, :cond_4

    .line 25
    iget-object v0, p3, Lqu6$e;->e:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    iget-object p2, p3, Lqu6$e;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 27
    :cond_4
    iget-object p2, p3, Lqu6$e;->e:Landroid/widget/TextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    :goto_4
    check-cast p1, Lfx6;

    iget-object p2, p0, Lqu6$f;->g:Lqu6;

    .line 29
    iget-wide p2, p2, Lqu6;->m:J

    .line 30
    iget-object v0, p0, Lqu6$f;->f:Lip6;

    iget-wide v0, v0, Lip6;->e:J

    cmp-long v3, p2, v0

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-interface {p1, v2}, Lfx6;->setChecked(Z)V

    return-void
.end method

.method public bindGroupView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lqu6$f;->e:Lkp6$a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lkp6$a;

    invoke-direct {v0, p3}, Lkp6$a;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lqu6$f;->e:Lkp6$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p3}, Lkp6$a;->b(Landroid/database/Cursor;)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqu6$e;

    .line 5
    iget-object v1, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 7
    invoke-static {}, Lsx6;->n()Lsx6;

    move-result-object v1

    .line 8
    iget-object v3, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lhz6;->a(Landroid/widget/ImageView;)V

    .line 9
    iget-object v3, p0, Lqu6$f;->e:Lkp6$a;

    iget v4, v3, Lkp6$a;->c:I

    const/16 v5, 0x64

    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v4, v5, :cond_5

    .line 10
    iget-object v1, v3, Lkp6$a;->b:Ljava/lang/String;

    iput-object v1, v0, Lqu6$e;->a:Ljava/lang/Object;

    .line 11
    iget-object v1, v0, Lqu6$e;->c:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Lkp6$a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, v0, Lqu6$e;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    iget-object p2, p0, Lqu6$f;->e:Lkp6$a;

    iget p2, p2, Lkp6$a;->g:I

    if-lez p2, :cond_1

    .line 14
    iget-object v1, v0, Lqu6$e;->e:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object p2, v0, Lqu6$e;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object p2, v0, Lqu6$e;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    :goto_1
    iget-object p2, v0, Lqu6$e;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 18
    iget-object p2, p0, Lqu6$f;->e:Lkp6$a;

    iget p2, p2, Lkp6$a;->c:I

    if-eq p2, v7, :cond_3

    packed-switch p2, :pswitch_data_0

    goto :goto_3

    .line 19
    :pswitch_0
    iget-object p2, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    if-eqz p4, :cond_2

    const p4, 0x7f0800d2

    goto :goto_2

    :cond_2
    const p4, 0x7f0800d3

    :goto_2
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    iget-object p2, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object p2, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    iget-object p3, p0, Lqu6$f;->g:Lqu6;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p2, p0, Lqu6$f;->e:Lkp6$a;

    iget-boolean p2, p2, Lkp6$a;->j:Z

    if-eqz p2, :cond_4

    .line 23
    iget-object p2, v0, Lqu6$e;->c:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p3

    or-int/lit8 p3, p3, 0x10

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_3

    .line 24
    :pswitch_1
    iget-object p2, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    const p3, 0x7f080191

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 25
    :pswitch_2
    iget-object p2, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    const p3, 0x7f080192

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 26
    :cond_3
    iget-object p2, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    const p3, 0x7f080193

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    :cond_4
    :goto_3
    check-cast p1, Lfx6;

    iget-object p2, p0, Lqu6$f;->g:Lqu6;

    .line 28
    iget-object p2, p2, Lqu6;->n:Ljava/lang/String;

    .line 29
    iget-object p3, p0, Lqu6$f;->e:Lkp6$a;

    iget-object p3, p3, Lkp6$a;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1, p2}, Lfx6;->setChecked(Z)V

    goto/16 :goto_8

    .line 30
    :cond_5
    iget-wide p3, v3, Lkp6$a;->a:J

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, v0, Lqu6$e;->a:Ljava/lang/Object;

    .line 31
    iget-object p3, p0, Lqu6$f;->e:Lkp6$a;

    invoke-virtual {p3}, Lkp6$a;->a()Ljava/lang/String;

    move-result-object p3

    .line 32
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_6

    .line 33
    sget-boolean p4, Lon6;->b:Z

    invoke-virtual {v1, p4}, Lhz6;->e(Z)V

    .line 34
    iget-object p4, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    new-instance v3, Lgz6$b;

    invoke-direct {v3}, Lgz6$b;-><init>()V

    const v4, 0x7f0800ff

    .line 35
    iput v4, v3, Lgz6$b;->c:I

    .line 36
    iput v4, v3, Lgz6$b;->a:I

    .line 37
    iput v4, v3, Lgz6$b;->b:I

    .line 38
    iput-boolean v7, v3, Lgz6$b;->g:Z

    .line 39
    iput-boolean v7, v3, Lgz6$b;->h:Z

    .line 40
    iput-boolean v7, v3, Lgz6$b;->i:Z

    .line 41
    invoke-virtual {v3}, Lgz6$b;->b()Lgz6;

    move-result-object v3

    .line 42
    invoke-virtual {v1, p3, p4, v3}, Lhz6;->g(Ljava/lang/String;Landroid/widget/ImageView;Lgz6;)V

    goto :goto_4

    .line 43
    :cond_6
    iget-object p3, v0, Lqu6$e;->b:Landroid/widget/ImageView;

    const p4, 0x7f0800fd

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    :goto_4
    iget-object p3, v0, Lqu6$e;->c:Landroid/widget/TextView;

    iget-object p4, p0, Lqu6$f;->e:Lkp6$a;

    iget-object p4, p4, Lkp6$a;->d:Ljava/lang/String;

    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p3, v0, Lqu6$e;->c:Landroid/widget/TextView;

    iget-object p4, p0, Lqu6$f;->e:Lkp6$a;

    iget-boolean p4, p4, Lkp6$a;->j:Z

    if-eqz p4, :cond_7

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p4

    or-int/lit8 p4, p4, 0x10

    goto :goto_5

    :cond_7
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result p4

    and-int/lit8 p4, p4, -0x11

    :goto_5
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 46
    iget-object p3, v0, Lqu6$e;->d:Landroid/widget/TextView;

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object p3, v0, Lqu6$e;->d:Landroid/widget/TextView;

    iget-object p4, p0, Lqu6$f;->e:Lkp6$a;

    iget-wide v3, p4, Lkp6$a;->h:J

    const-wide/16 v8, 0x0

    cmp-long p4, v3, v8

    if-lez p4, :cond_8

    const-wide/16 v8, 0x3e8

    mul-long v3, v3, v8

    invoke-static {p2, v3, v4}, Ln56;->y0(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    :cond_8
    const-string p2, ""

    :goto_6
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p2, p0, Lqu6$f;->e:Lkp6$a;

    iget p2, p2, Lkp6$a;->g:I

    if-lez p2, :cond_9

    .line 49
    iget-object p3, v0, Lqu6$e;->e:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p2, v0, Lqu6$e;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    .line 51
    :cond_9
    iget-object p2, v0, Lqu6$e;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    :goto_7
    check-cast p1, Lfx6;

    iget-object p2, p0, Lqu6$f;->g:Lqu6;

    .line 53
    iget-wide p2, p2, Lqu6;->m:J

    .line 54
    iget-object p4, p0, Lqu6$f;->e:Lkp6$a;

    iget-wide v0, p4, Lkp6$a;->a:J

    cmp-long p4, p2, v0

    if-nez p4, :cond_a

    const/4 v2, 0x1

    :cond_a
    invoke-interface {p1, v2}, Lfx6;->setChecked(Z)V

    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 4

    .line 1
    iget-object v0, p0, Lqu6$f;->g:Lqu6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lqu6$f;->g:Lqu6;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    new-instance v2, Lkp6$a;

    invoke-direct {v2, p1}, Lkp6$a;-><init>(Landroid/database/Cursor;)V

    .line 4
    iget p1, v2, Lkp6$a;->c:I

    const/16 v3, 0xb

    if-ne p1, v3, :cond_1

    .line 5
    iget-object p1, v2, Lkp6$a;->b:Ljava/lang/String;

    invoke-static {v0}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object v1

    iget-boolean v1, v1, Lhw6;->e:Z

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, v2}, Lep6;->x(Landroid/content/Context;Ljava/lang/String;ZZ)Lvd;

    move-result-object p1

    invoke-virtual {p1}, Lvd;->k()Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v1
.end method

.method public newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ResourceCursorTreeAdapter;->newChildView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lqu6$e;

    iget-object p3, p0, Lqu6$f;->g:Lqu6;

    invoke-direct {p2, p3, p1}, Lqu6$e;-><init>(Lqu6;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method public newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ResourceCursorTreeAdapter;->newGroupView(Landroid/content/Context;Landroid/database/Cursor;ZLandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    new-instance p2, Lqu6$e;

    iget-object p3, p0, Lqu6$f;->g:Lqu6;

    invoke-direct {p2, p3, p1}, Lqu6$e;-><init>(Lqu6;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method
