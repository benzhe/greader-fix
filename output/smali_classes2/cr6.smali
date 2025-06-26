.class public Lcr6;
.super Ll07;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ldr6;


# direct methods
.method public constructor <init>(Ldr6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcr6;->a:Ldr6;

    invoke-direct {p0}, Ll07;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Lhz6;->i()Lty6;

    move-result-object p2

    invoke-interface {p2, p1}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcr6;->a:Ldr6;

    iget-object p3, p2, Ldr6;->d:Lt07;

    .line 5
    iget-object p3, p3, Lt07;->b:Landroid/view/View;

    const v0, 0x7f09034d

    .line 6
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lpl/droidsonroids/gif/GifImageView;

    iput-object p3, p2, Ldr6;->c:Lpl/droidsonroids/gif/GifImageView;

    .line 7
    :try_start_0
    iget-object p2, p0, Lcr6;->a:Ldr6;

    new-instance p3, Lr78;

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Lpl/droidsonroids/gif/GifInfoHandle;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p3, v1, v0, v0, v2}, Lr78;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lr78;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 10
    iput-object p3, p2, Ldr6;->b:Lr78;

    .line 11
    iget-object p2, p0, Lcr6;->a:Ldr6;

    iget-object p3, p2, Ldr6;->c:Lpl/droidsonroids/gif/GifImageView;

    iget-object p2, p2, Ldr6;->b:Lr78;

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 13
    iget-object p2, p0, Lcr6;->a:Ldr6;

    iget-object p2, p2, Ldr6;->c:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void
.end method
