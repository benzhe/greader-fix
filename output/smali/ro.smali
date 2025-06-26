.class public Lro;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lro$c;
    }
.end annotation


# instance fields
.field public final e:Landroid/util/SparseIntArray;

.field public f:Lvo;

.field public g:Ljava/lang/String;

.field public h:Landroid/graphics/drawable/Drawable;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:Landroid/widget/GridView;

.field public o:Lto;

.field public p:Lro$c;

.field public q:Landroid/widget/ImageView;

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Lko;

.field public v:Lko;

.field public w:Lko;

.field public x:Landroid/content/DialogInterface$OnDismissListener;

.field public y:Landroid/content/DialogInterface$OnShowListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lro;->e:Landroid/util/SparseIntArray;

    const/4 p2, -0x1

    .line 3
    iput p2, p0, Lro;->r:I

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lro;->s:Z

    .line 5
    iput-boolean p2, p0, Lro;->t:Z

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet:[I

    sget v2, Lcom/cocosw/bottomsheet/R$attr;->bs_bottomSheetStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 7
    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 8
    :try_start_0
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_moreDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lro;->i:Landroid/graphics/drawable/Drawable;

    .line 9
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_closeDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lro;->h:Landroid/graphics/drawable/Drawable;

    .line 10
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_moreText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lro;->g:Ljava/lang/String;

    .line 11
    sget v1, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_collapseListIcons:I

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lro;->m:Z

    .line 12
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_headerLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_header:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lro;->j:I

    .line 13
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_listItemLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_list_entry:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lro;->k:I

    .line 14
    sget p2, Lcom/cocosw/bottomsheet/R$styleable;->BottomSheet_bs_gridItemLayout:I

    sget v1, Lcom/cocosw/bottomsheet/R$layout;->bs_grid_entry:I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lro;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    new-instance p2, Lvo;

    invoke-direct {p2, p0, p1}, Lvo;-><init>(Landroid/app/Dialog;Landroid/content/Context;)V

    iput-object p2, p0, Lro;->f:Lvo;

    return-void

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    throw p1
.end method

.method public static a(Lro;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/transition/ChangeBounds;

    invoke-direct {v0}, Landroid/transition/ChangeBounds;-><init>()V

    const-wide/16 v1, 0x12c

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/transition/Transition;->setDuration(J)Landroid/transition/Transition;

    .line 4
    iget-object v1, p0, Lro;->n:Landroid/widget/GridView;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 5
    iget-object v0, p0, Lro;->u:Lko;

    iput-object v0, p0, Lro;->w:Lko;

    .line 6
    invoke-virtual {p0}, Lro;->d()V

    .line 7
    iget-object v0, p0, Lro;->o:Lto;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 8
    iget-object v0, p0, Lro;->n:Landroid/widget/GridView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object v0, p0, Lro;->q:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lro;->q:Landroid/widget/ImageView;

    iget-object v1, p0, Lro;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object v0, p0, Lro;->q:Landroid/widget/ImageView;

    new-instance v1, Lqo;

    invoke-direct {v1, p0}, Lqo;-><init>(Lro;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-virtual {p0}, Lro;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lro;->o:Lto;

    iget-object v0, v0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 2
    :cond_1
    iget-object v0, p0, Lro;->n:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lro$a;

    invoke-direct {v1, p0}, Lro$a;-><init>(Lro;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lro;->v:Lko;

    iput-object v0, p0, Lro;->w:Lko;

    .line 2
    invoke-virtual {p0}, Lro;->d()V

    .line 3
    iget-object v0, p0, Lro;->o:Lto;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4
    invoke-virtual {p0}, Lro;->b()V

    .line 5
    iget-object v0, p0, Lro;->p:Lro$c;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lro;->q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final d()V
    .locals 11

    .line 1
    iget-object v0, p0, Lro;->w:Lko;

    .line 2
    iget-object v0, v0, Lko;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llo;

    .line 5
    invoke-virtual {v1}, Llo;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lro;->p:Lro$c;

    .line 7
    iget-boolean v0, v0, Lro$c;->e:Z

    if-nez v0, :cond_8

    .line 8
    iget-object v0, p0, Lro;->w:Lko;

    invoke-virtual {v0}, Lko;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 9
    iget-object v0, p0, Lro;->w:Lko;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lko;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 11
    :goto_1
    iget-object v4, p0, Lro;->w:Lko;

    invoke-virtual {v4}, Lko;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 12
    iget-object v4, p0, Lro;->w:Lko;

    invoke-virtual {v4, v3}, Lko;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    if-eq v4, v0, :cond_2

    .line 13
    iget-object v0, p0, Lro;->w:Lko;

    invoke-virtual {v0, v3}, Lko;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 14
    new-instance v4, Lto$b;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lto$b;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 16
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lto$b;

    .line 17
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lro;->o:Lto;

    .line 19
    iput-object v0, v2, Lto;->j:[Lto$b;

    .line 20
    iget-object v0, v2, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 21
    invoke-virtual {v2}, Lto;->a()I

    .line 22
    iget-object v0, v2, Lto;->j:[Lto$b;

    new-instance v3, Luo;

    invoke-direct {v3, v2}, Luo;-><init>(Lto;)V

    invoke-static {v0, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 23
    :goto_2
    iget-object v4, v2, Lto;->j:[Lto$b;

    array-length v5, v4

    if-ge v0, v5, :cond_6

    .line 24
    aget-object v4, v4, v0

    const/4 v5, 0x0

    .line 25
    :goto_3
    iget v6, v2, Lto;->n:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    .line 26
    new-instance v6, Lto$b;

    iget v7, v4, Lto$b;->a:I

    iget-object v8, v4, Lto$b;->c:Ljava/lang/CharSequence;

    invoke-direct {v6, v7, v8}, Lto$b;-><init>(ILjava/lang/CharSequence;)V

    const/4 v8, 0x2

    .line 27
    iput v8, v6, Lto$b;->d:I

    add-int/2addr v7, v3

    .line 28
    iput v7, v6, Lto$b;->b:I

    .line 29
    iget-object v8, v2, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 30
    :cond_4
    new-instance v5, Lto$b;

    iget v6, v4, Lto$b;->a:I

    iget-object v8, v4, Lto$b;->c:Ljava/lang/CharSequence;

    invoke-direct {v5, v6, v8}, Lto$b;-><init>(ILjava/lang/CharSequence;)V

    .line 31
    iput v7, v5, Lto$b;->d:I

    add-int/2addr v6, v3

    .line 32
    iput v6, v5, Lto$b;->b:I

    .line 33
    iget-object v8, v2, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v8, v6, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 34
    iget-object v5, v2, Lto;->j:[Lto$b;

    array-length v6, v5

    sub-int/2addr v6, v7

    if-ge v0, v6, :cond_5

    add-int/lit8 v6, v0, 0x1

    .line 35
    aget-object v5, v5, v6

    iget v5, v5, Lto$b;->a:I

    .line 36
    iget v6, v4, Lto$b;->a:I

    sub-int v6, v5, v6

    .line 37
    iget v7, v2, Lto;->n:I

    rem-int/2addr v6, v7

    sub-int v6, v7, v6

    if-eq v7, v6, :cond_5

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_5

    .line 38
    new-instance v8, Lto$b;

    iget v9, v4, Lto$b;->a:I

    iget-object v10, v4, Lto$b;->c:Ljava/lang/CharSequence;

    invoke-direct {v8, v9, v10}, Lto$b;-><init>(ILjava/lang/CharSequence;)V

    .line 39
    iput v1, v8, Lto$b;->d:I

    add-int v9, v5, v3

    .line 40
    iput v9, v8, Lto$b;->b:I

    .line 41
    iget-object v10, v2, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v10, v9, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 42
    :cond_6
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 43
    :cond_7
    iget-object v0, p0, Lro;->o:Lto;

    iget-object v0, v0, Lto;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_8
    :goto_5
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    iget-boolean v0, p0, Lro;->s:Z

    .line 4
    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    iput-boolean v0, p0, Lro;->s:Z

    .line 6
    sget v0, Lcom/cocosw/bottomsheet/R$layout;->bottom_sheet_dialog:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;

    .line 7
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bs_main:I

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 8
    iget v2, p0, Lro;->j:I

    invoke-static {p1, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 9
    invoke-virtual {p0, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10
    iget-boolean v0, p0, Lro;->t:Z

    if-nez v0, :cond_0

    .line 11
    iput-boolean v0, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->g:Z

    .line 12
    :cond_0
    new-instance v0, Lmo;

    invoke-direct {v0, p0}, Lmo;-><init>(Lro;)V

    .line 13
    iput-object v0, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->i:Lcom/cocosw/bottomsheet/ClosableSlidingLayout$b;

    .line 14
    new-instance v0, Lno;

    invoke-direct {v0, p0}, Lno;-><init>(Lro;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 15
    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 16
    aget v0, v0, v8

    if-nez v0, :cond_1

    iget-object v0, p0, Lro;->f:Lvo;

    iget v0, v0, Lvo;->c:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v7, v8, v0, v8, v8}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 17
    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lro;->f:Lvo;

    iget-boolean v2, v1, Lvo;->b:Z

    const/4 v9, 0x1

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 19
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "config_showNavigationBar"

    const-string v10, "bool"

    .line 20
    invoke-virtual {v4, v6, v10, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_3

    .line 21
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 22
    iget-object v4, v1, Lvo;->e:Ljava/lang/String;

    const-string v6, "1"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 23
    :cond_2
    iget-object v4, v1, Lvo;->e:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    .line 24
    :cond_3
    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    xor-int/2addr v2, v9

    :cond_4
    :goto_1
    if-eqz v2, :cond_9

    .line 25
    iget-boolean v2, v1, Lvo;->d:Z

    if-eqz v2, :cond_5

    const-string v1, "navigation_bar_height"

    goto :goto_4

    .line 26
    :cond_5
    iget v1, v1, Lvo;->f:F

    const/high16 v4, 0x44160000    # 600.0f

    cmpl-float v1, v1, v4

    if-gez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    const/4 v1, 0x1

    :goto_3
    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    const-string v1, "navigation_bar_height_landscape"

    :goto_4
    const-string v2, "dimen"

    .line 27
    invoke-virtual {v3, v1, v2, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 28
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v1, 0x0

    .line 29
    :goto_6
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v0, v8, v8, v8, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_title:I

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 31
    iget-object v1, p0, Lro;->p:Lro$c;

    .line 32
    iget-object v1, v1, Lro$c;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    .line 33
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object v1, p0, Lro;->p:Lro$c;

    .line 35
    iget-object v1, v1, Lro$c;->d:Ljava/lang/CharSequence;

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_b
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_title_image:I

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lro;->q:Landroid/widget/ImageView;

    .line 38
    sget v0, Lcom/cocosw/bottomsheet/R$id;->bottom_sheet_gridview:I

    invoke-virtual {v7, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lro;->n:Landroid/widget/GridView;

    .line 39
    iput-object v0, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->f:Landroid/view/View;

    .line 40
    iget-object v1, p0, Lro;->p:Lro$c;

    .line 41
    iget-boolean v1, v1, Lro$c;->e:Z

    if-nez v1, :cond_c

    .line 42
    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 43
    :cond_c
    iget-object v0, p0, Lro;->p:Lro$c;

    .line 44
    iget-boolean v0, v0, Lro$c;->e:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 45
    :goto_8
    iget-object v1, p0, Lro;->p:Lro$c;

    .line 46
    iget-object v1, v1, Lro$c;->b:Lko;

    .line 47
    invoke-virtual {v1}, Lko;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    .line 48
    iget-object v1, p0, Lro;->p:Lro$c;

    .line 49
    iget-object v1, v1, Lro$c;->b:Lko;

    .line 50
    invoke-virtual {v1, v0}, Lko;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 51
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must set icon for each items in grid style"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_e
    iget-object v0, p0, Lro;->p:Lro$c;

    .line 53
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7fffffff

    .line 54
    iput v0, p0, Lro;->r:I

    .line 55
    iput-boolean v8, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->o:Z

    .line 56
    iget-object v0, p0, Lro;->p:Lro$c;

    .line 57
    iget-object v0, v0, Lro$c;->b:Lko;

    .line 58
    iput-object v0, p0, Lro;->w:Lko;

    .line 59
    iput-object v0, p0, Lro;->v:Lko;

    .line 60
    invoke-virtual {v0}, Lko;->size()I

    move-result v0

    iget v1, p0, Lro;->r:I

    const/4 v10, -0x1

    if-le v0, v1, :cond_f

    .line 61
    iget-object v0, p0, Lro;->p:Lro$c;

    .line 62
    iget-object v0, v0, Lro$c;->b:Lko;

    .line 63
    iput-object v0, p0, Lro;->u:Lko;

    sub-int/2addr v1, v9

    .line 64
    new-instance v2, Lko;

    .line 65
    iget-object v3, v0, Lko;->a:Landroid/content/Context;

    .line 66
    invoke-direct {v2, v3}, Lko;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v11, Ljava/util/ArrayList;

    iget-object v0, v0, Lko;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v2, Lko;->c:Ljava/util/ArrayList;

    .line 68
    iput-object v2, p0, Lro;->v:Lko;

    .line 69
    new-instance v12, Llo;

    const/4 v2, 0x0

    sget v3, Lcom/cocosw/bottomsheet/R$id;->bs_more:I

    const/4 v4, 0x0

    iget v0, p0, Lro;->r:I

    add-int/lit8 v13, v0, -0x1

    iget-object v6, p0, Lro;->g:Ljava/lang/String;

    move-object v0, v12

    move-object v1, p1

    move v5, v13

    invoke-direct/range {v0 .. v6}, Llo;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lro;->i:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object v0, v12, Llo;->i:Landroid/graphics/drawable/Drawable;

    .line 72
    invoke-static {v13}, Lko;->d(I)I

    move-result v0

    invoke-static {v11, v0}, Lko;->a(Ljava/util/ArrayList;I)I

    move-result v0

    invoke-virtual {v11, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lro;->v:Lko;

    iput-object v0, p0, Lro;->w:Lko;

    .line 74
    iput-boolean v9, v7, Lcom/cocosw/bottomsheet/ClosableSlidingLayout;->o:Z

    .line 75
    :cond_f
    new-instance v2, Loo;

    invoke-direct {v2, p0}, Loo;-><init>(Lro;)V

    .line 76
    new-instance v6, Lto;

    sget v3, Lcom/cocosw/bottomsheet/R$layout;->bs_list_divider:I

    sget v4, Lcom/cocosw/bottomsheet/R$id;->headerlayout:I

    sget v5, Lcom/cocosw/bottomsheet/R$id;->header:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lto;-><init>(Landroid/content/Context;Landroid/widget/BaseAdapter;III)V

    iput-object v6, p0, Lro;->o:Lto;

    .line 77
    iget-object p1, p0, Lro;->n:Landroid/widget/GridView;

    invoke-virtual {p1, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget-object p1, p0, Lro;->o:Lto;

    iget-object v0, p0, Lro;->n:Landroid/widget/GridView;

    .line 79
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    instance-of v1, v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    if-eqz v1, :cond_10

    .line 81
    iput-object v0, p1, Lto;->u:Landroid/widget/GridView;

    .line 82
    invoke-virtual {v0}, Landroid/widget/GridView;->getStretchMode()I

    move-result v1

    iput v1, p1, Lto;->r:I

    .line 83
    invoke-virtual {v0}, Landroid/widget/GridView;->getWidth()I

    move-result v1

    iget-object v2, p1, Lto;->u:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    iget-object v3, p1, Lto;->u:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v2

    sub-int/2addr v1, v3

    iput v1, p1, Lto;->o:I

    .line 84
    check-cast v0, Lcom/cocosw/bottomsheet/PinnedSectionGridView;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getNumColumns()I

    move-result v1

    iput v1, p1, Lto;->n:I

    .line 85
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getColumnWidth()I

    move-result v1

    iput v1, p1, Lto;->s:I

    .line 86
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/PinnedSectionGridView;->getHorizontalSpacing()I

    move-result v0

    iput v0, p1, Lto;->t:I

    .line 87
    iget-object p1, p0, Lro;->n:Landroid/widget/GridView;

    new-instance v0, Lpo;

    invoke-direct {v0, p0, v7}, Lpo;-><init>(Lro;Lcom/cocosw/bottomsheet/ClosableSlidingLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 88
    iget-object p1, p0, Lro;->p:Lro$c;

    .line 89
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p0}, Lro;->b()V

    .line 91
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 92
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x50

    .line 93
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    new-array v1, v9, [I

    const v2, 0x10100f4

    aput v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 95
    :try_start_0
    invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    new-instance v0, Lro$b;

    invoke-direct {v0, p0}, Lro$b;-><init>(Lro;)V

    invoke-super {p0, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 98
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :catchall_0
    move-exception p1

    .line 99
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    throw p1

    .line 101
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Does your grid view extends PinnedSectionGridView?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 2
    invoke-virtual {p0}, Lro;->c()V

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    iput-boolean p1, p0, Lro;->s:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lro;->x:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lro;->y:Landroid/content/DialogInterface$OnShowListener;

    return-void
.end method
