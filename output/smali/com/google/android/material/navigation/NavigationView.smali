.class public Lcom/google/android/material/navigation/NavigationView;
.super Lcom/google/android/material/internal/ScrimInsetsFrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$b;
    }
.end annotation


# static fields
.field public static final q:[I

.field public static final r:[I

.field public static final s:I


# instance fields
.field public final j:Ll85;

.field public final k:Lm85;

.field public l:Lcom/google/android/material/navigation/NavigationView$b;

.field public final m:I

.field public final n:[I

.field public o:Landroid/view/MenuInflater;

.field public p:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->q:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->r:[I

    .line 3
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->s:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/navigation/NavigationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    .line 3
    sget v9, Lcom/google/android/material/navigation/NavigationView;->s:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Lfc5;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v10, Lm85;

    invoke-direct {v10}, Lm85;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 5
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->n:[I

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 7
    new-instance v12, Ll85;

    invoke-direct {v12, v11}, Ll85;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/google/android/material/navigation/NavigationView;->j:Ll85;

    .line 8
    sget-object v3, Lcom/google/android/material/R$styleable;->NavigationView:[I

    const/4 v13, 0x0

    new-array v6, v13, [I

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p3

    move v5, v9

    .line 9
    invoke-static/range {v1 .. v6}, Lt85;->e(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Lc3;

    move-result-object v1

    .line 10
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Lc3;->p(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    invoke-virtual {v1, v2}, Lc3;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 12
    sget-object v3, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 15
    :cond_1
    new-instance v2, Lea5;

    int-to-float v3, v13

    invoke-direct {v2, v3}, Lea5;-><init>(F)V

    invoke-static {v11, v7, v8, v9, v2}, Lpa5;->b(Landroid/content/Context;Landroid/util/AttributeSet;IILga5;)Lpa5$b;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lpa5$b;->a()Lpa5;

    move-result-object v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 18
    new-instance v4, Lla5;

    invoke-direct {v4, v2}, Lla5;-><init>(Lpa5;)V

    .line 19
    instance-of v2, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 20
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 21
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 22
    invoke-virtual {v4, v2}, Lla5;->t(Landroid/content/res/ColorStateList;)V

    .line 23
    :cond_2
    iget-object v2, v4, Lla5;->e:Lla5$b;

    new-instance v3, Lu75;

    invoke-direct {v3, v11}, Lu75;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lla5$b;->b:Lu75;

    .line 24
    invoke-virtual {v4}, Lla5;->E()V

    .line 25
    sget-object v2, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_3
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Lc3;->p(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 28
    invoke-virtual {v1, v2, v13}, Lc3;->f(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 29
    :cond_4
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v1, v2, v13}, Lc3;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 30
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v13}, Lc3;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->m:I

    .line 31
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Lc3;->p(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 32
    invoke-virtual {v1, v2}, Lc3;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_5
    const v2, 0x1010038

    .line 33
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 34
    :goto_0
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v3}, Lc3;->p(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 35
    invoke-virtual {v1, v3, v13}, Lc3;->m(II)I

    move-result v3

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 36
    :goto_1
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v6}, Lc3;->p(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 37
    invoke-virtual {v1, v6, v13}, Lc3;->f(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_7
    const/4 v6, 0x0

    .line 38
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v7}, Lc3;->p(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 39
    invoke-virtual {v1, v7}, Lc3;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_8
    if-nez v4, :cond_9

    if-nez v6, :cond_9

    const v6, 0x1010036

    .line 40
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 41
    :cond_9
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v1, v7}, Lc3;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_c

    .line 42
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v8}, Lc3;->p(I)Z

    move-result v9

    if-nez v9, :cond_b

    sget v9, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 43
    invoke-virtual {v1, v9}, Lc3;->p(I)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_2

    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_c

    .line 44
    invoke-virtual {v1, v8, v13}, Lc3;->m(II)I

    move-result v7

    .line 45
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 46
    invoke-virtual {v1, v8, v13}, Lc3;->m(II)I

    move-result v8

    .line 47
    new-instance v15, Lla5;

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 49
    new-instance v14, Lea5;

    int-to-float v5, v13

    invoke-direct {v14, v5}, Lea5;-><init>(F)V

    invoke-static {v9, v7, v8, v14}, Lpa5;->a(Landroid/content/Context;IILga5;)Lpa5$b;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Lpa5$b;->a()Lpa5;

    move-result-object v5

    invoke-direct {v15, v5}, Lla5;-><init>(Lpa5;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    .line 52
    invoke-static {v5, v1, v7}, Lc50;->b0(Landroid/content/Context;Lc3;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 53
    invoke-virtual {v15, v5}, Lla5;->t(Landroid/content/res/ColorStateList;)V

    .line 54
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {v1, v5, v13}, Lc3;->f(II)I

    move-result v16

    .line 55
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {v1, v5, v13}, Lc3;->f(II)I

    move-result v17

    .line 56
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {v1, v5, v13}, Lc3;->f(II)I

    move-result v18

    .line 57
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {v1, v5, v13}, Lc3;->f(II)I

    move-result v19

    .line 58
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 59
    :cond_c
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v5}, Lc3;->p(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 60
    invoke-virtual {v1, v5, v13}, Lc3;->f(II)I

    move-result v5

    .line 61
    invoke-virtual {v10, v5}, Lm85;->a(I)V

    .line 62
    :cond_d
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    .line 63
    invoke-virtual {v1, v5, v13}, Lc3;->f(II)I

    move-result v5

    .line 64
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Lc3;->j(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 65
    new-instance v8, Lcom/google/android/material/navigation/NavigationView$a;

    invoke-direct {v8, v0}, Lcom/google/android/material/navigation/NavigationView$a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    .line 66
    iput-object v8, v12, Lj1;->e:Lj1$a;

    .line 67
    iput v9, v10, Lm85;->h:I

    .line 68
    invoke-virtual {v10, v11, v12}, Lm85;->t(Landroid/content/Context;Lj1;)V

    .line 69
    iput-object v2, v10, Lm85;->n:Landroid/content/res/ColorStateList;

    .line 70
    invoke-virtual {v10, v13}, Lm85;->o(Z)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v2

    .line 72
    iput v2, v10, Lm85;->x:I

    .line 73
    iget-object v8, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v8, :cond_e

    .line 74
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_e
    if-eqz v4, :cond_f

    .line 75
    iput v3, v10, Lm85;->k:I

    const/4 v2, 0x1

    .line 76
    iput-boolean v2, v10, Lm85;->l:Z

    .line 77
    invoke-virtual {v10, v13}, Lm85;->o(Z)V

    .line 78
    :cond_f
    iput-object v6, v10, Lm85;->m:Landroid/content/res/ColorStateList;

    .line 79
    invoke-virtual {v10, v13}, Lm85;->o(Z)V

    .line 80
    iput-object v7, v10, Lm85;->o:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {v10, v13}, Lm85;->o(Z)V

    .line 82
    invoke-virtual {v10, v5}, Lm85;->c(I)V

    .line 83
    iget-object v2, v12, Lj1;->a:Landroid/content/Context;

    invoke-virtual {v12, v10, v2}, Lj1;->b(Lp1;Landroid/content/Context;)V

    .line 84
    iget-object v2, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v2, :cond_12

    .line 85
    iget-object v2, v10, Lm85;->j:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    .line 86
    invoke-virtual {v2, v3, v0, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v2, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    .line 87
    new-instance v3, Lm85$h;

    iget-object v4, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v3, v10, v4}, Lm85$h;-><init>(Lm85;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Lbg;)V

    .line 88
    iget-object v2, v10, Lm85;->i:Lm85$c;

    if-nez v2, :cond_10

    .line 89
    new-instance v2, Lm85$c;

    invoke-direct {v2, v10}, Lm85$c;-><init>(Lm85;)V

    iput-object v2, v10, Lm85;->i:Lm85$c;

    .line 90
    :cond_10
    iget v2, v10, Lm85;->x:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 91
    iget-object v3, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 92
    :cond_11
    iget-object v2, v10, Lm85;->j:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    iget-object v4, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    .line 93
    invoke-virtual {v2, v3, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v10, Lm85;->f:Landroid/widget/LinearLayout;

    .line 94
    iget-object v2, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v3, v10, Lm85;->i:Lm85$c;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    .line 95
    :cond_12
    iget-object v2, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 97
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v2}, Lc3;->p(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 98
    invoke-virtual {v1, v2, v13}, Lc3;->m(II)I

    move-result v2

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v10, v3}, Lm85;->d(Z)V

    .line 100
    invoke-direct/range {p0 .. p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v12}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 101
    invoke-virtual {v10, v13}, Lm85;->d(Z)V

    .line 102
    invoke-virtual {v10, v13}, Lm85;->o(Z)V

    .line 103
    :cond_13
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2}, Lc3;->p(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 104
    invoke-virtual {v1, v2, v13}, Lc3;->m(II)I

    move-result v2

    .line 105
    iget-object v3, v10, Lm85;->j:Landroid/view/LayoutInflater;

    iget-object v4, v10, Lm85;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 106
    iget-object v3, v10, Lm85;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v2, v10, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v13, v13, v13, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 108
    :cond_14
    iget-object v1, v1, Lc3;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    new-instance v1, Ld95;

    invoke-direct {v1, v0}, Ld95;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 111
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->o:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, La1;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, La1;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->o:Landroid/view/MenuInflater;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->o:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public a(Lqa;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lqa;->e()I

    move-result v1

    .line 4
    iget v2, v0, Lm85;->v:I

    if-eq v2, v1, :cond_0

    .line 5
    iput v1, v0, Lm85;->v:I

    .line 6
    invoke-virtual {v0}, Lm85;->e()V

    .line 7
    :cond_0
    iget-object v1, v0, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Lqa;->b()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 8
    iget-object v0, v0, Lm85;->f:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lha;->e(Landroid/view/View;Lqa;)Lqa;

    return-void
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 10

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lp0;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 6
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 7
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 8
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 9
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->r:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->q:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    .line 10
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget-object v0, v0, Lm85;->i:Lm85$c;

    .line 3
    iget-object v0, v0, Lm85$c;->b:Ll1;

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget-object v0, v0, Lm85;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget-object v0, v0, Lm85;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget v0, v0, Lm85;->p:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget v0, v0, Lm85;->q:I

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget-object v0, v0, Lm85;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget v0, v0, Lm85;->u:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget-object v0, v0, Lm85;->m:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Ll85;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lla5;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lla5;

    invoke-static {p0, v0}, Lc50;->I0(Landroid/view/View;Lla5;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/material/internal/ScrimInsetsFrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->p:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->m:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->m:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 4
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->e:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Ll85;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->g:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Lj1;->w(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->g:Landroid/os/Bundle;

    .line 4
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->j:Ll85;

    invoke-virtual {v2, v0}, Lj1;->y(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Ll85;

    invoke-virtual {v0, p1}, Lj1;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    check-cast p1, Ll1;

    .line 3
    iget-object v0, v0, Lm85;->i:Lm85$c;

    invoke-virtual {v0, p1}, Lm85$c;->b(Ll1;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->j:Ll85;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lj1;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    check-cast p1, Ll1;

    .line 6
    iget-object v0, v0, Lm85;->i:Lm85$c;

    invoke-virtual {v0, p1}, Lm85$c;->b(Ll1;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 2
    invoke-static {p0, p1}, Lc50;->H0(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iput-object p1, v0, Lm85;->o:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lm85;->o(Z)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lu7;->a:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iput p1, v0, Lm85;->p:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lm85;->o(Z)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lm85;->a(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iput p1, v0, Lm85;->q:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lm85;->o(Z)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lm85;->c(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iget v1, v0, Lm85;->r:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, v0, Lm85;->r:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Lm85;->s:Z

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lm85;->o(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iput-object p1, v0, Lm85;->n:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lm85;->o(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iput p1, v0, Lm85;->u:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lm85;->o(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iput p1, v0, Lm85;->k:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lm85;->l:Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lm85;->o(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    .line 2
    iput-object p1, v0, Lm85;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lm85;->o(Z)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Lcom/google/android/material/navigation/NavigationView$b;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Lm85;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Lm85;->x:I

    .line 4
    iget-object v0, v0, Lm85;->e:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method
