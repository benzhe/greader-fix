.class public final Lah7;
.super Lwb7;
.source "SourceFile"

# interfaces
.implements Lld7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwb7<",
        "TT;>;",
        "Lld7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lwb7;-><init>()V

    .line 2
    iput-object p1, p0, Lah7;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lah7;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public f(Lyb7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lch7;

    iget-object v1, p0, Lah7;->e:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lch7;-><init>(Lyb7;Ljava/lang/Object;)V

    .line 2
    invoke-interface {p1, v0}, Lyb7;->c(Lic7;)V

    .line 3
    invoke-virtual {v0}, Lch7;->run()V

    return-void
.end method
