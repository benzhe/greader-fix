.class public final Lpn6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz35;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lz35<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljb6;


# direct methods
.method public constructor <init>(Ljb6;)V
    .locals 0

    iput-object p1, p0, Lpn6;->a:Ljb6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Le45;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le45<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lob6$b;

    invoke-direct {p1}, Lob6$b;-><init>()V

    const-wide/16 v0, 0xe10

    .line 2
    iput-wide v0, p1, Lob6$b;->a:J

    .line 3
    new-instance v0, Lob6;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lob6;-><init>(Lob6$b;Lob6$a;)V

    const-string p1, "FirebaseRemoteConfigSett\u2026                 .build()"

    .line 4
    invoke-static {v0, p1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lpn6;->a:Ljb6;

    .line 6
    iget-object v1, p1, Ljb6;->b:Ljava/util/concurrent/Executor;

    .line 7
    new-instance v2, Lhb6;

    invoke-direct {v2, p1, v0}, Lhb6;-><init>(Ljb6;Lob6;)V

    .line 8
    invoke-static {v1, v2}, Lc50;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Le45;

    move-result-object p1

    .line 9
    new-instance v0, Lpn6$a;

    invoke-direct {v0, p0}, Lpn6$a;-><init>(Lpn6;)V

    invoke-virtual {p1, v0}, Le45;->b(Lz35;)Le45;

    return-void
.end method
