.class public final Lpz6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lkz6;

.field public final f:Landroid/graphics/Bitmap;

.field public final g:Llz6;

.field public final h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lkz6;Landroid/graphics/Bitmap;Llz6;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lpz6;->e:Lkz6;

    .line 3
    iput-object p2, p0, Lpz6;->f:Landroid/graphics/Bitmap;

    .line 4
    iput-object p3, p0, Lpz6;->g:Llz6;

    .line 5
    iput-object p4, p0, Lpz6;->h:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lpz6;->g:Llz6;

    iget-object v1, v1, Llz6;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PostProcess image before displaying [%s]"

    invoke-static {v1, v0}, Lp07;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lpz6;->g:Llz6;

    iget-object v0, v0, Llz6;->e:Lgz6;

    .line 3
    iget-object v0, v0, Lgz6;->p:Lm07;

    .line 4
    iget-object v1, p0, Lpz6;->f:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lm07;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5
    new-instance v1, Lfz6;

    iget-object v2, p0, Lpz6;->g:Llz6;

    iget-object v3, p0, Lpz6;->e:Lkz6;

    sget-object v4, Lvz6;->g:Lvz6;

    invoke-direct {v1, v0, v2, v3, v4}, Lfz6;-><init>(Landroid/graphics/Bitmap;Llz6;Lkz6;Lvz6;)V

    .line 6
    iget-object v0, p0, Lpz6;->g:Llz6;

    iget-object v0, v0, Llz6;->e:Lgz6;

    .line 7
    iget-boolean v0, v0, Lgz6;->s:Z

    .line 8
    iget-object v2, p0, Lpz6;->h:Landroid/os/Handler;

    iget-object v3, p0, Lpz6;->e:Lkz6;

    invoke-static {v1, v0, v2, v3}, Lnz6;->j(Ljava/lang/Runnable;ZLandroid/os/Handler;Lkz6;)V

    return-void
.end method
