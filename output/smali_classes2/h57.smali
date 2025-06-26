.class public abstract Lh57;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb97;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh57$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg37;)V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Le57;

    .line 2
    iget-object v0, v0, Le57;->b:Ls67;

    const-string v1, "compressor"

    .line 3
    invoke-static {p1, v1}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg37;

    invoke-interface {v0, p1}, Ls67;->a(Lg37;)Ls67;

    return-void
.end method

.method public final flush()V
    .locals 2

    .line 1
    move-object v0, p0

    check-cast v0, Le57;

    .line 2
    iget-object v1, v0, Le57;->b:Ls67;

    .line 3
    invoke-interface {v1}, Ls67;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, v0, Le57;->b:Ls67;

    .line 5
    invoke-interface {v0}, Ls67;->flush()V

    :cond_0
    return-void
.end method

.method public final l(Ljava/io/InputStream;)V
    .locals 1

    const-string v0, "message"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    :try_start_0
    move-object v0, p0

    check-cast v0, Le57;

    .line 3
    iget-object v0, v0, Le57;->b:Ls67;

    .line 4
    invoke-interface {v0}, Ls67;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    move-object v0, p0

    check-cast v0, Le57;

    .line 6
    iget-object v0, v0, Le57;->b:Ls67;

    .line 7
    invoke-interface {v0, p1}, Ls67;->b(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    invoke-static {p1}, Lu67;->b(Ljava/io/InputStream;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {p1}, Lu67;->b(Ljava/io/InputStream;)V

    throw v0
.end method
