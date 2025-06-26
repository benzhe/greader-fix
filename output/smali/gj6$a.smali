.class public abstract Lgj6$a;
.super Lii6$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgj6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lgj6<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lgj6$a<",
        "TMessageType;TBuilderType;>;>",
        "Lii6$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final e:Lgj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public f:Lgj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lgj6;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lii6$a;-><init>()V

    .line 2
    iput-object p1, p0, Lgj6$a;->e:Lgj6;

    .line 3
    sget-object v0, Lgj6$f;->h:Lgj6$f;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lgj6;

    iput-object p1, p0, Lgj6$a;->f:Lgj6;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lgj6$a;->g:Z

    return-void
.end method


# virtual methods
.method public c()Lak6;
    .locals 1

    .line 1
    iget-object v0, p0, Lgj6$a;->e:Lgj6;

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lgj6$a;->e:Lgj6;

    .line 2
    invoke-virtual {v0}, Lgj6;->w()Lgj6$a;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lgj6$a;->m()Lgj6;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgj6$a;->p(Lgj6;)Lgj6$a;

    return-object v0
.end method

.method public final l()Lgj6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgj6$a;->m()Lgj6;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lgj6;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lxk6;

    invoke-direct {v0}, Lxk6;-><init>()V

    .line 4
    throw v0
.end method

.method public m()Lgj6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lgj6$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Llk6;->c:Llk6;

    .line 6
    invoke-virtual {v1, v0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v1

    invoke-interface {v1, v0}, Lqk6;->f(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lgj6$a;->g:Z

    .line 8
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    return-object v0
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lgj6$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    sget-object v1, Lgj6$f;->h:Lgj6$f;

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, v2, v2}, Lgj6;->r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Lgj6;

    .line 5
    iget-object v1, p0, Lgj6$a;->f:Lgj6;

    .line 6
    sget-object v2, Llk6;->c:Llk6;

    .line 7
    invoke-virtual {v2, v0}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lqk6;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    iput-object v0, p0, Lgj6$a;->f:Lgj6;

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lgj6$a;->g:Z

    :cond_0
    return-void
.end method

.method public p(Lgj6;)Lgj6$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    invoke-virtual {p0, v0, p1}, Lgj6$a;->q(Lgj6;Lgj6;)V

    return-object p0
.end method

.method public final q(Lgj6;Lgj6;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Llk6;->c:Llk6;

    .line 2
    invoke-virtual {v0, p1}, Llk6;->b(Ljava/lang/Object;)Lqk6;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lqk6;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
