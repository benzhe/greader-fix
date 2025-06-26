.class public final Lt57$b$b;
.super Lf67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt57$b;->a(Lc97$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic f:Lc97$a;

.field public final synthetic g:Lt57$b;


# direct methods
.method public constructor <init>(Lt57$b;Ldb7;Lc97$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lt57$b$b;->g:Lt57$b;

    iput-object p3, p0, Lt57$b$b;->f:Lc97$a;

    .line 2
    iget-object p1, p1, Lt57$b;->c:Lt57;

    .line 3
    iget-object p1, p1, Lt57;->e:Ll37;

    .line 4
    invoke-direct {p0, p1}, Lf67;-><init>(Ll37;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lt57$b$b;->g:Lt57$b;

    iget-object v0, v0, Lt57$b;->c:Lt57;

    .line 2
    iget-object v0, v0, Lt57;->b:Lfb7;

    .line 3
    sget-object v0, Leb7;->a:Lcb7;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lt57$b$b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lt57$b$b;->g:Lt57$b;

    iget-object v1, v1, Lt57$b;->c:Lt57;

    .line 8
    iget-object v1, v1, Lt57;->b:Lfb7;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lt57$b$b;->g:Lt57$b;

    iget-object v1, v1, Lt57$b;->c:Lt57;

    .line 11
    iget-object v1, v1, Lt57;->b:Lfb7;

    .line 12
    sget-object v1, Leb7;->a:Lcb7;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    throw v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lt57$b$b;->g:Lt57$b;

    .line 2
    iget-boolean v0, v0, Lt57$b;->b:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lt57$b$b;->f:Lc97$a;

    .line 4
    sget-object v1, Lu67;->a:Ljava/util/logging/Logger;

    .line 5
    :goto_0
    invoke-interface {v0}, Lc97$a;->next()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {v1}, Lu67;->b(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    return-void

    .line 7
    :cond_1
    :goto_1
    :try_start_0
    iget-object v0, p0, Lt57$b$b;->f:Lc97$a;

    invoke-interface {v0}, Lc97$a;->next()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_3

    .line 8
    :try_start_1
    iget-object v1, p0, Lt57$b$b;->g:Lt57$b;

    .line 9
    iget-object v2, v1, Lt57$b;->a:La37$a;

    .line 10
    iget-object v1, v1, Lt57$b;->c:Lt57;

    .line 11
    iget-object v1, v1, Lt57;->a:Lj47;

    .line 12
    iget-object v1, v1, Lj47;->e:Lj47$c;

    invoke-interface {v1, v0}, Lj47$c;->a(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 13
    invoke-virtual {v2, v1}, La37$a;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v0}, Lu67;->b(Ljava/io/InputStream;)V

    .line 16
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 17
    iget-object v1, p0, Lt57$b$b;->f:Lc97$a;

    .line 18
    sget-object v2, Lu67;->a:Ljava/util/logging/Logger;

    .line 19
    :goto_2
    invoke-interface {v1}, Lc97$a;->next()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 20
    invoke-static {v2}, Lu67;->b(Ljava/io/InputStream;)V

    goto :goto_2

    .line 21
    :cond_2
    sget-object v1, Lx47;->g:Lx47;

    .line 22
    invoke-virtual {v1, v0}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object v0

    const-string v1, "Failed to read message."

    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lt57$b$b;->g:Lt57$b;

    iget-object v1, v1, Lt57$b;->c:Lt57;

    .line 24
    iget-object v1, v1, Lt57;->i:Ly57;

    .line 25
    invoke-interface {v1, v0}, Ly57;->f(Lx47;)V

    .line 26
    iget-object v1, p0, Lt57$b$b;->g:Lt57$b;

    new-instance v2, Li47;

    invoke-direct {v2}, Li47;-><init>()V

    invoke-static {v1, v0, v2}, Lt57$b;->f(Lt57$b;Lx47;Li47;)V

    :cond_3
    return-void
.end method
