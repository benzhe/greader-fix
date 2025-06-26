.class public abstract Lko2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Law2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Law2<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lzv2;

.field public final b:Ljava/util/concurrent/ScheduledExecutorService;

.field public final c:Lxo2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxo2<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    sput-object v0, Lko2;->d:Law2;

    return-void
.end method

.method public constructor <init>(Lzv2;Ljava/util/concurrent/ScheduledExecutorService;Lxo2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzv2;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lxo2<",
            "TE;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lko2;->a:Lzv2;

    .line 3
    iput-object p2, p0, Lko2;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    iput-object p3, p0, Lko2;->c:Lxo2;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/Object;[Law2;)Lmo2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;[",
            "Law2<",
            "*>;)",
            "Lmo2;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2
    new-instance v0, Lmo2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lmo2;-><init>(Lko2;Ljava/lang/Object;Ljava/util/List;Lno2;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Object;Law2;)Lqo2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Law2<",
            "TI;>;)",
            "Lqo2<",
            "TI;>;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 2
    new-instance v6, Lqo2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lqo2;-><init>(Lko2;Ljava/lang/Object;Law2;Ljava/util/List;Law2;)V

    return-object v6
.end method

.method public final c(Ljava/lang/Object;)Loo2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Loo2;"
        }
    .end annotation

    .line 1
    new-instance v0, Loo2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Loo2;-><init>(Lko2;Ljava/lang/Object;Lno2;)V

    return-object v0
.end method
