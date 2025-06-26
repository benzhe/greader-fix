.class public final Lu78;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu78$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "raw"

    const-string v1, "drawable"

    const-string v2, "mipmap"

    .line 1
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lu78;->a:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "src"

    goto :goto_0

    :cond_0
    const-string v0, "background"

    :goto_0
    const/4 v1, 0x0

    const-string v2, "http://schemas.android.com/apk/res/android"

    .line 1
    invoke-interface {p1, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v2, Lu78;->a:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0, p2, p1}, Lu78;->e(Landroid/widget/ImageView;ZI)Z

    move-result p0

    if-nez p0, :cond_1

    return p1

    :cond_1
    return v1
.end method

.method public static b(Landroid/widget/ImageView;Landroid/util/AttributeSet;II)Lu78$a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-static {p0, p1, v1}, Lu78;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result v1

    .line 3
    invoke-static {p0, p1, v0}, Lu78;->a(Landroid/widget/ImageView;Landroid/util/AttributeSet;Z)I

    move-result v0

    .line 4
    invoke-static {p0, p1, p2, p3}, Lu78;->c(Landroid/view/View;Landroid/util/AttributeSet;II)Z

    move-result p0

    .line 5
    new-instance p1, Lu78$a;

    invoke-direct {p1, v1, v0, p0}, Lu78$a;-><init>(IIZ)V

    return-object p1

    .line 6
    :cond_0
    new-instance p0, Lu78$a;

    invoke-direct {p0, v0, v0, v0}, Lu78$a;-><init>(IIZ)V

    return-object p0
.end method

.method public static c(Landroid/view/View;Landroid/util/AttributeSet;II)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lpl/droidsonroids/gif/R$styleable;->GifView:[I

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 2
    sget p1, Lpl/droidsonroids/gif/R$styleable;->GifView_freezesAnimation:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static d(Landroid/widget/ImageView;Landroid/net/Uri;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    new-instance v1, Lr78;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2
    sget-object v3, Lpl/droidsonroids/gif/GifInfoHandle;->b:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    new-instance v2, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v3, Lpl/droidsonroids/gif/GifInfoHandle;

    const-string v4, "r"

    invoke-virtual {v2, p1, v4}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;Z)V

    move-object v2, v3

    :goto_0
    const/4 p1, 0x0

    const/4 v3, 0x1

    .line 6
    invoke-direct {v1, v2, p1, p1, v3}, Lr78;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lr78;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    :cond_1
    return v0
.end method

.method public static e(Landroid/widget/ImageView;ZI)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    :try_start_0
    new-instance v1, Lr78;

    invoke-direct {v1, v0, p2}, Lr78;-><init>(Landroid/content/res/Resources;I)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return p0
.end method
