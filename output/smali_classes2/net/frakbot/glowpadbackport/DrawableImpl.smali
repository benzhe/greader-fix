.class public Lnet/frakbot/glowpadbackport/DrawableImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_INACTIVE:[I

.field private static final TAG:Ljava/lang/String; = "DrawableImpl"

.field public static mGetStateCount:Ljava/lang/reflect/Method;

.field public static mGetStateDrawable:Ljava/lang/reflect/Method;

.field public static mGetStateDrawableIndex:Ljava/lang/reflect/Method;


# instance fields
.field private mAlpha:F

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mEnabled:Z

.field private mPositionX:F

.field private mPositionY:F

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, [I

    const-string v1, "DrawableImpl"

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    sput-object v3, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_ACTIVE:[I

    new-array v2, v2, [I

    .line 2
    fill-array-data v2, :array_1

    sput-object v2, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_INACTIVE:[I

    const/4 v2, 0x3

    new-array v2, v2, [I

    .line 3
    fill-array-data v2, :array_2

    sput-object v2, Lnet/frakbot/glowpadbackport/DrawableImpl;->STATE_FOCUSED:[I

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    :try_start_0
    const-class v4, Landroid/graphics/drawable/StateListDrawable;

    const-string v5, "getStateCount"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateCount:Ljava/lang/reflect/Method;

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "Couldn\'t access the StateListDrawable#getStateCount() method. Some stuff might break!"

    .line 6
    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    :try_start_1
    const-class v4, Landroid/graphics/drawable/StateListDrawable;

    const-string v5, "getStateDrawable"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateDrawable:Ljava/lang/reflect/Method;

    .line 8
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    const-string v5, "Couldn\'t access the StateListDrawable#getStateDrawable(int) method. Some stuff might break!"

    .line 9
    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10
    :goto_1
    :try_start_2
    const-class v4, Landroid/graphics/drawable/StateListDrawable;

    const-string v5, "getStateDrawableIndex"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateDrawableIndex:Ljava/lang/reflect/Method;

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 12
    :catch_2
    :try_start_3
    const-class v4, Landroid/graphics/drawable/StateListDrawable;

    const-string v5, "findStateDrawableIndex"

    new-array v6, v3, [Ljava/lang/Class;

    aput-object v0, v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateDrawableIndex:Ljava/lang/reflect/Method;

    .line 13
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    const-string v2, "Couldn\'t access the StateListDrawable#mGetStateDrawableIndex(int[]) method. Some stuff might break!"

    .line 14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :array_0
    .array-data 4
        0x101009e
        0x10100a2
    .end array-data

    :array_1
    .array-data 4
        0x101009e
        -0x10100a2
    .end array-data

    :array_2
    .array-data 4
        0x101009e
        -0x10100a2
        0x101009c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mTranslationX:F

    .line 3
    iput v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mTranslationY:F

    .line 4
    iput v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionX:F

    .line 5
    iput v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionY:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    iput v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mScaleX:F

    .line 7
    iput v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mScaleY:F

    .line 8
    iput v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mAlpha:F

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mScaleX:F

    iget v1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mScaleY:F

    iget v2, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionX:F

    iget v3, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 4
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mTranslationX:F

    iget v1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mTranslationY:F

    iget v2, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 5
    invoke-virtual {p0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, -0x41000000    # -0.5f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lnet/frakbot/glowpadbackport/DrawableImpl;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 7
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPositionX()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getX()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mTranslationY:F

    return v0
.end method

.method public hasState([I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    :try_start_0
    sget-object v1, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateDrawableIndex:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception p1

    const-string v0, "DrawableImpl"

    const-string v1, "StateListDrawable#getStateDrawableIndex(int[]) call failed!"

    .line 4
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v2
.end method

.method public isActive()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    const v5, 0x101009c

    if-ne v4, v5, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resizeDrawables()V
    .locals 12

    const-string v0, "DrawableImpl"

    .line 1
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 2
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 4
    :try_start_0
    sget-object v4, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateCount:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "StateListDrawable#getStateCount() call failed!"

    .line 5
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 6
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "StateListDrawable#getStateDrawable(int) call failed!"

    const/4 v9, 0x1

    if-ge v4, v7, :cond_0

    .line 7
    :try_start_1
    sget-object v7, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateDrawable:Ljava/lang/reflect/Method;

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v7, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 8
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 9
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_2

    :catch_1
    move-exception v7

    .line 10
    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {v1, v3, v3, v5, v6}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    const/4 v4, 0x0

    .line 12
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 13
    :try_start_2
    sget-object v7, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateDrawable:Ljava/lang/reflect/Method;

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-virtual {v7, v1, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 14
    invoke-virtual {v7, v3, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_4

    :catch_2
    move-exception v7

    .line 15
    invoke-static {v0, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v2, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 17
    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method

.method public resizeDrawables(II)V
    .locals 8

    const-string v0, "DrawableImpl"

    .line 18
    iget-object v1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/StateListDrawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 19
    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 21
    :try_start_0
    sget-object v4, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateCount:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "StateListDrawable#getStateCount() call failed!"

    .line 22
    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :goto_0
    invoke-virtual {v1, v3, v3, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    const/4 v4, 0x0

    .line 24
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 25
    :try_start_1
    sget-object v5, Lnet/frakbot/glowpadbackport/DrawableImpl;->mGetStateDrawable:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v5, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 26
    invoke-virtual {v5, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :catch_1
    move-exception v5

    const-string v6, "StateListDrawable#getStateDrawable(int) call failed!"

    .line 27
    invoke-static {v0, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    if-eqz v1, :cond_1

    .line 28
    invoke-virtual {v1, v3, v3, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mAlpha:F

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mEnabled:Z

    return-void
.end method

.method public setPositionX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionX:F

    return-void
.end method

.method public setPositionY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mPositionY:F

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mScaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mScaleY:F

    return-void
.end method

.method public setState([I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mTranslationX:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/frakbot/glowpadbackport/DrawableImpl;->mTranslationY:F

    return-void
.end method
