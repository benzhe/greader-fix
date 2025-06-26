.class public Lnet/frakbot/glowpadbackport/HandleDrawable;
.super Lnet/frakbot/glowpadbackport/DrawableImpl;
.source "SourceFile"


# static fields
.field private static final COLOR_ACTIVE_OVELAY:Ljava/lang/String; = "#66000000"

.field private static final COLOR_FOCUSED_OVELAY:Ljava/lang/String; = "#33000000"


# instance fields
.field private mHandleSize:I

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIII)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/DrawableImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/frakbot/glowpadbackport/HandleDrawable;->mHandleSize:I

    .line 3
    iput p2, p0, Lnet/frakbot/glowpadbackport/HandleDrawable;->mResourceId:I

    .line 4
    iput p5, p0, Lnet/frakbot/glowpadbackport/HandleDrawable;->mHandleSize:I

    if-nez p3, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/frakbot/glowpadbackport/HandleDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lnet/frakbot/glowpadbackport/HandleDrawable;->setDrawable(Landroid/content/res/Resources;IIII)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lnet/frakbot/glowpadbackport/HandleDrawable;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/DrawableImpl;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lnet/frakbot/glowpadbackport/HandleDrawable;->mHandleSize:I

    .line 9
    iget v0, p1, Lnet/frakbot/glowpadbackport/HandleDrawable;->mResourceId:I

    iput v0, p0, Lnet/frakbot/glowpadbackport/HandleDrawable;->mResourceId:I

    .line 10
    iget-object p1, p1, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    invoke-virtual {p0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->resizeDrawables()V

    .line 12
    sget-object p1, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {p0, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    return-void
.end method


# virtual methods
.method public createDrawable(Landroid/content/res/Resources;IIII)Landroid/graphics/drawable/Drawable;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 2
    :goto_0
    instance-of v1, p2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p2, :cond_4

    if-eqz p4, :cond_2

    .line 3
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, p4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 4
    :cond_2
    new-instance p4, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {p4, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5
    invoke-virtual {p4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p3, 0x1

    .line 6
    invoke-virtual {p4, p3, p3, p3, p3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 7
    iget v0, p0, Lnet/frakbot/glowpadbackport/HandleDrawable;->mHandleSize:I

    if-nez v0, :cond_3

    sget v0, Lnet/frakbot/glowpadbackport/R$drawable;->shadow:I

    goto :goto_1

    :cond_3
    sget v0, Lnet/frakbot/glowpadbackport/R$drawable;->shadow_mini:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 8
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p4, v0, p3

    const/4 p1, 0x2

    aput-object p2, v0, p1

    invoke-direct {v6, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    move-object v0, v6

    move v2, p5

    move v3, p5

    move v4, p5

    move v5, p5

    .line 9
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 10
    invoke-virtual {v6}, Landroid/graphics/drawable/LayerDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/HandleDrawable;->mResourceId:I

    return v0
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    iput-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    invoke-virtual {p0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->resizeDrawables()V

    .line 4
    sget-object p1, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {p0, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;IIII)V
    .locals 7

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    sget v0, Lnet/frakbot/glowpadbackport/R$dimen;->fab_shadow_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    if-nez p5, :cond_1

    .line 6
    sget p5, Lnet/frakbot/glowpadbackport/R$dimen;->fab_size_normal:I

    goto :goto_0

    :cond_1
    sget p5, Lnet/frakbot/glowpadbackport/R$dimen;->fab_size_mini:I

    :goto_0
    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    mul-int/lit8 v0, v6, 0x2

    add-int/2addr v0, p5

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 7
    invoke-virtual/range {v1 .. v6}, Lnet/frakbot/glowpadbackport/HandleDrawable;->createDrawable(Landroid/content/res/Resources;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p0, v0, v0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->resizeDrawables(II)V

    .line 9
    sget-object p1, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {p0, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    return-void
.end method
