.class public Lpk4$b;
.super Lpj4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lpk4<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lpk4$b<",
        "TMessageType;TBuilderType;>;>",
        "Lpj4<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final e:Lpk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public f:Lpk4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lpk4;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lpj4;-><init>()V

    .line 2
    iput-object p1, p0, Lpk4$b;->e:Lpk4;

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v1}, Lpk4;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Lpk4;

    iput-object p1, p0, Lpk4$b;->f:Lpk4;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lpk4$b;->g:Z

    return-void
.end method

.method public static d(Lpk4;Lpk4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lkm4;->c:Lkm4;

    .line 2
    invoke-virtual {v0, p0}, Lkm4;->b(Ljava/lang/Object;)Lom4;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lom4;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c(Lpk4;)Lpk4$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lpk4$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lpk4$b;->f()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lpk4$b;->g:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    invoke-static {v0, p1}, Lpk4$b;->d(Lpk4;Lpk4;)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpk4$b;->e:Lpk4;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lpk4;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lpk4$b;

    .line 4
    invoke-virtual {p0}, Lpk4$b;->n()Lam4;

    move-result-object v1

    check-cast v1, Lpk4;

    invoke-virtual {v0, v1}, Lpk4$b;->c(Lpk4;)Lpk4$b;

    return-object v0
.end method

.method public f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2, v2}, Lpk4;->j(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lpk4;

    .line 4
    iget-object v1, p0, Lpk4$b;->f:Lpk4;

    .line 5
    sget-object v2, Lkm4;->c:Lkm4;

    .line 6
    invoke-virtual {v2, v0}, Lkm4;->b(Ljava/lang/Object;)Lom4;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lom4;->d(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p0, Lpk4$b;->f:Lpk4;

    return-void
.end method

.method public g()Lpk4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lpk4$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    .line 4
    sget-object v1, Lkm4;->c:Lkm4;

    .line 5
    invoke-virtual {v1, v0}, Lkm4;->b(Ljava/lang/Object;)Lom4;

    move-result-object v1

    invoke-interface {v1, v0}, Lom4;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lpk4$b;->g:Z

    .line 7
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    return-object v0
.end method

.method public j()Lam4;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lpk4$b;->n()Lam4;

    move-result-object v0

    check-cast v0, Lpk4;

    .line 2
    invoke-virtual {v0}, Lpk4;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Lan4;

    invoke-direct {v0}, Lan4;-><init>()V

    .line 4
    throw v0
.end method

.method public final synthetic m()Lam4;
    .locals 1

    .line 1
    iget-object v0, p0, Lpk4$b;->e:Lpk4;

    return-object v0
.end method

.method public synthetic n()Lam4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpk4$b;->g()Lpk4;

    move-result-object v0

    return-object v0
.end method
