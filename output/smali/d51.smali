.class public final Ld51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Lsf1<",
        "Led1;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lmb3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmb3<",
            "Lkc1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq41;Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq41;",
            "Lmb3<",
            "Lkc1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Ld51;->a:Lmb3;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ld51;->a:Lmb3;

    invoke-interface {v0}, Lmb3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkc1;

    .line 2
    new-instance v1, Lsf1;

    new-instance v2, Ls41;

    invoke-direct {v2, v0}, Ls41;-><init>(Lkc1;)V

    .line 3
    sget-object v0, Lms0;->f:Lzv2;

    .line 4
    invoke-direct {v1, v2, v0}, Lsf1;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
