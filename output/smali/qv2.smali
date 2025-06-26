.class public Lqv2;
.super Lov2;
.source "SourceFile"

# interfaces
.implements Law2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lqv2<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final e:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Law2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Law2<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lov2;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lqv2;->e:Law2;

    return-void
.end method


# virtual methods
.method public i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lqv2;->e:Law2;

    .line 2
    invoke-interface {v0, p1, p2}, Law2;->i(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
