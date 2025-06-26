.class public Lnr6;
.super Landroidx/recyclerview/widget/RecyclerView$a0;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public e:J

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Z

.field public l:Landroid/widget/Checkable;

.field public m:Lan6;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5

    .line 1
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$a0;-><init>(Landroid/view/View;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lnr6;->e:J

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lnr6;->f:I

    const/16 v0, 0xc8

    .line 4
    iput v0, p0, Lnr6;->g:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lnr6;->k:Z

    .line 6
    new-instance v2, Lan6;

    invoke-direct {v2}, Lan6;-><init>()V

    iput-object v2, p0, Lnr6;->m:Lan6;

    .line 7
    invoke-virtual {p2, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    instance-of v2, p2, Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    if-eqz v2, :cond_0

    .line 9
    check-cast p2, Lcom/tr4android/recyclerviewslideitem/SwipeItem;

    invoke-virtual {p2}, Lcom/tr4android/recyclerviewslideitem/SwipeItem;->getContentView()Landroid/view/View;

    move-result-object p2

    .line 10
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const-string p2, "rich_show_snippet"

    const/4 v2, 0x1

    .line 12
    invoke-static {p1, p2, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p2

    .line 13
    iput-boolean p2, p0, Lnr6;->h:Z

    .line 14
    invoke-static {p1}, Liw6;->E(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lnr6;->j:I

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 15
    :goto_0
    iput-boolean p2, p0, Lnr6;->i:Z

    .line 16
    invoke-static {p1}, Ln56;->H0(Landroid/content/Context;)I

    move-result p2

    .line 17
    iget-boolean v3, p0, Lnr6;->i:Z

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    iget v3, p0, Lnr6;->j:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    if-eq p2, v4, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lnr6;->k:Z

    .line 18
    invoke-static {p1}, Liw6;->a0(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Llw6;->n(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 v0, 0x190

    .line 19
    :cond_4
    iput v0, p0, Lnr6;->g:I

    return-void
.end method


# virtual methods
.method public a(Lap6;ILandroid/widget/ImageView;)V
    .locals 2

    const/16 v0, 0x8

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const p1, 0x7f08017c

    .line 1
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    const p1, 0x7f080157

    .line 2
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_3
    const p1, 0x7f08010b

    .line 3
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_4
    const p1, 0x7f080158

    .line 4
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_5
    const p1, 0x7f08019f

    .line 5
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_6
    const p1, 0x7f0800fb

    .line 6
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_7
    const p1, 0x7f0800e6

    .line 7
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_8
    const v1, 0x7f080165

    .line 8
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 9
    iget-boolean p1, p1, Lap6;->s:Z

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :pswitch_9
    const v1, 0x7f080168

    .line 10
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 11
    iget-boolean p1, p1, Lap6;->r:Z

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :pswitch_a
    const v1, 0x7f080166

    .line 12
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    iget-boolean p1, p1, Lap6;->u:Z

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :pswitch_b
    const v1, 0x7f080167

    .line 14
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    iget-boolean p1, p1, Lap6;->v:Z

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 16
    :pswitch_c
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Lt07;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lnr6;->e:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lnr6;->m:Lan6;

    const-string v0, "EVENT_ITEM_CLICK"

    invoke-virtual {p1, v0, p0}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    .line 3
    iget-object p1, p0, Lnr6;->l:Landroid/widget/Checkable;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/widget/Checkable;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lnr6;->e:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 2
    iget-object p1, p0, Lnr6;->m:Lan6;

    const-string v0, "EVENT_ITEM_LONG_CLICK"

    invoke-virtual {p1, v0, p0}, Lan6;->b(Ljava/lang/String;Ljava/lang/Object;)I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
