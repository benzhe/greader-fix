.class public final Lkg7;
.super Lrb7;
.source "SourceFile"

# interfaces
.implements Lld7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrb7<",
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
    invoke-direct {p0}, Lrb7;-><init>()V

    .line 2
    iput-object p1, p0, Lkg7;->e:Ljava/lang/Object;

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
    iget-object v0, p0, Lkg7;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public m(Ltb7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lzc7;->e:Lzc7;

    invoke-interface {p1, v0}, Ltb7;->c(Lic7;)V

    .line 2
    iget-object v0, p0, Lkg7;->e:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
