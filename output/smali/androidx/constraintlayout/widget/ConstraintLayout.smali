.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$a;,
        Landroidx/constraintlayout/widget/ConstraintLayout$b;
    }
.end annotation


# instance fields
.field public e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ld6;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:I

.field public n:La7;

.field public o:Lz6;

.field public p:I

.field public q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public r:I

.field public s:I

.field public t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc6;",
            ">;"
        }
    .end annotation
.end field

.field public u:Landroidx/constraintlayout/widget/ConstraintLayout$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ld6;

    invoke-direct {p1}, Ld6;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 6
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    const/16 v0, 0x107

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    .line 12
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lz6;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 15
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 16
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 17
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroid/util/SparseArray;

    .line 18
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 19
    invoke-virtual {p0, v0, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 23
    new-instance p1, Ld6;

    invoke-direct {p1}, Ld6;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 27
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    const/16 v0, 0x107

    .line 29
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    .line 31
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lz6;

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 33
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 34
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 35
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 36
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroid/util/SparseArray;

    .line 37
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 38
    invoke-virtual {p0, p2, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 42
    new-instance p1, Ld6;

    invoke-direct {p1}, Ld6;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    const/4 p1, 0x0

    .line 43
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 44
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const v0, 0x7fffffff

    .line 45
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 46
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    const/16 v0, 0x107

    .line 48
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    .line 50
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lz6;

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 53
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 54
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroid/util/SparseArray;

    .line 56
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$b;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 57
    invoke-virtual {p0, p2, p3, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->g(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v1, v0

    if-lez v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b(ZLandroid/view/View;Lc6;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Lc6;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Lc6;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    .line 1
    sget-object v5, Lc6$a;->h:Lc6$a;

    sget-object v6, Lc6$a;->f:Lc6$a;

    sget-object v7, Lc6$a;->e:Lc6$a;

    sget-object v8, Lc6$a;->g:Lc6$a;

    sget-object v9, Lb6$a;->h:Lb6$a;

    sget-object v10, Lb6$a;->f:Lb6$a;

    sget-object v11, Lb6$a;->i:Lb6$a;

    sget-object v12, Lb6$a;->g:Lb6$a;

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    .line 2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v13

    .line 3
    iput v13, v2, Lc6;->e0:I

    .line 4
    iget-boolean v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    .line 5
    iput-boolean v14, v2, Lc6;->z:Z

    const/16 v13, 0x8

    .line 6
    iput v13, v2, Lc6;->e0:I

    .line 7
    :cond_0
    iput-object v1, v2, Lc6;->c0:Ljava/lang/Object;

    .line 8
    instance-of v13, v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v13, :cond_1

    .line 9
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 10
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    .line 11
    iget-boolean v13, v13, Ld6;->G0:Z

    .line 12
    invoke-virtual {v1, v2, v13}, Landroidx/constraintlayout/widget/ConstraintHelper;->m(Lc6;Z)V

    .line 13
    :cond_1
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    const/4 v13, -0x1

    if-eqz v1, :cond_4

    .line 14
    move-object v1, v2

    check-cast v1, Lf6;

    .line 15
    iget v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i0:I

    .line 16
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j0:I

    .line 17
    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k0:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_2

    if-lez v6, :cond_28

    .line 18
    iput v3, v1, Lf6;->C0:F

    .line 19
    iput v13, v1, Lf6;->D0:I

    .line 20
    iput v13, v1, Lf6;->E0:I

    goto/16 :goto_f

    :cond_2
    if-eq v2, v13, :cond_3

    if-le v2, v13, :cond_28

    .line 21
    iput v5, v1, Lf6;->C0:F

    .line 22
    iput v2, v1, Lf6;->D0:I

    .line 23
    iput v13, v1, Lf6;->E0:I

    goto/16 :goto_f

    :cond_3
    if-eq v4, v13, :cond_28

    if-le v4, v13, :cond_28

    .line 24
    iput v5, v1, Lf6;->C0:F

    .line 25
    iput v13, v1, Lf6;->D0:I

    .line 26
    iput v4, v1, Lf6;->E0:I

    goto/16 :goto_f

    .line 27
    :cond_4
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b0:I

    .line 28
    iget v15, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c0:I

    .line 29
    iget v14, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d0:I

    .line 30
    iget v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e0:I

    move-object/from16 v16, v6

    .line 31
    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f0:I

    move-object/from16 v17, v7

    .line 32
    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g0:I

    move-object/from16 v18, v5

    .line 33
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h0:F

    move-object/from16 v19, v8

    .line 34
    iget v8, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    move/from16 v20, v5

    const/4 v5, -0x1

    if-eq v8, v5, :cond_5

    .line 35
    invoke-virtual {v4, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    if-eqz v1, :cond_11

    .line 36
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    .line 37
    sget-object v6, Lb6$a;->k:Lb6$a;

    .line 38
    invoke-virtual {v2, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v7

    .line 39
    invoke-virtual {v1, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 40
    invoke-virtual {v7, v1, v5, v6, v8}, Lb6;->b(Lb6;IIZ)Z

    .line 41
    iput v4, v2, Lc6;->x:F

    goto/16 :goto_4

    :cond_5
    const/4 v8, 0x1

    if-eq v1, v5, :cond_6

    .line 42
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    if-eqz v1, :cond_7

    .line 43
    iget v15, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 44
    invoke-virtual {v2, v10}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v5

    .line 45
    invoke-virtual {v1, v10}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    .line 46
    invoke-virtual {v5, v1, v15, v6, v8}, Lb6;->b(Lb6;IIZ)Z

    goto :goto_0

    :cond_6
    const/4 v1, -0x1

    if-eq v15, v1, :cond_8

    .line 47
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    if-eqz v1, :cond_7

    .line 48
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 49
    invoke-virtual {v2, v10}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v15

    .line 50
    invoke-virtual {v1, v9}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    .line 51
    invoke-virtual {v15, v1, v5, v6, v8}, Lb6;->b(Lb6;IIZ)Z

    :cond_7
    :goto_0
    const/4 v1, -0x1

    :cond_8
    if-eq v14, v1, :cond_9

    .line 52
    invoke-virtual {v4, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc6;

    if-eqz v5, :cond_a

    .line 53
    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 54
    invoke-virtual {v2, v9}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v8

    .line 55
    invoke-virtual {v5, v10}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v5

    const/4 v14, 0x1

    .line 56
    invoke-virtual {v8, v5, v6, v7, v14}, Lb6;->b(Lb6;IIZ)Z

    goto :goto_1

    :cond_9
    const/4 v14, 0x1

    if-eq v13, v1, :cond_a

    .line 57
    invoke-virtual {v4, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    if-eqz v1, :cond_a

    .line 58
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 59
    invoke-virtual {v2, v9}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v6

    .line 60
    invoke-virtual {v1, v9}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    .line 61
    invoke-virtual {v6, v1, v5, v7, v14}, Lb6;->b(Lb6;IIZ)Z

    .line 62
    :cond_a
    :goto_1
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_b

    .line 63
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    if-eqz v1, :cond_c

    .line 64
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 65
    invoke-virtual {v2, v12}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v7

    .line 66
    invoke-virtual {v1, v12}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    const/4 v8, 0x1

    .line 67
    invoke-virtual {v7, v1, v5, v6, v8}, Lb6;->b(Lb6;IIZ)Z

    goto :goto_2

    .line 68
    :cond_b
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_c

    .line 69
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    if-eqz v1, :cond_c

    .line 70
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 71
    invoke-virtual {v2, v12}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v7

    .line 72
    invoke-virtual {v1, v11}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    const/4 v8, 0x1

    .line 73
    invoke-virtual {v7, v1, v5, v6, v8}, Lb6;->b(Lb6;IIZ)Z

    .line 74
    :cond_c
    :goto_2
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_d

    .line 75
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    if-eqz v1, :cond_e

    .line 76
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 77
    invoke-virtual {v2, v11}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v7

    .line 78
    invoke-virtual {v1, v12}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    const/4 v8, 0x1

    .line 79
    invoke-virtual {v7, v1, v5, v6, v8}, Lb6;->b(Lb6;IIZ)Z

    goto :goto_3

    .line 80
    :cond_d
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_e

    .line 81
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc6;

    if-eqz v1, :cond_e

    .line 82
    iget v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v6, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 83
    invoke-virtual {v2, v11}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v7

    .line 84
    invoke-virtual {v1, v11}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    const/4 v8, 0x1

    .line 85
    invoke-virtual {v7, v1, v5, v6, v8}, Lb6;->b(Lb6;IIZ)Z

    .line 86
    :cond_e
    :goto_3
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_f

    .line 87
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 88
    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc6;

    if-eqz v4, :cond_f

    if-eqz v1, :cond_f

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v5, :cond_f

    .line 90
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v5, 0x1

    .line 91
    iput-boolean v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    .line 92
    iput-boolean v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->X:Z

    .line 93
    sget-object v6, Lb6$a;->j:Lb6$a;

    invoke-virtual {v2, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v7

    .line 94
    invoke-virtual {v4, v6}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 95
    invoke-virtual {v7, v4, v6, v8, v5}, Lb6;->b(Lb6;IIZ)Z

    .line 96
    iput-boolean v5, v2, Lc6;->y:Z

    .line 97
    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    .line 98
    iput-boolean v5, v1, Lc6;->y:Z

    .line 99
    invoke-virtual {v2, v12}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    invoke-virtual {v1}, Lb6;->h()V

    .line 100
    invoke-virtual {v2, v11}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    invoke-virtual {v1}, Lb6;->h()V

    :cond_f
    const/4 v1, 0x0

    cmpl-float v4, v20, v1

    if-ltz v4, :cond_10

    move/from16 v4, v20

    .line 101
    iput v4, v2, Lc6;->a0:F

    .line 102
    :cond_10
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    cmpl-float v5, v4, v1

    if-ltz v5, :cond_11

    .line 103
    iput v4, v2, Lc6;->b0:F

    :cond_11
    :goto_4
    if-eqz p1, :cond_13

    .line 104
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_12

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    if-eq v5, v4, :cond_13

    .line 105
    :cond_12
    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    .line 106
    iput v1, v2, Lc6;->R:I

    .line 107
    iput v4, v2, Lc6;->S:I

    .line 108
    :cond_13
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Z

    const/4 v4, -0x2

    if-nez v1, :cond_16

    .line 109
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_15

    .line 110
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:Z

    if-eqz v1, :cond_14

    .line 111
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    const/4 v5, 0x0

    aput-object v19, v1, v5

    goto :goto_5

    :cond_14
    const/4 v5, 0x0

    .line 112
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    aput-object v18, v1, v5

    .line 113
    :goto_5
    invoke-virtual {v2, v10}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v6, v1, Lb6;->e:I

    .line 114
    invoke-virtual {v2, v9}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v6, v1, Lb6;->e:I

    goto :goto_6

    :cond_15
    const/4 v5, 0x0

    .line 115
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    aput-object v19, v1, v5

    .line 116
    invoke-virtual {v2, v5}, Lc6;->I(I)V

    goto :goto_6

    :cond_16
    const/4 v5, 0x0

    .line 117
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    aput-object v17, v1, v5

    .line 118
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v2, v1}, Lc6;->I(I)V

    .line 119
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v1, v4, :cond_17

    .line 120
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    aput-object v16, v1, v5

    .line 121
    :cond_17
    :goto_6
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:Z

    if-nez v1, :cond_1a

    .line 122
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, -0x1

    if-ne v1, v5, :cond_19

    .line 123
    iget-boolean v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    if-eqz v1, :cond_18

    .line 124
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    const/4 v6, 0x1

    aput-object v19, v1, v6

    goto :goto_7

    :cond_18
    const/4 v6, 0x1

    .line 125
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    aput-object v18, v1, v6

    .line 126
    :goto_7
    invoke-virtual {v2, v12}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, v1, Lb6;->e:I

    .line 127
    invoke-virtual {v2, v11}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v1

    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v4, v1, Lb6;->e:I

    goto :goto_8

    :cond_19
    const/4 v6, 0x1

    .line 128
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    aput-object v19, v1, v6

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v2, v1}, Lc6;->D(I)V

    goto :goto_8

    :cond_1a
    const/4 v5, -0x1

    const/4 v6, 0x1

    .line 130
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    aput-object v17, v1, v6

    .line 131
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v2, v1}, Lc6;->D(I)V

    .line 132
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v1, v4, :cond_1b

    .line 133
    iget-object v1, v2, Lc6;->L:[Lc6$a;

    aput-object v16, v1, v6

    .line 134
    :cond_1b
    :goto_8
    iget-object v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    if-eqz v1, :cond_23

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1c

    goto/16 :goto_c

    .line 136
    :cond_1c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v6, 0x2c

    .line 137
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_1f

    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_1f

    const/4 v7, 0x0

    .line 138
    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v7, "W"

    .line 139
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d

    const/4 v7, 0x1

    const/4 v13, 0x0

    goto :goto_9

    :cond_1d
    const-string v7, "H"

    .line 140
    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const/4 v7, 0x1

    const/4 v13, 0x1

    goto :goto_9

    :cond_1e
    const/4 v7, 0x1

    const/4 v13, -0x1

    :goto_9
    add-int/2addr v6, v7

    goto :goto_a

    :cond_1f
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v13, -0x1

    :goto_a
    const/16 v5, 0x3a

    .line 141
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_21

    sub-int/2addr v4, v7

    if-ge v5, v4, :cond_21

    .line 142
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v5, v7

    .line 143
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_22

    .line 145
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 146
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-lez v6, :cond_22

    cmpl-float v6, v1, v5

    if-lez v6, :cond_22

    const/4 v5, 0x1

    if-ne v13, v5, :cond_20

    div-float/2addr v1, v4

    .line 147
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    goto :goto_b

    :cond_20
    div-float/2addr v4, v1

    .line 148
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 149
    :cond_21
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_22

    .line 151
    :try_start_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    :cond_22
    const/4 v1, 0x0

    :goto_b
    const/4 v4, 0x0

    cmpl-float v5, v1, v4

    if-lez v5, :cond_24

    .line 152
    iput v1, v2, Lc6;->P:F

    .line 153
    iput v13, v2, Lc6;->Q:I

    goto :goto_d

    :cond_23
    :goto_c
    const/4 v4, 0x0

    .line 154
    iput v4, v2, Lc6;->P:F

    .line 155
    :cond_24
    :goto_d
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->D:F

    .line 156
    iget-object v4, v2, Lc6;->x0:[F

    const/4 v6, 0x0

    aput v1, v4, v6

    .line 157
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    const/4 v5, 0x1

    .line 158
    aput v1, v4, v5

    .line 159
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:I

    .line 160
    iput v1, v2, Lc6;->t0:I

    .line 161
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    .line 162
    iput v1, v2, Lc6;->u0:I

    .line 163
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    iget v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iget v5, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:F

    .line 164
    iput v1, v2, Lc6;->j:I

    .line 165
    iput v4, v2, Lc6;->m:I

    const v4, 0x7fffffff

    if-ne v5, v4, :cond_25

    const/4 v5, 0x0

    .line 166
    :cond_25
    iput v5, v2, Lc6;->n:I

    .line 167
    iput v7, v2, Lc6;->o:F

    const/4 v5, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    cmpl-float v10, v7, v9

    if-lez v10, :cond_26

    cmpg-float v7, v7, v8

    if-gez v7, :cond_26

    if-nez v1, :cond_26

    .line 168
    iput v5, v2, Lc6;->j:I

    .line 169
    :cond_26
    iget v1, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iget v7, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iget v9, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iget v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    .line 170
    iput v1, v2, Lc6;->k:I

    .line 171
    iput v7, v2, Lc6;->p:I

    if-ne v9, v4, :cond_27

    goto :goto_e

    :cond_27
    move v6, v9

    .line 172
    :goto_e
    iput v6, v2, Lc6;->q:I

    .line 173
    iput v3, v2, Lc6;->r:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-lez v4, :cond_28

    cmpg-float v3, v3, v8

    if-gez v3, :cond_28

    if-nez v1, :cond_28

    .line 174
    iput v5, v2, Lc6;->k:I

    :cond_28
    :goto_f
    return-void
.end method

.method public c()Landroidx/constraintlayout/widget/ConstraintLayout$a;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    return-object v0
.end method

.method public checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    return p1
.end method

.method public d(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 2
    check-cast p2, Ljava/lang/String;

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 3
    iget-object v4, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 4
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->p(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    const/high16 v6, 0x44f00000    # 1920.0f

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v1, :cond_3

    .line 10
    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 11
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-ne v9, v10, :cond_1

    goto/16 :goto_2

    .line 12
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 13
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 14
    check-cast v8, Ljava/lang/String;

    const-string v9, ","

    .line 15
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 16
    array-length v9, v8

    const/4 v10, 0x4

    if-ne v9, v10, :cond_2

    .line 17
    aget-object v9, v8, v2

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    .line 18
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    .line 19
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    .line 20
    aget-object v8, v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v9, v9

    div-float/2addr v9, v5

    mul-float v9, v9, v3

    float-to-int v9, v9

    int-to-float v10, v10

    div-float/2addr v10, v6

    mul-float v10, v10, v4

    float-to-int v10, v10

    int-to-float v11, v11

    div-float/2addr v11, v5

    mul-float v11, v11, v3

    float-to-int v11, v11

    int-to-float v8, v8

    div-float/2addr v8, v6

    mul-float v8, v8, v4

    float-to-int v8, v8

    .line 21
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    const/high16 v12, -0x10000

    .line 22
    invoke-virtual {v15, v12}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v14, v9

    int-to-float v13, v10

    add-int/2addr v9, v11

    int-to-float v9, v9

    move-object/from16 v12, p1

    move v11, v13

    move v13, v14

    move/from16 v18, v14

    move v14, v11

    move-object/from16 v19, v15

    move v15, v9

    move/from16 v16, v11

    move-object/from16 v17, v19

    .line 23
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/2addr v10, v8

    int-to-float v8, v10

    move v13, v9

    move/from16 v16, v8

    .line 24
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v15, v18

    .line 25
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v13, v18

    move/from16 v16, v11

    .line 26
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const v10, -0xff0100

    move-object/from16 v15, v19

    .line 27
    invoke-virtual {v15, v10}, Landroid/graphics/Paint;->setColor(I)V

    move v14, v11

    move-object v10, v15

    move v15, v9

    move/from16 v16, v8

    move-object/from16 v17, v10

    .line 28
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v14, v8

    move/from16 v16, v11

    .line 29
    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public final f(Landroid/view/View;)Lc6;
    .locals 0

    if-ne p1, p0, :cond_0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    :goto_0
    return-object p1
.end method

.method public forceLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    return-void
.end method

.method public final g(Landroid/util/AttributeSet;II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    .line 2
    iput-object p0, v0, Lc6;->c0:Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    invoke-virtual {v0, v1}, Ld6;->Q(Lm6$b;)V

    .line 4
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    if-eqz p1, :cond_8

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_7

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 9
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v2, v3, :cond_0

    .line 10
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    goto :goto_2

    .line 11
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v2, v3, :cond_1

    .line 12
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    goto :goto_2

    .line 13
    :cond_1
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v2, v3, :cond_2

    .line 14
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    goto :goto_2

    .line 15
    :cond_2
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v2, v3, :cond_3

    .line 16
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    goto :goto_2

    .line 17
    :cond_3
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v2, v3, :cond_4

    .line 18
    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    goto :goto_2

    .line 19
    :cond_4
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    if-ne v2, v3, :cond_5

    .line 20
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_6

    .line 21
    :try_start_0
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->o(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 22
    :catch_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lz6;

    goto :goto_2

    .line 23
    :cond_5
    sget v3, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v2, v3, :cond_6

    .line 24
    invoke-virtual {p1, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 25
    :try_start_1
    new-instance v3, La7;

    invoke-direct {v3}, La7;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    .line 26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, La7;->h(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 27
    :catch_1
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    .line 28
    :goto_1
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    iget p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    invoke-virtual {p1, p2}, Ld6;->R(I)V

    return-void
.end method

.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->c()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 2
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    .line 2
    iget v0, v0, Ld6;->O0:I

    return v0
.end method

.method public n()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public o(I)V
    .locals 2

    .line 1
    new-instance v0, Lz6;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lz6;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lz6;

    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p1, :cond_3

    .line 3
    invoke-virtual {p0, p4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 4
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 5
    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    .line 6
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    if-nez v2, :cond_0

    iget-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    if-nez v2, :cond_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    iget-boolean v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1}, Lc6;->u()I

    move-result v0

    .line 9
    invoke-virtual {v1}, Lc6;->v()I

    move-result v2

    .line 10
    invoke-virtual {v1}, Lc6;->t()I

    move-result v3

    add-int/2addr v3, v0

    .line 11
    invoke-virtual {v1}, Lc6;->n()I

    move-result v1

    add-int/2addr v1, v2

    .line 12
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 13
    instance-of v4, p5, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v4, :cond_2

    .line 14
    check-cast p5, Landroidx/constraintlayout/widget/Placeholder;

    .line 15
    invoke-virtual {p5}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_2

    .line 16
    invoke-virtual {p5, p3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    invoke-virtual {p5, v0, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 18
    :cond_3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    :goto_2
    if-ge p3, p1, :cond_4

    .line 19
    iget-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 20
    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->n(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public onMeasure(II)V
    .locals 15

    move-object v7, p0

    .line 1
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->n()Z

    move-result v1

    .line 2
    iput-boolean v1, v0, Ld6;->G0:Z

    .line 3
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_1

    .line 6
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_18

    .line 8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v8

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_3

    .line 10
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 11
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Lc6;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 12
    :cond_2
    invoke-virtual {v2}, Lc6;->z()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, -0x1

    if-eqz v8, :cond_9

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v9, :cond_9

    .line 13
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v10

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v0, v5, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v10, 0x2f

    .line 16
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v1, :cond_4

    add-int/lit8 v10, v10, 0x1

    .line 17
    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 18
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-nez v4, :cond_5

    .line 19
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    goto :goto_5

    .line 20
    :cond_5
    iget-object v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    if-nez v10, :cond_6

    .line 21
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_6

    if-eq v10, v7, :cond_6

    .line 22
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-ne v4, v7, :cond_6

    .line 23
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    :cond_6
    if-ne v10, v7, :cond_7

    .line 24
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    goto :goto_5

    :cond_7
    if-nez v10, :cond_8

    const/4 v4, 0x0

    goto :goto_5

    .line 25
    :cond_8
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    .line 26
    :goto_5
    iput-object v5, v4, Lc6;->f0:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 27
    :cond_9
    iget v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    if-eq v2, v1, :cond_b

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v9, :cond_b

    .line 28
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 29
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    iget v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->p:I

    if-ne v5, v10, :cond_a

    instance-of v5, v4, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v5, :cond_a

    .line 30
    check-cast v4, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()La7;

    move-result-object v4

    iput-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 31
    :cond_b
    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    if-eqz v2, :cond_c

    .line 32
    invoke-virtual {v2, p0, v3}, La7;->c(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 33
    :cond_c
    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    .line 34
    iget-object v2, v2, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 35
    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v2, :cond_12

    .line 36
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 37
    invoke-virtual {v5}, Landroid/view/View;->isInEditMode()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 38
    iget-object v10, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->i:Ljava/lang/String;

    invoke-virtual {v5, v10}, Landroidx/constraintlayout/widget/ConstraintHelper;->setIds(Ljava/lang/String;)V

    .line 39
    :cond_d
    iget-object v10, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Lg6;

    if-nez v10, :cond_e

    goto :goto_9

    .line 40
    :cond_e
    invoke-interface {v10}, Lg6;->b()V

    const/4 v10, 0x0

    .line 41
    :goto_8
    iget v11, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->f:I

    if-ge v10, v11, :cond_11

    .line 42
    iget-object v11, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    aget v11, v11, v10

    .line 43
    invoke-virtual {p0, v11}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_f

    .line 44
    iget-object v13, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->k:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 45
    invoke-virtual {v5, p0, v11}, Landroidx/constraintlayout/widget/ConstraintHelper;->h(Landroidx/constraintlayout/widget/ConstraintLayout;Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_f

    .line 46
    iget-object v12, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->e:[I

    aput v13, v12, v10

    .line 47
    iget-object v12, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->k:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    invoke-virtual {p0, v13}, Landroidx/constraintlayout/widget/ConstraintLayout;->e(I)Landroid/view/View;

    move-result-object v12

    :cond_f
    if-eqz v12, :cond_10

    .line 49
    iget-object v11, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Lg6;

    invoke-virtual {p0, v12}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Lc6;

    move-result-object v12

    invoke-interface {v11, v12}, Lg6;->a(Lc6;)V

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 50
    :cond_11
    iget-object v5, v5, Landroidx/constraintlayout/widget/ConstraintHelper;->h:Lg6;

    iget-object v10, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    invoke-interface {v5, v10}, Lg6;->c(Ld6;)V

    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_12
    const/4 v2, 0x0

    :goto_a
    if-ge v2, v9, :cond_15

    .line 51
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 52
    instance-of v5, v4, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v5, :cond_14

    .line 53
    check-cast v4, Landroidx/constraintlayout/widget/Placeholder;

    .line 54
    iget v5, v4, Landroidx/constraintlayout/widget/Placeholder;->e:I

    if-ne v5, v1, :cond_13

    .line 55
    invoke-virtual {v4}, Landroid/view/View;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_13

    .line 56
    iget v5, v4, Landroidx/constraintlayout/widget/Placeholder;->g:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 57
    :cond_13
    iget v5, v4, Landroidx/constraintlayout/widget/Placeholder;->e:I

    invoke-virtual {p0, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v4, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    if-eqz v5, :cond_14

    .line 58
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 59
    iput-boolean v3, v5, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a0:Z

    .line 60
    iget-object v5, v4, Landroidx/constraintlayout/widget/Placeholder;->f:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 61
    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 62
    :cond_15
    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 63
    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroid/util/SparseArray;

    iget-object v2, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 64
    iget-object v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    iget-object v3, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v9, :cond_16

    .line 65
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 66
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Lc6;

    move-result-object v3

    .line 67
    iget-object v4, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_16
    const/4 v10, 0x0

    :goto_c
    if-ge v10, v9, :cond_18

    .line 68
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 69
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Lc6;

    move-result-object v3

    if-nez v3, :cond_17

    goto :goto_d

    .line 70
    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 71
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    invoke-virtual {v0, v3}, Lk6;->a(Lc6;)V

    .line 72
    iget-object v5, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->t:Landroid/util/SparseArray;

    move-object v0, p0

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->b(ZLandroid/view/View;Lc6;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    :goto_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    :cond_18
    if-eqz v6, :cond_19

    .line 73
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    invoke-virtual {v0}, Ld6;->S()V

    .line 74
    :cond_19
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    iget v1, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->q(Ld6;III)V

    .line 75
    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    invoke-virtual {v0}, Lc6;->t()I

    move-result v4

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    invoke-virtual {v0}, Lc6;->n()I

    move-result v5

    iget-object v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    .line 76
    iget-boolean v6, v0, Ld6;->P0:Z

    .line 77
    iget-boolean v8, v0, Ld6;->Q0:Z

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v8

    .line 78
    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->p(IIIIZZ)V

    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 2
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Lc6;

    move-result-object v0

    .line 3
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    instance-of v0, v0, Lf6;

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 6
    new-instance v1, Lf6;

    invoke-direct {v1}, Lf6;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l0:Lc6;

    .line 7
    iput-boolean v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Y:Z

    .line 8
    check-cast v1, Lf6;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    invoke-virtual {v1, v0}, Lf6;->L(I)V

    .line 9
    :cond_0
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v0, :cond_1

    .line 10
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 11
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->r()V

    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 13
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Z:Z

    .line 14
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->f(Landroid/view/View;)Lc6;

    move-result-object v0

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    .line 5
    iget-object v1, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    .line 6
    iput-object v1, v0, Lc6;->M:Lc6;

    .line 7
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    return-void
.end method

.method public p(IIIIZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 2
    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    add-int/2addr p3, v0

    add-int/2addr p4, v1

    const/4 v0, 0x0

    .line 3
    invoke-static {p3, p1, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p1

    .line 4
    invoke-static {p4, p2, v0}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result p2

    const p3, 0xffffff

    and-int/2addr p1, p3

    and-int/2addr p2, p3

    .line 5
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    iget p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/high16 p3, 0x1000000

    if-eqz p5, :cond_0

    or-int/2addr p1, p3

    :cond_0
    if-eqz p6, :cond_1

    or-int/2addr p2, p3

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    .line 8
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 9
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    return-void
.end method

.method public q(Ld6;III)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1
    sget-object v3, Lc6$a;->e:Lc6$a;

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 2
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 3
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 4
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v11, v8, v10

    .line 7
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v12

    .line 8
    iget-object v13, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 9
    iput v8, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->b:I

    .line 10
    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->c:I

    .line 11
    iput v12, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 12
    iput v11, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    move/from16 v10, p3

    .line 13
    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->f:I

    move/from16 v10, p4

    .line 14
    iput v10, v13, Landroidx/constraintlayout/widget/ConstraintLayout$b;->g:I

    .line 15
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 16
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v13

    invoke-static {v9, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-gtz v10, :cond_1

    if-lez v13, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->n()Z

    move-result v14

    if-eqz v14, :cond_2

    move v10, v13

    :cond_2
    :goto_1
    sub-int/2addr v5, v12

    sub-int/2addr v7, v11

    .line 19
    sget-object v11, Lc6$a;->f:Lc6$a;

    iget-object v12, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->u:Landroidx/constraintlayout/widget/ConstraintLayout$b;

    iget v13, v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;->e:I

    .line 20
    iget v12, v12, Landroidx/constraintlayout/widget/ConstraintLayout$b;->d:I

    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v14

    const/high16 v15, -0x80000000

    const/high16 v9, 0x40000000    # 2.0f

    if-eq v4, v15, :cond_6

    if-eqz v4, :cond_4

    if-eq v4, v9, :cond_3

    move-object v9, v3

    const/4 v15, 0x0

    goto :goto_2

    .line 22
    :cond_3
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    sub-int/2addr v9, v12

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v17, v3

    move v15, v9

    move-object/from16 v9, v17

    goto :goto_4

    :cond_4
    if-nez v14, :cond_5

    .line 23
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    const/4 v15, 0x0

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    move-object v9, v11

    :goto_2
    move-object/from16 v17, v3

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    if-nez v14, :cond_7

    .line 24
    iget v9, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_3

    :cond_7
    move v9, v5

    :goto_3
    move-object/from16 v17, v3

    move v15, v9

    move-object v9, v11

    :goto_4
    const/high16 v3, -0x80000000

    if-eq v6, v3, :cond_b

    if-eqz v6, :cond_9

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v6, v3, :cond_8

    move-object/from16 v3, v17

    const/4 v14, 0x0

    goto :goto_5

    .line 25
    :cond_8
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    sub-int/2addr v3, v13

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v14, v3

    move-object/from16 p4, v11

    move-object/from16 v3, v17

    goto :goto_7

    :cond_9
    if-nez v14, :cond_a

    .line 26
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    const/4 v14, 0x0

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    move-object/from16 p4, v11

    move-object/from16 v3, p4

    move/from16 v14, v16

    goto :goto_7

    :cond_a
    const/4 v14, 0x0

    move-object v3, v11

    :goto_5
    move-object/from16 p4, v11

    goto :goto_7

    :cond_b
    const/4 v3, 0x0

    if-nez v14, :cond_c

    .line 27
    iget v14, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    goto :goto_6

    :cond_c
    move v14, v7

    :goto_6
    move-object/from16 p4, v11

    move-object/from16 v3, p4

    .line 28
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lc6;->t()I

    move-result v11

    move/from16 v18, v7

    const/4 v7, 0x1

    if-ne v15, v11, :cond_d

    invoke-virtual/range {p1 .. p1}, Lc6;->n()I

    move-result v11

    if-eq v14, v11, :cond_e

    .line 29
    :cond_d
    iget-object v11, v1, Ld6;->E0:Lp6;

    .line 30
    iput-boolean v7, v11, Lp6;->c:Z

    :cond_e
    const/4 v11, 0x0

    .line 31
    iput v11, v1, Lc6;->R:I

    .line 32
    iput v11, v1, Lc6;->S:I

    .line 33
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    sub-int/2addr v7, v12

    move/from16 v20, v5

    .line 34
    iget-object v5, v1, Lc6;->w:[I

    aput v7, v5, v11

    .line 35
    iget v7, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    sub-int/2addr v7, v13

    const/16 v19, 0x1

    .line 36
    aput v7, v5, v19

    .line 37
    invoke-virtual {v1, v11}, Lc6;->G(I)V

    .line 38
    invoke-virtual {v1, v11}, Lc6;->F(I)V

    .line 39
    iget-object v5, v1, Lc6;->L:[Lc6$a;

    aput-object v9, v5, v11

    .line 40
    invoke-virtual {v1, v15}, Lc6;->I(I)V

    .line 41
    iget-object v5, v1, Lc6;->L:[Lc6$a;

    aput-object v3, v5, v19

    .line 42
    invoke-virtual {v1, v14}, Lc6;->D(I)V

    .line 43
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    sub-int/2addr v3, v12

    invoke-virtual {v1, v3}, Lc6;->G(I)V

    .line 44
    iget v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    sub-int/2addr v3, v13

    invoke-virtual {v1, v3}, Lc6;->F(I)V

    .line 45
    iput v10, v1, Ld6;->I0:I

    .line 46
    iput v8, v1, Ld6;->J0:I

    .line 47
    iget-object v3, v1, Ld6;->D0:Lm6;

    .line 48
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v5, Lb6$a;->i:Lb6$a;

    sget-object v7, Lb6$a;->h:Lb6$a;

    sget-object v8, Lc6$a;->g:Lc6$a;

    iget-object v9, v1, Ld6;->F0:Lm6$b;

    .line 50
    iget-object v10, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 51
    invoke-virtual/range {p1 .. p1}, Lc6;->t()I

    move-result v11

    .line 52
    invoke-virtual/range {p1 .. p1}, Lc6;->n()I

    move-result v12

    const/16 v13, 0x80

    .line 53
    invoke-static {v2, v13}, Li6;->a(II)Z

    move-result v13

    if-nez v13, :cond_10

    const/16 v14, 0x40

    .line 54
    invoke-static {v2, v14}, Li6;->a(II)Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_8

    :cond_f
    const/4 v2, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    const/4 v2, 0x1

    :goto_9
    if-eqz v2, :cond_19

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v10, :cond_19

    .line 55
    iget-object v15, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc6;

    .line 56
    invoke-virtual {v15}, Lc6;->o()Lc6$a;

    move-result-object v0

    move/from16 p2, v2

    if-ne v0, v8, :cond_11

    const/4 v0, 0x1

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    .line 57
    :goto_b
    invoke-virtual {v15}, Lc6;->s()Lc6$a;

    move-result-object v2

    if-ne v2, v8, :cond_12

    const/4 v2, 0x1

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    :goto_c
    if-eqz v0, :cond_13

    if-eqz v2, :cond_13

    .line 58
    iget v0, v15, Lc6;->P:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_13

    const/4 v0, 0x1

    goto :goto_d

    :cond_13
    const/4 v0, 0x0

    .line 59
    :goto_d
    invoke-virtual {v15}, Lc6;->x()Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v0, :cond_14

    goto :goto_e

    .line 60
    :cond_14
    invoke-virtual {v15}, Lc6;->y()Z

    move-result v2

    if-eqz v2, :cond_15

    if-eqz v0, :cond_15

    goto :goto_e

    .line 61
    :cond_15
    instance-of v0, v15, Lj6;

    if-eqz v0, :cond_16

    goto :goto_e

    .line 62
    :cond_16
    invoke-virtual {v15}, Lc6;->x()Z

    move-result v0

    if-nez v0, :cond_18

    .line 63
    invoke-virtual {v15}, Lc6;->y()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_e

    :cond_17
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    goto :goto_a

    :cond_18
    :goto_e
    const/4 v0, 0x0

    goto :goto_f

    :cond_19
    move/from16 p2, v2

    move/from16 v0, p2

    :goto_f
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v4, v2, :cond_1a

    if-eq v6, v2, :cond_1b

    :cond_1a
    if-eqz v13, :cond_1c

    :cond_1b
    const/4 v2, 0x1

    goto :goto_10

    :cond_1c
    const/4 v2, 0x0

    :goto_10
    and-int/2addr v0, v2

    if-eqz v0, :cond_3b

    .line 64
    iget-object v0, v1, Lc6;->w:[I

    const/4 v14, 0x0

    aget v0, v0, v14

    move/from16 v14, v20

    .line 65
    invoke-static {v0, v14}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 66
    iget-object v14, v1, Lc6;->w:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move/from16 v15, v18

    .line 67
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v4, v15, :cond_1d

    .line 68
    invoke-virtual/range {p1 .. p1}, Lc6;->t()I

    move-result v2

    if-eq v2, v0, :cond_1d

    .line 69
    invoke-virtual {v1, v0}, Lc6;->I(I)V

    .line 70
    invoke-virtual/range {p1 .. p1}, Ld6;->P()V

    :cond_1d
    if-ne v6, v15, :cond_1e

    .line 71
    invoke-virtual/range {p1 .. p1}, Lc6;->n()I

    move-result v0

    if-eq v0, v14, :cond_1e

    .line 72
    invoke-virtual {v1, v14}, Lc6;->D(I)V

    .line 73
    invoke-virtual/range {p1 .. p1}, Ld6;->P()V

    :cond_1e
    if-ne v4, v15, :cond_34

    if-ne v6, v15, :cond_34

    .line 74
    iget-object v0, v1, Ld6;->E0:Lp6;

    .line 75
    sget-object v2, Lc6$a;->h:Lc6$a;

    const/4 v14, 0x1

    and-int/2addr v13, v14

    .line 76
    iget-boolean v14, v0, Lp6;->b:Z

    if-nez v14, :cond_20

    iget-boolean v14, v0, Lp6;->c:Z

    if-eqz v14, :cond_1f

    goto :goto_11

    :cond_1f
    const/4 v15, 0x0

    goto :goto_13

    .line 77
    :cond_20
    :goto_11
    iget-object v14, v0, Lp6;->a:Ld6;

    iget-object v14, v14, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_12
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_21

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc6;

    move-object/from16 v18, v14

    const/4 v14, 0x0

    .line 78
    iput-boolean v14, v15, Lc6;->a:Z

    .line 79
    iget-object v14, v15, Lc6;->d:Lu6;

    invoke-virtual {v14}, Lu6;->n()V

    .line 80
    iget-object v14, v15, Lc6;->e:Lw6;

    invoke-virtual {v14}, Lw6;->m()V

    move-object/from16 v14, v18

    goto :goto_12

    .line 81
    :cond_21
    iget-object v14, v0, Lp6;->a:Ld6;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lc6;->a:Z

    .line 82
    iget-object v14, v14, Lc6;->d:Lu6;

    invoke-virtual {v14}, Lu6;->n()V

    .line 83
    iget-object v14, v0, Lp6;->a:Ld6;

    iget-object v14, v14, Lc6;->e:Lw6;

    invoke-virtual {v14}, Lw6;->m()V

    .line 84
    iput-boolean v15, v0, Lp6;->c:Z

    .line 85
    :goto_13
    iget-object v14, v0, Lp6;->d:Ld6;

    invoke-virtual {v0, v14}, Lp6;->b(Ld6;)Z

    .line 86
    iget-object v14, v0, Lp6;->a:Ld6;

    .line 87
    iput v15, v14, Lc6;->R:I

    .line 88
    iput v15, v14, Lc6;->S:I

    .line 89
    invoke-virtual {v14, v15}, Lc6;->m(I)Lc6$a;

    move-result-object v14

    .line 90
    iget-object v15, v0, Lp6;->a:Ld6;

    move-object/from16 v18, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Lc6;->m(I)Lc6$a;

    move-result-object v15

    .line 91
    iget-boolean v5, v0, Lp6;->b:Z

    if-eqz v5, :cond_22

    .line 92
    invoke-virtual {v0}, Lp6;->c()V

    .line 93
    :cond_22
    iget-object v5, v0, Lp6;->a:Ld6;

    invoke-virtual {v5}, Lc6;->u()I

    move-result v5

    move-object/from16 v20, v7

    .line 94
    iget-object v7, v0, Lp6;->a:Ld6;

    invoke-virtual {v7}, Lc6;->v()I

    move-result v7

    move-object/from16 v21, v9

    .line 95
    iget-object v9, v0, Lp6;->a:Ld6;

    iget-object v9, v9, Lc6;->d:Lu6;

    iget-object v9, v9, Lx6;->h:Lq6;

    invoke-virtual {v9, v5}, Lq6;->c(I)V

    .line 96
    iget-object v9, v0, Lp6;->a:Ld6;

    iget-object v9, v9, Lc6;->e:Lw6;

    iget-object v9, v9, Lx6;->h:Lq6;

    invoke-virtual {v9, v7}, Lq6;->c(I)V

    .line 97
    invoke-virtual {v0}, Lp6;->g()V

    move-object/from16 v9, p4

    if-eq v14, v9, :cond_24

    if-ne v15, v9, :cond_23

    goto :goto_14

    :cond_23
    move-object/from16 v23, v3

    move/from16 p4, v11

    move/from16 v22, v12

    goto/16 :goto_17

    :cond_24
    :goto_14
    move/from16 p4, v13

    if-eqz v13, :cond_26

    .line 98
    iget-object v13, v0, Lp6;->e:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_25
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_26

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lx6;

    .line 99
    invoke-virtual/range {v22 .. v22}, Lx6;->k()Z

    move-result v22

    if-nez v22, :cond_25

    const/4 v13, 0x0

    goto :goto_15

    :cond_26
    move/from16 v13, p4

    :goto_15
    if-eqz v13, :cond_27

    if-ne v14, v9, :cond_27

    move/from16 p4, v11

    .line 100
    iget-object v11, v0, Lp6;->a:Ld6;

    move/from16 v22, v12

    .line 101
    iget-object v12, v11, Lc6;->L:[Lc6$a;

    move-object/from16 v23, v3

    const/4 v3, 0x0

    aput-object v17, v12, v3

    .line 102
    invoke-virtual {v0, v11, v3}, Lp6;->d(Ld6;I)I

    move-result v12

    invoke-virtual {v11, v12}, Lc6;->I(I)V

    .line 103
    iget-object v3, v0, Lp6;->a:Ld6;

    iget-object v11, v3, Lc6;->d:Lu6;

    iget-object v11, v11, Lx6;->e:Lr6;

    invoke-virtual {v3}, Lc6;->t()I

    move-result v3

    invoke-virtual {v11, v3}, Lr6;->c(I)V

    goto :goto_16

    :cond_27
    move-object/from16 v23, v3

    move/from16 p4, v11

    move/from16 v22, v12

    :goto_16
    if-eqz v13, :cond_28

    if-ne v15, v9, :cond_28

    .line 104
    iget-object v3, v0, Lp6;->a:Ld6;

    .line 105
    iget-object v11, v3, Lc6;->L:[Lc6$a;

    const/4 v12, 0x1

    aput-object v17, v11, v12

    .line 106
    invoke-virtual {v0, v3, v12}, Lp6;->d(Ld6;I)I

    move-result v11

    invoke-virtual {v3, v11}, Lc6;->D(I)V

    .line 107
    iget-object v3, v0, Lp6;->a:Ld6;

    iget-object v11, v3, Lc6;->e:Lw6;

    iget-object v11, v11, Lx6;->e:Lr6;

    invoke-virtual {v3}, Lc6;->n()I

    move-result v3

    invoke-virtual {v11, v3}, Lr6;->c(I)V

    .line 108
    :cond_28
    :goto_17
    iget-object v3, v0, Lp6;->a:Ld6;

    iget-object v11, v3, Lc6;->L:[Lc6$a;

    const/4 v12, 0x0

    aget-object v13, v11, v12

    move-object/from16 v24, v9

    move-object/from16 v9, v17

    if-eq v13, v9, :cond_2a

    aget-object v11, v11, v12

    if-ne v11, v2, :cond_29

    goto :goto_18

    :cond_29
    const/4 v2, 0x0

    goto :goto_19

    .line 109
    :cond_2a
    :goto_18
    invoke-virtual {v3}, Lc6;->t()I

    move-result v3

    add-int/2addr v3, v5

    .line 110
    iget-object v11, v0, Lp6;->a:Ld6;

    iget-object v11, v11, Lc6;->d:Lu6;

    iget-object v11, v11, Lx6;->i:Lq6;

    invoke-virtual {v11, v3}, Lq6;->c(I)V

    .line 111
    iget-object v11, v0, Lp6;->a:Ld6;

    iget-object v11, v11, Lc6;->d:Lu6;

    iget-object v11, v11, Lx6;->e:Lr6;

    sub-int/2addr v3, v5

    invoke-virtual {v11, v3}, Lr6;->c(I)V

    .line 112
    invoke-virtual {v0}, Lp6;->g()V

    .line 113
    iget-object v3, v0, Lp6;->a:Ld6;

    iget-object v5, v3, Lc6;->L:[Lc6$a;

    const/4 v11, 0x1

    aget-object v12, v5, v11

    if-eq v12, v9, :cond_2b

    aget-object v5, v5, v11

    if-ne v5, v2, :cond_2c

    .line 114
    :cond_2b
    invoke-virtual {v3}, Lc6;->n()I

    move-result v2

    add-int/2addr v2, v7

    .line 115
    iget-object v3, v0, Lp6;->a:Ld6;

    iget-object v3, v3, Lc6;->e:Lw6;

    iget-object v3, v3, Lx6;->i:Lq6;

    invoke-virtual {v3, v2}, Lq6;->c(I)V

    .line 116
    iget-object v3, v0, Lp6;->a:Ld6;

    iget-object v3, v3, Lc6;->e:Lw6;

    iget-object v3, v3, Lx6;->e:Lr6;

    sub-int/2addr v2, v7

    invoke-virtual {v3, v2}, Lr6;->c(I)V

    .line 117
    :cond_2c
    invoke-virtual {v0}, Lp6;->g()V

    const/4 v2, 0x1

    .line 118
    :goto_19
    iget-object v3, v0, Lp6;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx6;

    .line 119
    iget-object v7, v5, Lx6;->b:Lc6;

    iget-object v9, v0, Lp6;->a:Ld6;

    if-ne v7, v9, :cond_2d

    iget-boolean v7, v5, Lx6;->g:Z

    if-nez v7, :cond_2d

    goto :goto_1a

    .line 120
    :cond_2d
    invoke-virtual {v5}, Lx6;->e()V

    goto :goto_1a

    .line 121
    :cond_2e
    iget-object v3, v0, Lp6;->e:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx6;

    if-nez v2, :cond_30

    .line 122
    iget-object v7, v5, Lx6;->b:Lc6;

    iget-object v9, v0, Lp6;->a:Ld6;

    if-ne v7, v9, :cond_30

    goto :goto_1b

    .line 123
    :cond_30
    iget-object v7, v5, Lx6;->h:Lq6;

    iget-boolean v7, v7, Lq6;->j:Z

    if-nez v7, :cond_31

    goto :goto_1c

    .line 124
    :cond_31
    iget-object v7, v5, Lx6;->i:Lq6;

    iget-boolean v7, v7, Lq6;->j:Z

    if-nez v7, :cond_32

    instance-of v7, v5, Ls6;

    if-nez v7, :cond_32

    goto :goto_1c

    .line 125
    :cond_32
    iget-object v7, v5, Lx6;->e:Lr6;

    iget-boolean v7, v7, Lq6;->j:Z

    if-nez v7, :cond_2f

    instance-of v7, v5, Ln6;

    if-nez v7, :cond_2f

    instance-of v5, v5, Ls6;

    if-nez v5, :cond_2f

    :goto_1c
    const/4 v2, 0x0

    goto :goto_1d

    :cond_33
    const/4 v2, 0x1

    .line 126
    :goto_1d
    iget-object v3, v0, Lp6;->a:Ld6;

    invoke-virtual {v3, v14}, Lc6;->E(Lc6$a;)V

    .line 127
    iget-object v0, v0, Lp6;->a:Ld6;

    invoke-virtual {v0, v15}, Lc6;->H(Lc6$a;)V

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v3, 0x2

    goto/16 :goto_21

    :cond_34
    move-object/from16 v24, p4

    move-object/from16 v23, v3

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move/from16 p4, v11

    move/from16 v22, v12

    .line 128
    iget-object v0, v1, Ld6;->E0:Lp6;

    .line 129
    iget-boolean v2, v0, Lp6;->b:Z

    if-eqz v2, :cond_36

    .line 130
    iget-object v2, v0, Lp6;->a:Ld6;

    iget-object v2, v2, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6;

    const/4 v5, 0x0

    .line 131
    iput-boolean v5, v3, Lc6;->a:Z

    .line 132
    iget-object v7, v3, Lc6;->d:Lu6;

    iget-object v9, v7, Lx6;->e:Lr6;

    iput-boolean v5, v9, Lq6;->j:Z

    .line 133
    iput-boolean v5, v7, Lx6;->g:Z

    .line 134
    invoke-virtual {v7}, Lu6;->n()V

    .line 135
    iget-object v3, v3, Lc6;->e:Lw6;

    iget-object v7, v3, Lx6;->e:Lr6;

    iput-boolean v5, v7, Lq6;->j:Z

    .line 136
    iput-boolean v5, v3, Lx6;->g:Z

    .line 137
    invoke-virtual {v3}, Lw6;->m()V

    goto :goto_1e

    :cond_35
    const/4 v5, 0x0

    .line 138
    iget-object v2, v0, Lp6;->a:Ld6;

    iput-boolean v5, v2, Lc6;->a:Z

    .line 139
    iget-object v2, v2, Lc6;->d:Lu6;

    iget-object v3, v2, Lx6;->e:Lr6;

    iput-boolean v5, v3, Lq6;->j:Z

    .line 140
    iput-boolean v5, v2, Lx6;->g:Z

    .line 141
    invoke-virtual {v2}, Lu6;->n()V

    .line 142
    iget-object v2, v0, Lp6;->a:Ld6;

    iget-object v2, v2, Lc6;->e:Lw6;

    iget-object v3, v2, Lx6;->e:Lr6;

    iput-boolean v5, v3, Lq6;->j:Z

    .line 143
    iput-boolean v5, v2, Lx6;->g:Z

    .line 144
    invoke-virtual {v2}, Lw6;->m()V

    .line 145
    invoke-virtual {v0}, Lp6;->c()V

    goto :goto_1f

    :cond_36
    const/4 v5, 0x0

    .line 146
    :goto_1f
    iget-object v2, v0, Lp6;->d:Ld6;

    invoke-virtual {v0, v2}, Lp6;->b(Ld6;)Z

    .line 147
    iget-object v2, v0, Lp6;->a:Ld6;

    .line 148
    iput v5, v2, Lc6;->R:I

    .line 149
    iput v5, v2, Lc6;->S:I

    .line 150
    iget-object v2, v2, Lc6;->d:Lu6;

    iget-object v2, v2, Lx6;->h:Lq6;

    invoke-virtual {v2, v5}, Lq6;->c(I)V

    .line 151
    iget-object v0, v0, Lp6;->a:Ld6;

    iget-object v0, v0, Lc6;->e:Lw6;

    iget-object v0, v0, Lx6;->h:Lq6;

    invoke-virtual {v0, v5}, Lq6;->c(I)V

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v4, v0, :cond_37

    .line 152
    invoke-virtual {v1, v13, v5}, Ld6;->O(ZI)Z

    move-result v2

    const/4 v3, 0x1

    and-int/lit8 v19, v2, 0x1

    move/from16 v5, v19

    const/4 v2, 0x1

    goto :goto_20

    :cond_37
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_20
    if-ne v6, v0, :cond_38

    .line 153
    invoke-virtual {v1, v13, v3}, Ld6;->O(ZI)Z

    move-result v7

    and-int v3, v5, v7

    add-int/lit8 v2, v2, 0x1

    move/from16 v25, v3

    move v3, v2

    move/from16 v2, v25

    goto :goto_21

    :cond_38
    move v3, v2

    move v2, v5

    :goto_21
    if-eqz v2, :cond_3c

    if-ne v4, v0, :cond_39

    const/4 v4, 0x1

    goto :goto_22

    :cond_39
    const/4 v4, 0x0

    :goto_22
    if-ne v6, v0, :cond_3a

    const/4 v0, 0x1

    goto :goto_23

    :cond_3a
    const/4 v0, 0x0

    .line 154
    :goto_23
    invoke-virtual {v1, v4, v0}, Ld6;->J(ZZ)V

    goto :goto_24

    :cond_3b
    move-object/from16 v24, p4

    move-object/from16 v23, v3

    move-object/from16 v18, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    move/from16 p4, v11

    move/from16 v22, v12

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3c
    :goto_24
    if-eqz v2, :cond_3d

    const/4 v0, 0x2

    if-eq v3, v0, :cond_62

    :cond_3d
    if-lez v10, :cond_45

    .line 155
    iget-object v0, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    iget-object v2, v1, Ld6;->F0:Lm6$b;

    const/4 v15, 0x0

    :goto_25
    if-ge v15, v0, :cond_42

    .line 157
    iget-object v3, v1, Lk6;->C0:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc6;

    .line 158
    instance-of v4, v3, Lf6;

    if-eqz v4, :cond_3e

    goto :goto_27

    .line 159
    :cond_3e
    iget-object v4, v3, Lc6;->d:Lu6;

    iget-object v4, v4, Lx6;->e:Lr6;

    iget-boolean v4, v4, Lq6;->j:Z

    if-eqz v4, :cond_3f

    iget-object v4, v3, Lc6;->e:Lw6;

    iget-object v4, v4, Lx6;->e:Lr6;

    iget-boolean v4, v4, Lq6;->j:Z

    if-eqz v4, :cond_3f

    goto :goto_27

    :cond_3f
    const/4 v4, 0x0

    .line 160
    invoke-virtual {v3, v4}, Lc6;->m(I)Lc6$a;

    move-result-object v5

    const/4 v4, 0x1

    .line 161
    invoke-virtual {v3, v4}, Lc6;->m(I)Lc6$a;

    move-result-object v6

    if-ne v5, v8, :cond_40

    .line 162
    iget v5, v3, Lc6;->j:I

    if-eq v5, v4, :cond_40

    if-ne v6, v8, :cond_40

    iget v5, v3, Lc6;->k:I

    if-eq v5, v4, :cond_40

    const/4 v4, 0x1

    goto :goto_26

    :cond_40
    const/4 v4, 0x0

    :goto_26
    if-eqz v4, :cond_41

    :goto_27
    move-object/from16 v5, v23

    const/4 v4, 0x0

    goto :goto_28

    :cond_41
    move-object/from16 v5, v23

    const/4 v4, 0x0

    .line 163
    invoke-virtual {v5, v2, v3, v4}, Lm6;->a(Lm6$b;Lc6;Z)Z

    :goto_28
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v23, v5

    goto :goto_25

    :cond_42
    move-object/from16 v5, v23

    const/4 v4, 0x0

    .line 164
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 165
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v15, 0x0

    :goto_29
    if-ge v15, v0, :cond_44

    .line 166
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 167
    instance-of v6, v3, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v6, :cond_43

    .line 168
    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Placeholder;->b()V

    :cond_43
    add-int/lit8 v15, v15, 0x1

    goto :goto_29

    .line 169
    :cond_44
    iget-object v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 170
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    const/4 v15, 0x0

    :goto_2a
    if-ge v15, v0, :cond_46

    .line 172
    iget-object v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 173
    iget-object v3, v3, Landroidx/constraintlayout/widget/ConstraintLayout;->f:Ljava/util/ArrayList;

    .line 174
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 175
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->o()V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2a

    :cond_45
    move-object/from16 v5, v23

    const/4 v4, 0x0

    .line 176
    :cond_46
    iget v0, v1, Ld6;->O0:I

    .line 177
    iget-object v2, v5, Lm6;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v3, p4

    move/from16 v6, v22

    if-lez v10, :cond_47

    .line 178
    invoke-virtual {v5, v1, v3, v6}, Lm6;->b(Ld6;II)V

    :cond_47
    if-lez v2, :cond_60

    .line 179
    invoke-virtual/range {p1 .. p1}, Lc6;->o()Lc6$a;

    move-result-object v7

    move-object/from16 v8, v24

    if-ne v7, v8, :cond_48

    const/4 v15, 0x1

    goto :goto_2b

    :cond_48
    const/4 v15, 0x0

    .line 180
    :goto_2b
    invoke-virtual/range {p1 .. p1}, Lc6;->s()Lc6$a;

    move-result-object v7

    if-ne v7, v8, :cond_49

    const/4 v7, 0x1

    goto :goto_2c

    :cond_49
    const/4 v7, 0x0

    .line 181
    :goto_2c
    invoke-virtual/range {p1 .. p1}, Lc6;->t()I

    move-result v8

    iget-object v9, v5, Lm6;->c:Ld6;

    .line 182
    iget v9, v9, Lc6;->Y:I

    .line 183
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 184
    invoke-virtual/range {p1 .. p1}, Lc6;->n()I

    move-result v9

    iget-object v10, v5, Lm6;->c:Ld6;

    .line 185
    iget v10, v10, Lc6;->Z:I

    .line 186
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2d
    if-ge v10, v2, :cond_4f

    .line 187
    iget-object v12, v5, Lm6;->a:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc6;

    .line 188
    instance-of v13, v12, Lj6;

    if-nez v13, :cond_4a

    move/from16 v17, v0

    move-object/from16 v14, v18

    move-object/from16 v13, v20

    move-object/from16 v4, v21

    goto/16 :goto_32

    .line 189
    :cond_4a
    invoke-virtual {v12}, Lc6;->t()I

    move-result v13

    .line 190
    invoke-virtual {v12}, Lc6;->n()I

    move-result v14

    move/from16 v17, v0

    move-object/from16 v4, v21

    const/4 v0, 0x1

    .line 191
    invoke-virtual {v5, v4, v12, v0}, Lm6;->a(Lm6$b;Lc6;Z)Z

    move-result v21

    or-int v0, v11, v21

    .line 192
    invoke-virtual {v12}, Lc6;->t()I

    move-result v11

    move/from16 p3, v0

    .line 193
    invoke-virtual {v12}, Lc6;->n()I

    move-result v0

    if-eq v11, v13, :cond_4c

    .line 194
    invoke-virtual {v12, v11}, Lc6;->I(I)V

    if-eqz v15, :cond_4b

    .line 195
    invoke-virtual {v12}, Lc6;->r()I

    move-result v11

    if-le v11, v8, :cond_4b

    .line 196
    invoke-virtual {v12}, Lc6;->r()I

    move-result v11

    move-object/from16 v13, v20

    .line 197
    invoke-virtual {v12, v13}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lb6;->c()I

    move-result v20

    add-int v11, v20, v11

    .line 198
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2e

    :cond_4b
    move-object/from16 v13, v20

    :goto_2e
    const/4 v11, 0x1

    goto :goto_2f

    :cond_4c
    move-object/from16 v13, v20

    move/from16 v11, p3

    :goto_2f
    if-eq v0, v14, :cond_4e

    .line 199
    invoke-virtual {v12, v0}, Lc6;->D(I)V

    if-eqz v7, :cond_4d

    .line 200
    invoke-virtual {v12}, Lc6;->l()I

    move-result v0

    if-le v0, v9, :cond_4d

    .line 201
    invoke-virtual {v12}, Lc6;->l()I

    move-result v0

    move-object/from16 v14, v18

    .line 202
    invoke-virtual {v12, v14}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v11

    invoke-virtual {v11}, Lb6;->c()I

    move-result v11

    add-int/2addr v11, v0

    .line 203
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    goto :goto_30

    :cond_4d
    move-object/from16 v14, v18

    :goto_30
    const/4 v11, 0x1

    goto :goto_31

    :cond_4e
    move-object/from16 v14, v18

    .line 204
    :goto_31
    check-cast v12, Lj6;

    .line 205
    iget-boolean v0, v12, Lj6;->K0:Z

    or-int/2addr v0, v11

    move v11, v0

    :goto_32
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v21, v4

    move-object/from16 v20, v13

    move-object/from16 v18, v14

    move/from16 v0, v17

    const/4 v4, 0x0

    goto/16 :goto_2d

    :cond_4f
    move/from16 v17, v0

    move-object/from16 v14, v18

    move-object/from16 v13, v20

    move-object/from16 v4, v21

    const/4 v0, 0x0

    const/4 v10, 0x2

    :goto_33
    if-ge v0, v10, :cond_5d

    move v12, v11

    const/4 v11, 0x0

    :goto_34
    if-ge v11, v2, :cond_5b

    .line 206
    iget-object v10, v5, Lm6;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc6;

    move/from16 p3, v2

    .line 207
    instance-of v2, v10, Lg6;

    if-eqz v2, :cond_50

    instance-of v2, v10, Lj6;

    if-eqz v2, :cond_51

    :cond_50
    instance-of v2, v10, Lf6;

    if-eqz v2, :cond_52

    :cond_51
    move/from16 v18, v0

    goto :goto_35

    .line 208
    :cond_52
    iget v2, v10, Lc6;->e0:I

    move/from16 v18, v0

    const/16 v0, 0x8

    if-ne v2, v0, :cond_53

    goto :goto_35

    .line 209
    :cond_53
    iget-object v0, v10, Lc6;->d:Lu6;

    iget-object v0, v0, Lx6;->e:Lr6;

    iget-boolean v0, v0, Lq6;->j:Z

    if-eqz v0, :cond_54

    iget-object v0, v10, Lc6;->e:Lw6;

    iget-object v0, v0, Lx6;->e:Lr6;

    iget-boolean v0, v0, Lq6;->j:Z

    if-eqz v0, :cond_54

    goto :goto_35

    .line 210
    :cond_54
    instance-of v0, v10, Lj6;

    if-eqz v0, :cond_55

    :goto_35
    move/from16 p4, v3

    goto :goto_36

    .line 211
    :cond_55
    invoke-virtual {v10}, Lc6;->t()I

    move-result v0

    .line 212
    invoke-virtual {v10}, Lc6;->n()I

    move-result v2

    .line 213
    iget v1, v10, Lc6;->X:I

    move/from16 p4, v3

    const/4 v3, 0x1

    .line 214
    invoke-virtual {v5, v4, v10, v3}, Lm6;->a(Lm6$b;Lc6;Z)Z

    move-result v19

    or-int v19, v12, v19

    .line 215
    invoke-virtual {v10}, Lc6;->t()I

    move-result v12

    .line 216
    invoke-virtual {v10}, Lc6;->n()I

    move-result v3

    if-eq v12, v0, :cond_57

    .line 217
    invoke-virtual {v10, v12}, Lc6;->I(I)V

    if-eqz v15, :cond_56

    .line 218
    invoke-virtual {v10}, Lc6;->r()I

    move-result v0

    if-le v0, v8, :cond_56

    .line 219
    invoke-virtual {v10}, Lc6;->r()I

    move-result v0

    .line 220
    invoke-virtual {v10, v13}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v12

    invoke-virtual {v12}, Lb6;->c()I

    move-result v12

    add-int/2addr v12, v0

    .line 221
    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    :cond_56
    const/16 v19, 0x1

    :cond_57
    if-eq v3, v2, :cond_59

    .line 222
    invoke-virtual {v10, v3}, Lc6;->D(I)V

    if-eqz v7, :cond_58

    .line 223
    invoke-virtual {v10}, Lc6;->l()I

    move-result v0

    if-le v0, v9, :cond_58

    .line 224
    invoke-virtual {v10}, Lc6;->l()I

    move-result v0

    .line 225
    invoke-virtual {v10, v14}, Lc6;->k(Lb6$a;)Lb6;

    move-result-object v2

    invoke-virtual {v2}, Lb6;->c()I

    move-result v2

    add-int/2addr v2, v0

    .line 226
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v9, v0

    :cond_58
    const/16 v19, 0x1

    .line 227
    :cond_59
    iget-boolean v0, v10, Lc6;->y:Z

    if-eqz v0, :cond_5a

    .line 228
    iget v0, v10, Lc6;->X:I

    if-eq v1, v0, :cond_5a

    const/4 v12, 0x1

    goto :goto_36

    :cond_5a
    move/from16 v12, v19

    :goto_36
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v0, v18

    const/4 v10, 0x2

    goto/16 :goto_34

    :cond_5b
    move/from16 v18, v0

    move/from16 p3, v2

    move/from16 p4, v3

    if-eqz v12, :cond_5c

    move-object/from16 v0, p1

    move/from16 v1, p4

    .line 229
    invoke-virtual {v5, v0, v1, v6}, Lm6;->b(Ld6;II)V

    const/4 v11, 0x0

    goto :goto_37

    :cond_5c
    move-object/from16 v0, p1

    move/from16 v1, p4

    move v11, v12

    :goto_37
    add-int/lit8 v2, v18, 0x1

    move v3, v1

    const/4 v10, 0x2

    move-object v1, v0

    move v0, v2

    move/from16 v2, p3

    goto/16 :goto_33

    :cond_5d
    move-object v0, v1

    move v1, v3

    if-eqz v11, :cond_61

    .line 230
    invoke-virtual {v5, v0, v1, v6}, Lm6;->b(Ld6;II)V

    .line 231
    invoke-virtual/range {p1 .. p1}, Lc6;->t()I

    move-result v2

    if-ge v2, v8, :cond_5e

    .line 232
    invoke-virtual {v0, v8}, Lc6;->I(I)V

    const/16 v16, 0x1

    goto :goto_38

    :cond_5e
    const/16 v16, 0x0

    .line 233
    :goto_38
    invoke-virtual/range {p1 .. p1}, Lc6;->n()I

    move-result v2

    if-ge v2, v9, :cond_5f

    .line 234
    invoke-virtual {v0, v9}, Lc6;->D(I)V

    const/4 v7, 0x1

    goto :goto_39

    :cond_5f
    move/from16 v7, v16

    :goto_39
    if-eqz v7, :cond_61

    .line 235
    invoke-virtual {v5, v0, v1, v6}, Lm6;->b(Ld6;II)V

    goto :goto_3a

    :cond_60
    move/from16 v17, v0

    move-object v0, v1

    :cond_61
    :goto_3a
    move/from16 v1, v17

    .line 236
    invoke-virtual {v0, v1}, Ld6;->R(I)V

    :cond_62
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->l:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->r:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->s:I

    .line 4
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setConstraintSet(La7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->n:La7;

    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_2

    .line 1
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_2

    instance-of p1, p3, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    .line 4
    :cond_0
    check-cast p2, Ljava/lang/String;

    const-string p1, "/"

    .line 5
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 7
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    iget-object p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->q:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 3
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->e:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->k:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->j:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinHeight(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->i:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setMinWidth(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->h:I

    .line 3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public setOnConstraintsChanged(Lb7;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lz6;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->m:I

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->g:Ld6;

    .line 3
    iput p1, v0, Ld6;->O0:I

    const/16 v0, 0x100

    .line 4
    invoke-static {p1, v0}, Li6;->a(II)Z

    move-result p1

    sput-boolean p1, Lu5;->p:Z

    return-void
.end method

.method public setState(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Lz6;

    if-eqz v0, :cond_0

    int-to-float p2, p2

    int-to-float p3, p3

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lz6;->b(IFF)V

    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
