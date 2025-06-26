.class public Lmr6;
.super Lnr6;
.source "SourceFile"


# instance fields
.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/ImageView;

.field public p:Landroid/widget/ImageView;

.field public q:Landroid/view/View;

.field public r:Landroid/view/View;

.field public s:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lnr6;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 2
    invoke-static {p1}, Liw6;->n(Landroid/content/Context;)I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0a0011

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const v1, 0x7f090277

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/noinnion/android/reader/ui/view/CheckableItemGridLayout;

    iput-object v1, p0, Lnr6;->l:Landroid/widget/Checkable;

    const v1, 0x7f09031c

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmr6;->n:Landroid/widget/TextView;

    add-int/2addr v0, p1

    int-to-float p1, v0

    .line 6
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextSize(F)V

    const p1, 0x7f09031a

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmr6;->o:Landroid/widget/ImageView;

    const p1, 0x7f09006c

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lmr6;->p:Landroid/widget/ImageView;

    .line 9
    new-instance v0, Lmr6$a;

    invoke-direct {v0, p0}, Lmr6$a;-><init>(Lmr6;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09014f

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmr6;->q:Landroid/view/View;

    const p1, 0x7f090144

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmr6;->r:Landroid/view/View;

    const p1, 0x7f09014c

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmr6;->s:Landroid/view/View;

    .line 13
    iget-object p1, p0, Lmr6;->o:Landroid/widget/ImageView;

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
    iget-object v0, p0, Lmr6;->p:Landroid/widget/ImageView;

    iget v1, p0, Lnr6;->f:I

    invoke-virtual {p1, v0, v1}, Lt07;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
