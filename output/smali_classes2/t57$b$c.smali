.class public final Lt57$b$c;
.super Lf67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt57$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic f:Lt57$b;


# direct methods
.method public constructor <init>(Lt57$b;Ldb7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lt57$b$c;->f:Lt57$b;

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
    iget-object v0, p0, Lt57$b$c;->f:Lt57$b;

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
    invoke-virtual {p0}, Lt57$b$c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v1, p0, Lt57$b$c;->f:Lt57$b;

    iget-object v1, v1, Lt57$b;->c:Lt57;

    .line 8
    iget-object v1, v1, Lt57;->b:Lfb7;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lt57$b$c;->f:Lt57$b;

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
    :try_start_0
    iget-object v0, p0, Lt57$b$c;->f:Lt57$b;

    .line 2
    iget-object v0, v0, Lt57$b;->a:La37$a;

    .line 3
    invoke-virtual {v0}, La37$a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 4
    sget-object v1, Lx47;->g:Lx47;

    .line 5
    invoke-virtual {v1, v0}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object v0

    const-string v1, "Failed to call onReady."

    invoke-virtual {v0, v1}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lt57$b$c;->f:Lt57$b;

    iget-object v1, v1, Lt57$b;->c:Lt57;

    .line 7
    iget-object v1, v1, Lt57;->i:Ly57;

    .line 8
    invoke-interface {v1, v0}, Ly57;->f(Lx47;)V

    .line 9
    iget-object v1, p0, Lt57$b$c;->f:Lt57$b;

    new-instance v2, Li47;

    invoke-direct {v2}, Li47;-><init>()V

    invoke-static {v1, v0, v2}, Lt57$b;->f(Lt57$b;Lx47;Li47;)V

    :goto_0
    return-void
.end method
