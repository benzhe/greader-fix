.class public Lpl/droidsonroids/gif/GifTextureView;
.super Landroid/view/TextureView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl/droidsonroids/gif/GifTextureView$b;
    }
.end annotation


# static fields
.field public static final k:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field public e:Landroid/widget/ImageView$ScaleType;

.field public final f:Landroid/graphics/Matrix;

.field public g:Lv78;

.field public h:Z

.field public i:Lpl/droidsonroids/gif/GifTextureView$b;

.field public j:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/widget/ImageView$ScaleType;

    .line 1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lpl/droidsonroids/gif/GifTextureView;->k:[Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Landroid/widget/ImageView$ScaleType;

    .line 3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->f:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->j:F

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v0}, Lpl/droidsonroids/gif/GifTextureView;->b(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Landroid/widget/ImageView$ScaleType;

    .line 8
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->f:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->j:F

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p2, p1, p1}, Lpl/droidsonroids/gif/GifTextureView;->b(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Landroid/widget/ImageView$ScaleType;

    .line 13
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->f:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->j:F

    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p2, p3, p1}, Lpl/droidsonroids/gif/GifTextureView;->b(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static synthetic a(Lpl/droidsonroids/gif/GifTextureView;Lpl/droidsonroids/gif/GifTextureView$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setSuperSurfaceTextureListener(Lpl/droidsonroids/gif/GifTextureView$b;)V

    return-void
.end method

.method private setSuperSurfaceTextureListener(Lpl/droidsonroids/gif/GifTextureView$b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public final b(Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, -0x1

    const-string v2, "http://schemas.android.com/apk/res/android"

    const-string v3, "scaleType"

    .line 1
    invoke-interface {p1, v2, v3, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 2
    sget-object v2, Lpl/droidsonroids/gif/GifTextureView;->k:[Landroid/widget/ImageView$ScaleType;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v1, v2, v1

    iput-object v1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Landroid/widget/ImageView$ScaleType;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lpl/droidsonroids/gif/R$styleable;->GifTextureView:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 6
    sget v3, Lpl/droidsonroids/gif/R$styleable;->GifTextureView_gifSource:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 7
    :cond_1
    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 9
    sget-object v4, Lu78;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    new-instance v3, Lv78$b;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v3, v4, v2}, Lv78$b;-><init>(Landroid/content/res/Resources;I)V

    goto :goto_1

    :cond_2
    const-string v4, "string"

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Expected string, drawable, mipmap or raw resource type. \'"

    const-string p3, "\' is not supported"

    invoke-static {p2, v3, p3}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_4
    :goto_0
    new-instance v3, Lv78$a;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    iget-object v2, v2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lv78$a;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    :goto_1
    move-object v2, v3

    .line 14
    :goto_2
    iput-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Lv78;

    .line 15
    sget v2, Lpl/droidsonroids/gif/R$styleable;->GifTextureView_isOpaque:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-super {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-static {p0, p1, p2, p3}, Lu78;->c(Landroid/view/View;Landroid/util/AttributeSet;II)Z

    move-result p1

    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifTextureView;->h:Z

    goto :goto_3

    .line 18
    :cond_5
    invoke-super {p0, v0}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 19
    :goto_3
    invoke-virtual {p0}, Landroid/view/TextureView;->isInEditMode()Z

    move-result p1

    if-nez p1, :cond_6

    .line 20
    invoke-virtual {p0}, Landroid/view/TextureView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "pl_droidsonroids_gif_surface"

    invoke-static {p1, p2}, Lkt7;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    new-instance p1, Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-direct {p1, p0}, Lpl/droidsonroids/gif/GifTextureView$b;-><init>(Lpl/droidsonroids/gif/GifTextureView;)V

    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 22
    iget-object p2, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Lv78;

    if-eqz p2, :cond_6

    .line 23
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_6
    return-void
.end method

.method public final c(Lpl/droidsonroids/gif/GifInfoHandle;)V
    .locals 10

    .line 1
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 4
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    .line 5
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    .line 6
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 7
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v8, v8, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 8
    sget-object v7, Lpl/droidsonroids/gif/GifTextureView$a;->a:[I

    iget-object v8, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x40000000    # 2.0f

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 10
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    :pswitch_1
    return-void

    .line 11
    :pswitch_2
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 12
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 13
    :pswitch_3
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 14
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 15
    :pswitch_4
    sget-object p1, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v0, v5, v6, p1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 16
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_1

    .line 17
    :pswitch_5
    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->c()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gtz v5, :cond_0

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifInfoHandle;->a()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    div-float p1, v8, v3

    div-float/2addr v8, v4

    .line 18
    invoke-static {p1, v8}, Ljava/lang/Math;->min(FF)F

    move-result v8

    :goto_0
    mul-float v3, v3, v8

    mul-float v8, v8, v4

    div-float/2addr v1, v9

    div-float/2addr v2, v9

    .line 19
    invoke-virtual {v0, v3, v8, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_1

    .line 20
    :pswitch_6
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v8, p1

    mul-float v3, v3, v8

    mul-float v8, v8, v4

    div-float/2addr v1, v9

    div-float/2addr v2, v9

    .line 21
    invoke-virtual {v0, v3, v8, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    goto :goto_1

    :pswitch_7
    div-float/2addr v1, v9

    div-float/2addr v2, v9

    .line 22
    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 23
    :goto_1
    invoke-super {p0, v0}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIOException()Ljava/io/IOException;
    .locals 3

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 2
    iget-object v1, v0, Lpl/droidsonroids/gif/GifTextureView$b;->g:Ljava/io/IOException;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, v0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-wide v1, v0, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v1, v2}, Lpl/droidsonroids/gif/GifInfoHandle;->getNativeErrorCode(J)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 6
    sget v0, Lpl/droidsonroids/gif/GifIOException;->e:I

    .line 7
    sget-object v0, Ls78;->g:Ls78;

    iget v0, v0, Ls78;->f:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lpl/droidsonroids/gif/GifIOException;

    invoke-direct {v0, v1}, Lpl/droidsonroids/gif/GifIOException;-><init>(I)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0

    throw v1
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 2
    :cond_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->f:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-virtual {v0, p0}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView;)V

    .line 2
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 3
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 1
    check-cast p1, Lpl/droidsonroids/gif/GifViewSavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/TextureView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    iget-object p1, p1, Lpl/droidsonroids/gif/GifViewSavedState;->e:[[J

    const/4 v1, 0x0

    aget-object p1, p1, v1

    iput-object p1, v0, Lpl/droidsonroids/gif/GifTextureView$b;->h:[J

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 2
    iget-object v1, v0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    monitor-enter v1

    .line 4
    :try_start_0
    iget-wide v2, v1, Lpl/droidsonroids/gif/GifInfoHandle;->a:J

    invoke-static {v2, v3}, Lpl/droidsonroids/gif/GifInfoHandle;->getSavedState(J)[J

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5
    iput-object v2, v0, Lpl/droidsonroids/gif/GifTextureView$b;->h:[J

    .line 6
    new-instance v0, Lpl/droidsonroids/gif/GifViewSavedState;

    invoke-super {p0}, Landroid/view/TextureView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iget-boolean v2, p0, Lpl/droidsonroids/gif/GifTextureView;->h:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    iget-object v2, v2, Lpl/droidsonroids/gif/GifTextureView$b;->h:[J

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lpl/droidsonroids/gif/GifViewSavedState;-><init>(Landroid/os/Parcelable;[J)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit v1

    throw v0
.end method

.method public setFreezesAnimation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lpl/droidsonroids/gif/GifTextureView;->h:Z

    return-void
.end method

.method public setImageMatrix(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public declared-synchronized setInputSource(Lv78;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-virtual {v0, p0}, Lpl/droidsonroids/gif/GifTextureView$b;->a(Lpl/droidsonroids/gif/GifTextureView;)V

    .line 2
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Lv78;

    .line 3
    new-instance v0, Lpl/droidsonroids/gif/GifTextureView$b;

    invoke-direct {v0, p0}, Lpl/droidsonroids/gif/GifTextureView$b;-><init>(Lpl/droidsonroids/gif/GifTextureView;)V

    iput-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setOpaque(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/TextureView;->isOpaque()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/TextureView;->setOpaque(Z)V

    .line 3
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->g:Lv78;

    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->setInputSource(Lv78;)V

    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->e:Landroid/widget/ImageView$ScaleType;

    .line 2
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 3
    iget-object p1, p1, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 4
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->c(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    .line 1
    iput p1, p0, Lpl/droidsonroids/gif/GifTextureView;->j:F

    .line 2
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 3
    iget-object v0, v0, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 4
    invoke-virtual {v0, p1}, Lpl/droidsonroids/gif/GifInfoHandle;->f(F)V

    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing SurfaceTexture is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Changing SurfaceTextureListener is not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/GifTextureView;->f:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 2
    iget-object p1, p0, Lpl/droidsonroids/gif/GifTextureView;->i:Lpl/droidsonroids/gif/GifTextureView$b;

    .line 3
    iget-object p1, p1, Lpl/droidsonroids/gif/GifTextureView$b;->f:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 4
    invoke-virtual {p0, p1}, Lpl/droidsonroids/gif/GifTextureView;->c(Lpl/droidsonroids/gif/GifInfoHandle;)V

    return-void
.end method
