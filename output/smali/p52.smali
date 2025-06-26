.class public final Lp52;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcb3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcb3<",
        "Ll52;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lmb3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmb3<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {}, Lyn2;->a()Lzv2;

    move-result-object v0

    .line 2
    new-instance v1, Ll52;

    invoke-direct {v1, v0}, Ll52;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v1
.end method
