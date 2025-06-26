.class public final Lfz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Landroid/graphics/Bitmap;

.field public final f:Ljava/lang/String;

.field public final g:Lg07;

.field public final h:Ljava/lang/String;

.field public final i:Ld07;

.field public final j:Ll07;

.field public final k:Lkz6;

.field public final l:Lvz6;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Llz6;Lkz6;Lvz6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfz6;->e:Landroid/graphics/Bitmap;

    .line 3
    iget-object p1, p2, Llz6;->a:Ljava/lang/String;

    iput-object p1, p0, Lfz6;->f:Ljava/lang/String;

    .line 4
    iget-object p1, p2, Llz6;->c:Lg07;

    iput-object p1, p0, Lfz6;->g:Lg07;

    .line 5
    iget-object p1, p2, Llz6;->b:Ljava/lang/String;

    iput-object p1, p0, Lfz6;->h:Ljava/lang/String;

    .line 6
    iget-object p1, p2, Llz6;->e:Lgz6;

    .line 7
    iget-object p1, p1, Lgz6;->q:Ld07;

    .line 8
    iput-object p1, p0, Lfz6;->i:Ld07;

    .line 9
    iget-object p1, p2, Llz6;->f:Ll07;

    iput-object p1, p0, Lfz6;->j:Ll07;

    .line 10
    iput-object p3, p0, Lfz6;->k:Lkz6;

    .line 11
    iput-object p4, p0, Lfz6;->l:Lvz6;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfz6;->g:Lg07;

    invoke-interface {v0}, Lg07;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 2
    iget-object v2, p0, Lfz6;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lfz6;->j:Ll07;

    iget-object v1, p0, Lfz6;->g:Lg07;

    invoke-interface {v1}, Lg07;->b()Landroid/view/View;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lfz6;->k:Lkz6;

    iget-object v3, p0, Lfz6;->g:Lg07;

    .line 6
    iget-object v0, v0, Lkz6;->e:Ljava/util/Map;

    invoke-interface {v3}, Lg07;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lfz6;->h:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lfz6;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lfz6;->j:Ll07;

    iget-object v1, p0, Lfz6;->g:Lg07;

    invoke-interface {v1}, Lg07;->b()Landroid/view/View;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    iget-object v3, p0, Lfz6;->l:Lvz6;

    aput-object v3, v0, v1

    iget-object v1, p0, Lfz6;->h:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    invoke-static {v1, v0}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    iget-object v0, p0, Lfz6;->i:Ld07;

    iget-object v1, p0, Lfz6;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lfz6;->g:Lg07;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v2, v1}, Lg07;->e(Landroid/graphics/Bitmap;)Z

    .line 15
    iget-object v0, p0, Lfz6;->k:Lkz6;

    iget-object v1, p0, Lfz6;->g:Lg07;

    invoke-virtual {v0, v1}, Lkz6;->a(Lg07;)V

    .line 16
    iget-object v0, p0, Lfz6;->j:Ll07;

    iget-object v1, p0, Lfz6;->f:Ljava/lang/String;

    iget-object v2, p0, Lfz6;->g:Lg07;

    invoke-interface {v2}, Lg07;->b()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lfz6;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Ll07;->a(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method
