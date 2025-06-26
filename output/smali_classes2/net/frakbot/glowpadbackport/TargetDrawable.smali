.class public Lnet/frakbot/glowpadbackport/TargetDrawable;
.super Lnet/frakbot/glowpadbackport/DrawableImpl;
.source "SourceFile"


# static fields
.field private static final COLOR_ACTIVE_OVELAY:Ljava/lang/String; = "#66000000"

.field private static final COLOR_FOCUSED_OVELAY:Ljava/lang/String; = "#33000000"


# instance fields
.field private mHandleSize:I

.field private final mResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/DrawableImpl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/frakbot/glowpadbackport/TargetDrawable;->mHandleSize:I

    .line 3
    iput p2, p0, Lnet/frakbot/glowpadbackport/TargetDrawable;->mResourceId:I

    .line 4
    iput p4, p0, Lnet/frakbot/glowpadbackport/TargetDrawable;->mHandleSize:I

    if-nez p3, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lnet/frakbot/glowpadbackport/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lnet/frakbot/glowpadbackport/TargetDrawable;->setDrawable(Landroid/content/res/Resources;II)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lnet/frakbot/glowpadbackport/TargetDrawable;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnet/frakbot/glowpadbackport/DrawableImpl;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lnet/frakbot/glowpadbackport/TargetDrawable;->mHandleSize:I

    .line 9
    iget v0, p1, Lnet/frakbot/glowpadbackport/TargetDrawable;->mResourceId:I

    iput v0, p0, Lnet/frakbot/glowpadbackport/TargetDrawable;->mResourceId:I

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
.method public createDrawable(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;
    .locals 23

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2
    :goto_0
    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_3

    .line 3
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 4
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 5
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    move/from16 v4, p3

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    move-object/from16 v4, p0

    .line 7
    iget v5, v4, Lnet/frakbot/glowpadbackport/TargetDrawable;->mHandleSize:I

    if-nez v5, :cond_2

    sget v5, Lnet/frakbot/glowpadbackport/R$drawable;->shadow:I

    goto :goto_1

    :cond_2
    sget v5, Lnet/frakbot/glowpadbackport/R$drawable;->shadow_mini:I

    :goto_1
    move-object/from16 v6, p1

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 8
    new-instance v6, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v7, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v7}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v6, v7}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 9
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    .line 10
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const-string v8, "#66000000"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    const/4 v8, 0x4

    new-array v9, v8, [Landroid/graphics/drawable/Drawable;

    const/4 v15, 0x0

    aput-object v5, v9, v15

    aput-object v2, v9, v3

    const/16 v16, 0x2

    aput-object v6, v9, v16

    const/4 v14, 0x3

    aput-object v1, v9, v14

    invoke-direct {v7, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x1

    move-object v9, v7

    move/from16 v11, p4

    move/from16 v12, p4

    move/from16 v13, p4

    move/from16 v14, p4

    .line 12
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/4 v10, 0x2

    .line 13
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 14
    sget-object v9, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_ACTIVE:[I

    invoke-virtual {v0, v9, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 15
    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const-string v9, "#33000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v8, v15

    aput-object v2, v8, v3

    aput-object v6, v8, v16

    const/4 v6, 0x3

    aput-object v1, v8, v6

    invoke-direct {v7, v8}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/16 v18, 0x1

    move-object/from16 v17, v7

    move/from16 v19, p4

    move/from16 v20, p4

    move/from16 v21, p4

    move/from16 v22, p4

    .line 17
    invoke-virtual/range {v17 .. v22}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    const/16 v18, 0x2

    .line 18
    invoke-virtual/range {v17 .. v22}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 19
    sget-object v8, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_FOCUSED:[I

    invoke-virtual {v0, v8, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 20
    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v6, v15

    aput-object v2, v6, v3

    aput-object v1, v6, v16

    invoke-direct {v7, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v10, 0x1

    move-object v9, v7

    .line 21
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 22
    sget-object v1, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {v0, v1, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 23
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_3
    move-object/from16 v4, p0

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/TargetDrawable;->mResourceId:I

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

.method public setDrawable(Landroid/content/res/Resources;II)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 5
    :cond_0
    sget v0, Lnet/frakbot/glowpadbackport/R$dimen;->fab_shadow_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 6
    iget v1, p0, Lnet/frakbot/glowpadbackport/TargetDrawable;->mHandleSize:I

    if-nez v1, :cond_1

    sget v1, Lnet/frakbot/glowpadbackport/R$dimen;->fab_size_normal:I

    goto :goto_0

    :cond_1
    sget v1, Lnet/frakbot/glowpadbackport/R$dimen;->fab_size_mini:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    .line 7
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/frakbot/glowpadbackport/TargetDrawable;->createDrawable(Landroid/content/res/Resources;III)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 8
    invoke-virtual {p0, v2, v2}, Lnet/frakbot/glowpadbackport/DrawableImpl;->resizeDrawables(II)V

    .line 9
    sget-object p1, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    invoke-virtual {p0, p1}, Lnet/frakbot/glowpadbackport/DrawableImpl;->setState([I)V

    return-void
.end method
