.class public final Lyj5$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyn5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyj5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lyn5<",
        "Ltk5$d$d$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lyj5$p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyj5$p;

    invoke-direct {v0}, Lyj5$p;-><init>()V

    sput-object v0, Lyj5$p;->a:Lyj5$p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ltk5$d$d$b;

    check-cast p2, Lzn5;

    .line 2
    invoke-virtual {p1}, Ltk5$d$d$b;->a()Ljava/lang/Double;

    move-result-object v0

    const-string v1, "batteryLevel"

    invoke-interface {p2, v1, v0}, Lzn5;->g(Ljava/lang/String;Ljava/lang/Object;)Lzn5;

    .line 3
    invoke-virtual {p1}, Ltk5$d$d$b;->b()I

    move-result v0

    const-string v1, "batteryVelocity"

    invoke-interface {p2, v1, v0}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    .line 4
    invoke-virtual {p1}, Ltk5$d$d$b;->f()Z

    move-result v0

    const-string v1, "proximityOn"

    invoke-interface {p2, v1, v0}, Lzn5;->b(Ljava/lang/String;Z)Lzn5;

    .line 5
    invoke-virtual {p1}, Ltk5$d$d$b;->d()I

    move-result v0

    const-string v1, "orientation"

    invoke-interface {p2, v1, v0}, Lzn5;->d(Ljava/lang/String;I)Lzn5;

    .line 6
    invoke-virtual {p1}, Ltk5$d$d$b;->e()J

    move-result-wide v0

    const-string v2, "ramUsed"

    invoke-interface {p2, v2, v0, v1}, Lzn5;->c(Ljava/lang/String;J)Lzn5;

    .line 7
    invoke-virtual {p1}, Ltk5$d$d$b;->c()J

    move-result-wide v0

    const-string p1, "diskUsed"

    invoke-interface {p2, p1, v0, v1}, Lzn5;->c(Ljava/lang/String;J)Lzn5;

    return-void
.end method
