.class public Lpk4$d;
.super Lpk4$b;
.source "SourceFile"

# interfaces
.implements Lbm4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lpk4$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lpk4$d<",
        "TMessageType;TBuilderType;>;>",
        "Lpk4$b<",
        "TMessageType;TBuilderType;>;",
        "Lbm4;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lpk4$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lpk4$b;-><init>(Lpk4;)V

    return-void
.end method


# virtual methods
.method public f()V
    .locals 2

    .line 1
    invoke-super {p0}, Lpk4$b;->f()V

    .line 2
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    move-object v1, v0

    check-cast v1, Lpk4$c;

    check-cast v0, Lpk4$c;

    iget-object v0, v0, Lpk4$c;->zzc:Lkk4;

    invoke-virtual {v0}, Lkk4;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkk4;

    iput-object v0, v1, Lpk4$c;->zzc:Lkk4;

    return-void
.end method

.method public synthetic g()Lpk4;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lpk4$d;->n()Lam4;

    move-result-object v0

    check-cast v0, Lpk4$c;

    return-object v0
.end method

.method public synthetic n()Lam4;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lpk4$b;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    check-cast v0, Lpk4$c;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lpk4$b;->f:Lpk4;

    check-cast v0, Lpk4$c;

    iget-object v0, v0, Lpk4$c;->zzc:Lkk4;

    invoke-virtual {v0}, Lkk4;->h()V

    .line 4
    invoke-super {p0}, Lpk4$b;->g()Lpk4;

    move-result-object v0

    check-cast v0, Lpk4$c;

    return-object v0
.end method
