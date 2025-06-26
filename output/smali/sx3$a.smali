.class public Lsx3$a;
.super Lkw3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsx3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lsx3<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lsx3$a<",
        "TMessageType;TBuilderType;>;>",
        "Lkw3<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field public final e:Lsx3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public f:Lsx3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Lsx3;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lkw3;-><init>()V

    iput-object p1, p0, Lsx3$a;->e:Lsx3;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lsx3;->d(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsx3;

    iput-object p1, p0, Lsx3$a;->f:Lsx3;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lsx3$a;->g:Z

    return-void
.end method


# virtual methods
.method public final synthetic b()Lxy3;
    .locals 1

    iget-object v0, p0, Lsx3$a;->e:Lsx3;

    return-object v0
.end method

.method public final c(Lsx3;)Lsx3$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lsx3$a;->d()V

    iget-object v0, p0, Lsx3$a;->f:Lsx3;

    .line 1
    sget-object v1, Liz3;->c:Liz3;

    .line 2
    invoke-virtual {v1, v0}, Liz3;->b(Ljava/lang/Object;)Lnz3;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lnz3;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lsx3$a;->e:Lsx3;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lsx3;->d(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx3$a;

    invoke-virtual {p0}, Lsx3$a;->e()Lxy3;

    move-result-object v1

    check-cast v1, Lsx3;

    invoke-virtual {v0, v1}, Lsx3$a;->c(Lsx3;)Lsx3$a;

    return-object v0
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lsx3$a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsx3$a;->f:Lsx3;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lsx3;->d(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsx3;

    iget-object v1, p0, Lsx3$a;->f:Lsx3;

    .line 1
    sget-object v2, Liz3;->c:Liz3;

    .line 2
    invoke-virtual {v2, v0}, Liz3;->b(Ljava/lang/Object;)Lnz3;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lnz3;->g(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    iput-object v0, p0, Lsx3$a;->f:Lsx3;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsx3$a;->g:Z

    :cond_0
    return-void
.end method

.method public e()Lxy3;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsx3$a;->g:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsx3$a;->f:Lsx3;

    .line 2
    sget-object v1, Liz3;->c:Liz3;

    .line 3
    invoke-virtual {v1, v0}, Liz3;->b(Ljava/lang/Object;)Lnz3;

    move-result-object v1

    invoke-interface {v1, v0}, Lnz3;->b(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsx3$a;->g:Z

    :goto_0
    iget-object v0, p0, Lsx3$a;->f:Lsx3;

    return-object v0
.end method
