.class public Lui5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Le45<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lkm5;

.field public final synthetic f:Lvi5;


# direct methods
.method public constructor <init>(Lvi5;Lkm5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui5;->f:Lvi5;

    iput-object p2, p0, Lui5;->e:Lkm5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lui5;->f:Lvi5;

    iget-object v1, p0, Lui5;->e:Lkm5;

    invoke-static {v0, v1}, Lvi5;->a(Lvi5;Lkm5;)Le45;

    move-result-object v0

    return-object v0
.end method
