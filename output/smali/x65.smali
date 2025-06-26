.class public final Lx65;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Landroid/content/res/ColorStateList;

.field public final c:Landroid/content/res/ColorStateList;

.field public final d:Landroid/content/res/ColorStateList;

.field public final e:I

.field public final f:Lpa5;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILpa5;Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget v0, p6, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ld0$h;->g(I)I

    .line 3
    iget v0, p6, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ld0$h;->g(I)I

    .line 4
    iget v0, p6, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Ld0$h;->g(I)I

    .line 5
    iget v0, p6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Ld0$h;->g(I)I

    .line 6
    iput-object p6, p0, Lx65;->a:Landroid/graphics/Rect;

    .line 7
    iput-object p2, p0, Lx65;->b:Landroid/content/res/ColorStateList;

    .line 8
    iput-object p1, p0, Lx65;->c:Landroid/content/res/ColorStateList;

    .line 9
    iput-object p3, p0, Lx65;->d:Landroid/content/res/ColorStateList;

    .line 10
    iput p4, p0, Lx65;->e:I

    .line 11
    iput-object p5, p0, Lx65;->f:Lpa5;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lx65;
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 1
    sget-object v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem:[I

    .line 2
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetLeft:I

    .line 4
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 5
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetTop:I

    .line 6
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 7
    sget v3, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetRight:I

    .line 8
    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 9
    sget v4, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_android_insetBottom:I

    .line 10
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 11
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 12
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemFillColor:I

    .line 13
    invoke-static {p0, p1, v1}, Lc50;->a0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 14
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemTextColor:I

    .line 15
    invoke-static {p0, p1, v1}, Lc50;->a0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v7

    .line 16
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeColor:I

    .line 17
    invoke-static {p0, p1, v1}, Lc50;->a0(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    .line 18
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemStrokeWidth:I

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    .line 20
    sget v1, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearance:I

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 22
    sget v2, Lcom/google/android/material/R$styleable;->MaterialCalendarItem_itemShapeAppearanceOverlay:I

    .line 23
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 24
    new-instance v3, Lea5;

    int-to-float v0, v0

    invoke-direct {v3, v0}, Lea5;-><init>(F)V

    invoke-static {p0, v1, v2, v3}, Lpa5;->a(Landroid/content/Context;IILga5;)Lpa5$b;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Lpa5$b;->a()Lpa5;

    move-result-object v10

    .line 26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 27
    new-instance p0, Lx65;

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lx65;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;ILpa5;Landroid/graphics/Rect;)V

    return-object p0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot create a CalendarItemStyle with a styleResId of 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(Landroid/widget/TextView;)V
    .locals 9

    .line 1
    new-instance v0, Lla5;

    invoke-direct {v0}, Lla5;-><init>()V

    .line 2
    new-instance v1, Lla5;

    invoke-direct {v1}, Lla5;-><init>()V

    .line 3
    iget-object v2, p0, Lx65;->f:Lpa5;

    invoke-virtual {v0, v2}, Lla5;->setShapeAppearanceModel(Lpa5;)V

    .line 4
    iget-object v2, p0, Lx65;->f:Lpa5;

    invoke-virtual {v1, v2}, Lla5;->setShapeAppearanceModel(Lpa5;)V

    .line 5
    iget-object v2, p0, Lx65;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Lla5;->t(Landroid/content/res/ColorStateList;)V

    .line 6
    iget v2, p0, Lx65;->e:I

    int-to-float v2, v2

    iget-object v3, p0, Lx65;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lla5;->z(FLandroid/content/res/ColorStateList;)V

    .line 7
    iget-object v2, p0, Lx65;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 8
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    iget-object v2, p0, Lx65;->b:Landroid/content/res/ColorStateList;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-direct {v4, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lx65;->a:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 10
    sget-object v1, Lha;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
