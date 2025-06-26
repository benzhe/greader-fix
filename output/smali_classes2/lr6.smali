.class public Llr6;
.super Lnr6;
.source "SourceFile"


# instance fields
.field public A:Landroid/widget/ImageView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/ImageView;

.field public s:Landroid/view/View;

.field public t:Landroid/widget/ImageView;

.field public u:Landroid/view/View;

.field public v:Landroid/widget/ImageView;

.field public w:Landroid/widget/ImageView;

.field public x:Landroid/widget/ImageView;

.field public y:Landroid/widget/ImageView;

.field public z:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lnr6;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    invoke-static {p1}, Liw6;->n(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f090277

    .line 4
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/noinnion/android/reader/ui/view/CheckableItemCardLayout;

    iput-object v2, p0, Lnr6;->l:Landroid/widget/Checkable;

    const v2, 0x7f0902a2

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v2, 0x7f09031b

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llr6;->n:Landroid/widget/TextView;

    const v2, 0x7f0900a3

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llr6;->o:Landroid/widget/TextView;

    const v2, 0x7f09031c

    .line 8
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Llr6;->p:Landroid/widget/TextView;

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 9
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x7f0902e1

    .line 10
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Llr6;->q:Landroid/widget/TextView;

    .line 11
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0x7f090150

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llr6;->v:Landroid/widget/ImageView;

    const v0, 0x7f09014f

    .line 13
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llr6;->w:Landroid/widget/ImageView;

    const v0, 0x7f090144

    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llr6;->x:Landroid/widget/ImageView;

    const v0, 0x7f09014c

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llr6;->y:Landroid/widget/ImageView;

    const v0, 0x7f09031a

    .line 16
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llr6;->z:Landroid/widget/ImageView;

    const v0, 0x7f09006c

    .line 17
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Llr6;->A:Landroid/widget/ImageView;

    .line 18
    new-instance v1, Lir6;

    invoke-direct {v1, p0}, Lir6;-><init>(Llr6;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09017e

    .line 19
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Llr6;->r:Landroid/widget/ImageView;

    const v1, 0x7f09017f

    .line 20
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Llr6;->s:Landroid/view/View;

    const v1, 0x7f090271

    .line 21
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Llr6;->t:Landroid/widget/ImageView;

    const v2, 0x7f090272

    .line 22
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Llr6;->u:Landroid/view/View;

    .line 23
    invoke-static {p1}, Lon6;->g(Landroid/content/Context;)Lhw6;

    move-result-object p2

    .line 24
    iget v2, p2, Lhw6;->q:I

    const/high16 v3, 0x41200000    # 10.0f

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v2, :cond_0

    .line 25
    iget-object v2, p0, Llr6;->r:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 26
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v3}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v2, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 27
    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v0, 0x9

    .line 28
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    iget-object v0, p0, Llr6;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 30
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {v2, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 32
    iget-object v0, p0, Llr6;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Llr6;->r:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Llr6;->r:Landroid/widget/ImageView;

    new-instance v2, Lkr6;

    invoke-direct {v2, p0}, Lkr6;-><init>(Llr6;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    :goto_0
    iget p2, p2, Lhw6;->r:I

    if-nez p2, :cond_1

    .line 36
    iget-object p2, p0, Llr6;->t:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v3}, Ln56;->o0(Landroid/content/Context;F)I

    move-result p1

    invoke-direct {p2, p1, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-virtual {p2, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 p1, 0xb

    .line 39
    invoke-virtual {p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 40
    iget-object p1, p0, Llr6;->u:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 41
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    invoke-virtual {p1, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43
    iget-object p2, p0, Llr6;->u:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object p1, p0, Llr6;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Llr6;->t:Landroid/widget/ImageView;

    new-instance p2, Ljr6;

    invoke-direct {p2, p0}, Ljr6;-><init>(Llr6;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :goto_1
    iget-object p1, p0, Llr6;->z:Landroid/widget/ImageView;

    invoke-static {p3}, Llw6;->c(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public b(Lt07;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Llr6;->A:Landroid/widget/ImageView;

    iget v1, p0, Lnr6;->f:I

    invoke-virtual {p1, v0, v1}, Lt07;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
