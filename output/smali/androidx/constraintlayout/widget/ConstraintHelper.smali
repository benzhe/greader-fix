.class public abstract Landroidx/constraintlayout/widget/ConstraintHelper;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field public e:[I

.field public f:I

.field public g:Landroid/content/Context;

.field public h:Lg6;

.field public i:Ljava/lang/String;

.field public j:[Landroid/view/View;

.field public k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[Landroid/view/View;

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->k:Ljava/util/HashMap;

    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Landroid/content/Context;

    .line 6
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->k(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 8
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[Landroid/view/View;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->k:Ljava/util/HashMap;

    .line 11
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->k(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x20

    new-array p3, p3, [I

    .line 14
    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    const/4 p3, 0x0

    .line 15
    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[Landroid/view/View;

    .line 16
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->k:Ljava/util/HashMap;

    .line 17
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Landroid/content/Context;

    .line 18
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;->k(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->i(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->f(I)V

    goto :goto_0

    .line 9
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find id of \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ConstraintHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public final f(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    array-length v2, v1

    if-le v0, v2, :cond_1

    .line 3
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    .line 4
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 5
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v2

    const/4 v3, 0x0

    .line 6
    :goto_0
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    if-ge v3, v4, :cond_1

    .line 7
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    aget v4, v4, v3

    .line 8
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    cmpl-float v5, v2, v5

    if-lez v5, :cond_0

    .line 10
    invoke-virtual {v4}, Landroid/view/View;->getTranslationZ()F

    move-result v5

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Landroid/view/View;->setTranslationZ(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getReferencedIds()[I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public final h(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 1
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 3
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v5, 0x0

    .line 5
    :try_start_0
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 6
    :goto_1
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result p1

    return p1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method public final i(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->d(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 6
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p0, v0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->h(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v3

    :cond_2
    if-nez v3, :cond_3

    .line 8
    :try_start_0
    const-class v0, Landroidx/constraintlayout/widget/R$id;

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    :cond_3
    :goto_1
    if-nez v3, :cond_4

    .line 11
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->g:Landroid/content/Context;

    .line 12
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    .line 13
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    :cond_4
    return v3
.end method

.method public j(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[Landroid/view/View;

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    if-eq v0, v1, :cond_1

    .line 2
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[Landroid/view/View;

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    if-ge v0, v1, :cond_2

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    aget v1, v1, v0

    .line 5
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[Landroid/view/View;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->j:[Landroid/view/View;

    return-object p1
.end method

.method public k(Landroid/util/AttributeSet;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraint_referenced_ids:I

    if-ne v2, v3, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->i:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(La7$a;Lh6;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La7$a;",
            "Lh6;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Lc6;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p3, p1, La7$a;->d:La7$b;

    iget-object v0, p3, La7$b;->e0:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setReferencedIds([I)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object p3, p3, La7$b;->f0:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 4
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_4

    .line 5
    iget-object p3, p1, La7$a;->d:La7$b;

    iget-object v0, p3, La7$b;->f0:Ljava/lang/String;

    const-string v2, ","

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    array-length v2, v0

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_2

    .line 10
    aget-object v5, v0, v3

    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/widget/ConstraintHelper;->i(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v6, v4, 0x1

    .line 13
    aput v5, v2, v4

    move v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_2
    array-length v0, v0

    if-eq v4, v0, :cond_3

    .line 15
    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 16
    :cond_3
    iput-object v2, p3, La7$b;->e0:[I

    .line 17
    :cond_4
    :goto_1
    invoke-virtual {p2}, Lh6;->b()V

    .line 18
    iget-object p3, p1, La7$a;->d:La7$b;

    iget-object p3, p3, La7$b;->e0:[I

    if-eqz p3, :cond_6

    .line 19
    :goto_2
    iget-object p3, p1, La7$a;->d:La7$b;

    iget-object p3, p3, La7$b;->e0:[I

    array-length v0, p3

    if-ge v1, v0, :cond_6

    .line 20
    aget p3, p3, v1

    .line 21
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc6;

    if-eqz p3, :cond_5

    .line 22
    invoke-virtual {p2, p3}, Lh6;->a(Lc6;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void
.end method

.method public m(Lc6;Z)V
    .locals 0

    return-void
.end method

.method public n(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public p(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    return-void
.end method

.method public q(Lg6;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld6;",
            "Lg6;",
            "Landroid/util/SparseArray<",
            "Lc6;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lg6;->b()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    aget v1, v1, v0

    .line 4
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    invoke-interface {p1, v1}, Lg6;->a(Lc6;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Lg6;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Lg6;

    check-cast v1, Lc6;

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    :cond_1
    return-void
.end method

.method public setIds(Ljava/lang/String;)V
    .locals 3

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->i:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    :goto_0
    const/16 v1, 0x2c

    .line 3
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->e(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    goto :goto_0
.end method

.method public setReferencedIds([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->i:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    .line 3
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 4
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->f(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
