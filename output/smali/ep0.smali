.class public final synthetic Lep0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lfp0;

.field public final f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lfp0;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lep0;->e:Lfp0;

    iput-object p2, p0, Lep0;->f:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lep0;->e:Lfp0;

    iget-object v1, p0, Lep0;->f:Landroid/graphics/Bitmap;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v2, Lk53;->f:Lk53;

    new-instance v2, Lr53;

    invoke-direct {v2}, Lr53;-><init>()V

    .line 3
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4
    iget-object v1, v0, Lfp0;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, v0, Lfp0;->a:Lja3$b;

    .line 6
    invoke-static {}, Lja3$f;->A()Lja3$f$b;

    move-result-object v3

    .line 7
    invoke-virtual {v2}, Lr53;->a()Lk53;

    move-result-object v2

    .line 8
    iget-boolean v5, v3, Ls63$b;->g:Z

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 10
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 11
    :cond_0
    iget-object v5, v3, Ls63$b;->f:Ls63;

    check-cast v5, Lja3$f;

    invoke-static {v5, v2}, Lja3$f;->x(Lja3$f;Lk53;)V

    const-string v2, "image/png"

    .line 12
    iget-boolean v5, v3, Ls63$b;->g:Z

    if-eqz v5, :cond_1

    .line 13
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 14
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 15
    :cond_1
    iget-object v5, v3, Ls63$b;->f:Ls63;

    check-cast v5, Lja3$f;

    invoke-static {v5, v2}, Lja3$f;->z(Lja3$f;Ljava/lang/String;)V

    .line 16
    sget-object v2, Lja3$f$a;->g:Lja3$f$a;

    .line 17
    iget-boolean v5, v3, Ls63$b;->g:Z

    if-eqz v5, :cond_2

    .line 18
    invoke-virtual {v3}, Ls63$b;->o()V

    .line 19
    iput-boolean v4, v3, Ls63$b;->g:Z

    .line 20
    :cond_2
    iget-object v5, v3, Ls63$b;->f:Ls63;

    check-cast v5, Lja3$f;

    invoke-static {v5, v2}, Lja3$f;->y(Lja3$f;Lja3$f$a;)V

    .line 21
    invoke-virtual {v3}, Ls63$b;->j()Le83;

    move-result-object v2

    check-cast v2, Ls63;

    check-cast v2, Lja3$f;

    .line 22
    iget-boolean v3, v0, Ls63$b;->g:Z

    if-eqz v3, :cond_3

    .line 23
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 24
    iput-boolean v4, v0, Ls63$b;->g:Z

    .line 25
    :cond_3
    iget-object v0, v0, Ls63$b;->f:Ls63;

    check-cast v0, Lja3;

    invoke-static {v0, v2}, Lja3;->A(Lja3;Lja3$f;)V

    .line 26
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
