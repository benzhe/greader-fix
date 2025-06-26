.class public Ljs5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljs5$c;,
        Ljs5$d;,
        Ljs5$b;,
        Ljs5$a;
    }
.end annotation


# static fields
.field public static final c:J

.field public static final d:J


# instance fields
.field public final a:Lis5;

.field public final b:Ljs5$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Ljs5;->c:J

    const-wide/16 v1, 0x5

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Ljs5;->d:J

    return-void
.end method

.method public constructor <init>(Lis5;Ljs5$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljs5;->a:Lis5;

    .line 3
    iput-object p2, p0, Ljs5;->b:Ljs5$a;

    return-void
.end method
