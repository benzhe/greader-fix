.class public Lcom/thebluealliance/spectrum/SpectrumPalette;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thebluealliance/spectrum/SpectrumPalette$a;
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:[I

.field public h:I

.field public i:Lcom/thebluealliance/spectrum/SpectrumPalette$a;

.field public j:Z

.field public k:Z

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:I

.field public t:Z

.field public u:Lorg/greenrobot/eventbus/EventBus;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/thebluealliance/spectrum/internal/ColorItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:Z

    .line 3
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->k:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->l:I

    .line 5
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->m:I

    .line 6
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:I

    .line 7
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->o:I

    .line 8
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:I

    .line 9
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:Z

    const/4 v1, 0x2

    .line 10
    iput v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    .line 11
    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 12
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:Z

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->v:Ljava/util/List;

    .line 14
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->f()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:Z

    .line 17
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->k:Z

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->l:I

    .line 19
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->m:I

    .line 20
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:I

    .line 21
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->o:I

    .line 22
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:I

    .line 23
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:Z

    const/4 v1, 0x2

    .line 24
    iput v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    .line 25
    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 26
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:Z

    .line 27
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->v:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette:[I

    invoke-virtual {v1, p2, v2, p1, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 29
    sget v1, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_colors:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->g:[I

    .line 31
    :cond_0
    sget v1, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_autoPadding:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:Z

    .line 32
    sget v1, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_outlineWidth:I

    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->m:I

    .line 33
    sget p1, Lcom/thebluealliance/spectrum/R$styleable;->SpectrumPalette_spectrum_columnCount:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->l:I

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->k:Z

    .line 35
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->o:I

    .line 37
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:I

    .line 38
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->f()V

    return-void
.end method

.method private getOriginalPaddingBottom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:I

    return v0
.end method

.method private getOriginalPaddingTop()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->o:I

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x1

    .line 1
    iget v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    mul-int v2, v2, v1

    mul-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:I

    mul-int v3, v3, v4

    add-int/2addr v3, v2

    if-gt v3, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->g:[I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    array-length v1, v0

    div-int/2addr v1, p1

    .line 3
    array-length v0, v0

    rem-int/2addr v0, p1

    if-eqz v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 4
    :cond_1
    iget p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    mul-int v0, v0, v1

    return v0
.end method

.method public final c(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    mul-int v1, v1, p1

    return v1
.end method

.method public d()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:Z

    .line 3
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    iput v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->s:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 5
    iget-object v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->g:[I

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->e()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    :goto_0
    iget-object v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->g:[I

    array-length v6, v5

    if-ge v3, v6, :cond_5

    .line 8
    aget v5, v5, v3

    iget v6, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->h:I

    .line 9
    new-instance v7, Lcom/thebluealliance/spectrum/internal/ColorItem;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    if-ne v5, v6, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    iget-object v9, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v7, v8, v5, v6, v9}, Lcom/thebluealliance/spectrum/internal/ColorItem;-><init>(Landroid/content/Context;IZLorg/greenrobot/eventbus/EventBus;)V

    .line 10
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    iget v6, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:I

    invoke-virtual {v5, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 12
    invoke-virtual {v7, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->m:I

    if-eqz v5, :cond_3

    .line 14
    invoke-virtual {v7, v5}, Lcom/thebluealliance/spectrum/internal/ColorItem;->setOutlineWidth(I)V

    .line 15
    :cond_3
    iget-object v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->v:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    .line 17
    iget v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    if-ne v4, v5, :cond_4

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->e()Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v4, 0x0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-lez v4, :cond_7

    .line 20
    :goto_2
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    if-ge v4, v0, :cond_6

    .line 21
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 23
    iget v3, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:I

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 24
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 26
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method public final e()Landroid/widget/LinearLayout;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method

.method public final f()V
    .locals 2

    .line 1
    new-instance v0, Lorg/greenrobot/eventbus/EventBus;

    invoke-direct {v0}, Lorg/greenrobot/eventbus/EventBus;-><init>()V

    iput-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:Lorg/greenrobot/eventbus/EventBus;

    .line 2
    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/thebluealliance/spectrum/R$dimen;->color_item_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->e:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/thebluealliance/spectrum/R$dimen;->color_item_margins_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->f:I

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 5
    iget-boolean v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->k:Z

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-nez v2, :cond_2

    if-ne v0, v4, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    sub-int v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->a(I)I

    move-result v0

    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    goto :goto_0

    :cond_0
    if-ne v0, v3, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v0

    sub-int v0, p1, v2

    invoke-virtual {p0, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->a(I)I

    move-result v0

    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x4

    .line 8
    invoke-virtual {p0, p1}, Lcom/thebluealliance/spectrum/SpectrumPalette;->c(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v2

    .line 9
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    move p1, v0

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->l:I

    invoke-virtual {p0, p1}, Lcom/thebluealliance/spectrum/SpectrumPalette;->c(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p1

    add-int/2addr p1, v0

    .line 11
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->l:I

    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    .line 12
    :goto_0
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    invoke-virtual {p0, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->c(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v0

    add-int/2addr v0, v2

    sub-int v0, p1, v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:I

    if-ne v1, v4, :cond_3

    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_5

    .line 13
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    invoke-virtual {p0, v0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->b(I)I

    move-result v0

    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:I

    add-int/2addr v0, v1

    .line 14
    iget-boolean v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:Z

    if-eqz v1, :cond_4

    .line 15
    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 16
    :cond_4
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_1

    .line 17
    :cond_5
    iget p2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->r:I

    invoke-virtual {p0, p2}, Lcom/thebluealliance/spectrum/SpectrumPalette;->b(I)I

    move-result p2

    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->o:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:I

    add-int/2addr p2, v0

    .line 18
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:Z

    if-eqz v0, :cond_6

    .line 19
    iget v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    .line 20
    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->j:Z

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->o:I

    iget v2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    iget v3, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:I

    iget v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->n:I

    add-int/2addr v3, v5

    const/4 v5, 0x1

    .line 22
    iput-boolean v5, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:Z

    .line 23
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/thebluealliance/spectrum/SpectrumPalette;->setPadding(IIII)V

    .line 24
    :cond_7
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->d()V

    .line 25
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onSelectedColorChanged(Lr27;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    iget p1, p1, Lr27;->a:I

    .line 2
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->h:I

    .line 3
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->i:Lcom/thebluealliance/spectrum/SpectrumPalette$a;

    if-eqz v0, :cond_0

    .line 4
    check-cast v0, Lcom/thebluealliance/spectrum/SpectrumPreference$b;

    .line 5
    iget-object v1, v0, Lcom/thebluealliance/spectrum/SpectrumPreference$b;->a:Lcom/thebluealliance/spectrum/SpectrumPreference;

    .line 6
    iput p1, v1, Lcom/thebluealliance/spectrum/SpectrumPreference;->g:I

    .line 7
    iget-boolean p1, v1, Lcom/thebluealliance/spectrum/SpectrumPreference;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const/4 v2, -0x1

    .line 8
    invoke-virtual {v1, p1, v2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 9
    iget-object p1, v0, Lcom/thebluealliance/spectrum/SpectrumPreference$b;->a:Lcom/thebluealliance/spectrum/SpectrumPreference;

    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, v0, Lcom/thebluealliance/spectrum/SpectrumPreference$b;->a:Lcom/thebluealliance/spectrum/SpectrumPreference;

    invoke-virtual {p1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public setColors([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->g:[I

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->t:Z

    .line 3
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/SpectrumPalette;->d()V

    return-void
.end method

.method public setFixedColumnCount(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set column count to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "spectrum"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->k:Z

    .line 3
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->l:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->k:Z

    const/4 p1, -0x1

    .line 7
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->l:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public setOnColorSelectedListener(Lcom/thebluealliance/spectrum/SpectrumPalette$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->i:Lcom/thebluealliance/spectrum/SpectrumPalette$a;

    return-void
.end method

.method public setOutlineWidth(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->m:I

    .line 2
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thebluealliance/spectrum/internal/ColorItem;

    .line 3
    invoke-virtual {v1, p1}, Lcom/thebluealliance/spectrum/internal/ColorItem;->setOutlineWidth(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 2
    iget-boolean p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->q:Z

    if-nez p1, :cond_0

    .line 3
    iput p2, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->o:I

    .line 4
    iput p4, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->p:I

    :cond_0
    return-void
.end method

.method public setSelectedColor(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->h:I

    .line 2
    iget-object v0, p0, Lcom/thebluealliance/spectrum/SpectrumPalette;->u:Lorg/greenrobot/eventbus/EventBus;

    new-instance v1, Lr27;

    invoke-direct {v1, p1}, Lr27;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
