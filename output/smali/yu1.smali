.class public final Lyu1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/concurrent/ScheduledExecutorService;

.field public final b:Lzv2;

.field public final c:Lov1;

.field public final d:Lxa3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxa3<",
            "Lmw1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lzv2;Lov1;Lxa3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lzv2;",
            "Lov1;",
            "Lxa3<",
            "Lmw1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lyu1;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    iput-object p2, p0, Lyu1;->b:Lzv2;

    .line 4
    iput-object p3, p0, Lyu1;->c:Lov1;

    .line 5
    iput-object p4, p0, Lyu1;->d:Lxa3;

    return-void
.end method
