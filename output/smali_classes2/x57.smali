.class public final Lx57;
.super Lf67;
.source "SourceFile"


# instance fields
.field public final synthetic f:Lx47;

.field public final synthetic g:Li47;

.field public final synthetic h:Lt57$b;


# direct methods
.method public constructor <init>(Lt57$b;Ldb7;Lx47;Li47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lx57;->h:Lt57$b;

    iput-object p3, p0, Lx57;->f:Lx47;

    iput-object p4, p0, Lx57;->g:Li47;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lx57;->h:Lt57$b;

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
    iget-object v1, p0, Lx57;->h:Lt57$b;

    .line 7
    iget-boolean v2, v1, Lt57$b;->b:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, p0, Lx57;->f:Lx47;

    iget-object v3, p0, Lx57;->g:Li47;

    invoke-static {v1, v2, v3}, Lt57$b;->f(Lt57$b;Lx47;Li47;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :goto_0
    iget-object v1, p0, Lx57;->h:Lt57$b;

    iget-object v1, v1, Lt57$b;->c:Lt57;

    .line 10
    iget-object v1, v1, Lt57;->b:Lfb7;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lx57;->h:Lt57$b;

    iget-object v1, v1, Lt57$b;->c:Lt57;

    .line 13
    iget-object v1, v1, Lt57;->b:Lfb7;

    .line 14
    sget-object v1, Leb7;->a:Lcb7;

    .line 15
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    throw v0
.end method
