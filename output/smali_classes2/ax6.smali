.class public Lax6;
.super Lqw6;
.source "SourceFile"


# static fields
.field public static final synthetic j:I


# instance fields
.field public e:Landroid/view/View;

.field public f:Lcom/noinnion/android/view/progress/DonutProgress;

.field public g:Lpl/droidsonroids/gif/GifImageView;

.field public h:Lr78;

.field public i:Ltx6;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lqw6;-><init>()V

    return-void
.end method


# virtual methods
.method public final d(Ljava/io/File;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Lr78;

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-direct {v2, p1, v0}, Lpl/droidsonroids/gif/GifInfoHandle;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, p1, v3}, Lr78;-><init>(Lpl/droidsonroids/gif/GifInfoHandle;Lr78;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    .line 4
    iput-object v1, p0, Lax6;->h:Lr78;

    .line 5
    iget-object p1, p0, Lax6;->g:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p0, Lax6;->g:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lrb;->dismissAllowingStateLoss()V

    .line 8
    :goto_0
    iget-object p1, p0, Lax6;->f:Lcom/noinnion/android/view/progress/DonutProgress;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lax6;->g:Lpl/droidsonroids/gif/GifImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lrb;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "url"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lhz6;->j()Lhz6;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lhz6;->i()Lty6;

    move-result-object p1

    invoke-interface {p1, v2}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0, p1, v0}, Lax6;->d(Ljava/io/File;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lux6;->n()Lux6;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lhz6;->i()Lty6;

    move-result-object p1

    invoke-interface {p1, v2}, Lty6;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {p0, p1, v0}, Lax6;->d(Ljava/io/File;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance p1, Ltx6;

    invoke-direct {p1, v2}, Ltx6;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lax6;->i:Ltx6;

    .line 13
    invoke-virtual {v1, p1}, Lhz6;->b(Lg07;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 14
    new-instance v5, Lbx6;

    invoke-direct {v5, p0}, Lbx6;-><init>(Lax6;)V

    new-instance v6, Lcx6;

    invoke-direct {v6, p0}, Lcx6;-><init>(Lax6;)V

    invoke-virtual/range {v1 .. v6}, Lhz6;->m(Ljava/lang/String;Luz6;Lgz6;Ll07;Lk07;)V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    sget p2, Lcom/noinnion/android/reader/R$layout;->media_gif_fragment:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lax6;->e:Landroid/view/View;

    .line 2
    new-instance p2, Lax6$a;

    invoke-direct {p2, p0}, Lax6$a;-><init>(Lax6;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object p1, p0, Lax6;->e:Landroid/view/View;

    sget p2, Lcom/noinnion/android/reader/R$id;->v_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/noinnion/android/view/progress/DonutProgress;

    iput-object p1, p0, Lax6;->f:Lcom/noinnion/android/view/progress/DonutProgress;

    .line 4
    iget-object p1, p0, Lax6;->e:Landroid/view/View;

    sget p2, Lcom/noinnion/android/reader/R$id;->v_gif_texture_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lpl/droidsonroids/gif/GifImageView;

    iput-object p1, p0, Lax6;->g:Lpl/droidsonroids/gif/GifImageView;

    .line 5
    iget-object p1, p0, Lax6;->e:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Lax6;->i:Ltx6;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lux6;->n()Lux6;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lax6;->i:Ltx6;

    invoke-virtual {v0, v1}, Lhz6;->b(Lg07;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lax6;->h:Lr78;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lr78;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lax6;->h:Lr78;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lr78;->f:Z

    .line 8
    iget-object v1, v0, Lr78;->q:Lw78;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 9
    iget-object v1, v0, Lr78;->k:Lpl/droidsonroids/gif/GifInfoHandle;

    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->e()V

    .line 10
    iget-object v0, v0, Lr78;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Lrb;->onStart()V

    .line 2
    invoke-virtual {p0}, Lrb;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
