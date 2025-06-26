.class public Landroidx/gridlayout/widget/GridLayout$n;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/gridlayout/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "n"
.end annotation


# static fields
.field public static final c:Landroidx/gridlayout/widget/GridLayout$m;

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I


# instance fields
.field public a:Landroidx/gridlayout/widget/GridLayout$q;

.field public b:Landroidx/gridlayout/widget/GridLayout$q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/gridlayout/widget/GridLayout$m;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Landroidx/gridlayout/widget/GridLayout$m;-><init>(II)V

    sput-object v0, Landroidx/gridlayout/widget/GridLayout$n;->c:Landroidx/gridlayout/widget/GridLayout$m;

    .line 2
    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$m;->a()I

    move-result v0

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->d:I

    .line 3
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_margin:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->e:I

    .line 4
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginLeft:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->f:I

    .line 5
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginTop:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->g:I

    .line 6
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginRight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->h:I

    .line 7
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_android_layout_marginBottom:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->i:I

    .line 8
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_column:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->j:I

    .line 9
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_columnSpan:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->k:I

    .line 10
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_columnWeight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->l:I

    .line 11
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_row:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->m:I

    .line 12
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_rowSpan:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->n:I

    .line 13
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_rowWeight:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->o:I

    .line 14
    sget v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout_layout_gravity:I

    sput v0, Landroidx/gridlayout/widget/GridLayout$n;->p:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    const/4 v1, -0x2

    .line 2
    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    .line 4
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    const/high16 v1, -0x80000000

    .line 5
    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 6
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    .line 7
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    sget-object v0, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    .line 21
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    .line 22
    sget-object v0, Landroidx/gridlayout/R$styleable;->GridLayout_Layout:[I

    .line 23
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 24
    :try_start_0
    sget v2, Landroidx/gridlayout/widget/GridLayout$n;->e:I

    const/high16 v3, -0x80000000

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 25
    sget v4, Landroidx/gridlayout/widget/GridLayout$n;->f:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 26
    sget v4, Landroidx/gridlayout/widget/GridLayout$n;->g:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 27
    sget v4, Landroidx/gridlayout/widget/GridLayout$n;->h:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 28
    sget v4, Landroidx/gridlayout/widget/GridLayout$n;->i:I

    invoke-virtual {v1, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 30
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 31
    :try_start_1
    sget p2, Landroidx/gridlayout/widget/GridLayout$n;->p:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 32
    sget v1, Landroidx/gridlayout/widget/GridLayout$n;->j:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 33
    sget v2, Landroidx/gridlayout/widget/GridLayout$n;->k:I

    sget v4, Landroidx/gridlayout/widget/GridLayout$n;->d:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 34
    sget v5, Landroidx/gridlayout/widget/GridLayout$n;->l:I

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    const/4 v7, 0x1

    .line 35
    invoke-static {p2, v7}, Landroidx/gridlayout/widget/GridLayout;->d(IZ)Landroidx/gridlayout/widget/GridLayout$h;

    move-result-object v7

    invoke-static {v1, v2, v7, v5}, Landroidx/gridlayout/widget/GridLayout;->q(IILandroidx/gridlayout/widget/GridLayout$h;F)Landroidx/gridlayout/widget/GridLayout$q;

    move-result-object v1

    iput-object v1, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    .line 36
    sget v1, Landroidx/gridlayout/widget/GridLayout$n;->m:I

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 37
    sget v2, Landroidx/gridlayout/widget/GridLayout$n;->n:I

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 38
    sget v3, Landroidx/gridlayout/widget/GridLayout$n;->o:I

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 39
    invoke-static {p2, v0}, Landroidx/gridlayout/widget/GridLayout;->d(IZ)Landroidx/gridlayout/widget/GridLayout$h;

    move-result-object p2

    invoke-static {v1, v2, p2, v3}, Landroidx/gridlayout/widget/GridLayout;->q(IILandroidx/gridlayout/widget/GridLayout$h;F)Landroidx/gridlayout/widget/GridLayout$q;

    move-result-object p2

    iput-object p2, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    :catchall_1
    move-exception p1

    .line 41
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    sget-object p1, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    .line 10
    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 12
    sget-object p1, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    .line 13
    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method

.method public constructor <init>(Landroidx/gridlayout/widget/GridLayout$n;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 15
    sget-object v0, Landroidx/gridlayout/widget/GridLayout$q;->e:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    .line 16
    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    .line 17
    iget-object v0, p1, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    .line 18
    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    iput-object p1, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 1
    const-class v2, Landroidx/gridlayout/widget/GridLayout$n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Landroidx/gridlayout/widget/GridLayout$n;

    .line 3
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    iget-object v3, p1, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v2, v3}, Landroidx/gridlayout/widget/GridLayout$q;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v2, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    iget-object p1, p1, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v2, p1}, Landroidx/gridlayout/widget/GridLayout$q;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/gridlayout/widget/GridLayout$n;->a:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v0}, Landroidx/gridlayout/widget/GridLayout$q;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Landroidx/gridlayout/widget/GridLayout$n;->b:Landroidx/gridlayout/widget/GridLayout$q;

    invoke-virtual {v1}, Landroidx/gridlayout/widget/GridLayout$q;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1

    const/4 v0, -0x2

    .line 1
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 2
    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    return-void
.end method
