.class public final Lz02;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljz1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljz1<",
        "Lj41;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg51;

.field public final b:Ld02;

.field public final c:Lzv2;

.field public final d:Lba1;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lg51;Ld02;Lba1;Ljava/util/concurrent/ScheduledExecutorService;Lzv2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lz02;->a:Lg51;

    .line 3
    iput-object p2, p0, Lz02;->b:Ld02;

    .line 4
    iput-object p3, p0, Lz02;->d:Lba1;

    .line 5
    iput-object p4, p0, Lz02;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lz02;->c:Lzv2;

    return-void
.end method


# virtual methods
.method public final a(Lhl2;Lsk2;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lhl2;->a:Lcl2;

    iget-object v0, v0, Lcl2;->a:Lll2;

    invoke-virtual {v0}, Lll2;->a()Lp90;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lz02;->b:Ld02;

    .line 2
    invoke-virtual {v0, p1, p2}, Ld02;->a(Lhl2;Lsk2;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(Lhl2;Lsk2;)Law2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhl2;",
            "Lsk2;",
            ")",
            "Law2<",
            "Lj41;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lz02;->c:Lzv2;

    new-instance v1, Lc12;

    invoke-direct {v1, p0, p1, p2}, Lc12;-><init>(Lz02;Lhl2;Lsk2;)V

    invoke-interface {v0, v1}, Lzv2;->y(Ljava/util/concurrent/Callable;)Law2;

    move-result-object p1

    return-object p1
.end method
